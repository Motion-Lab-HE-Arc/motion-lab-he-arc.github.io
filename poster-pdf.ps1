# PDF des posters du site Motion-Lab (pages avec le tag « poster »).
# Usage : .\poster-pdf.ps1   ->   pdf\<nom-du-dossier>.pdf  (A1, 594 x 841 mm)
# Requiert hugo dans le PATH et Chrome ou Edge.
$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

$chrome = @(
  "$env:ProgramFiles\Google\Chrome\Application\chrome.exe",
  "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe",
  "$env:LOCALAPPDATA\Google\Chrome\Application\chrome.exe",
  "${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe",
  "$env:ProgramFiles\Microsoft\Edge\Application\msedge.exe"
) | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $chrome) { throw "Chrome ou Edge introuvable." }

# Génération dans un dossier temporaire, avec des URL relatives (lecture en file://)
$site = Join-Path $env:TEMP "motion-lab-posters"
$env:HUGO_RELATIVEURLS = "true"
hugo --quiet --cleanDestinationDir -d $site
$code = $LASTEXITCODE
Remove-Item Env:HUGO_RELATIVEURLS
if ($code -ne 0) { throw "La génération Hugo a échoué." }

New-Item -ItemType Directory -Force pdf | Out-Null
$tmpProfile = Join-Path $env:TEMP "motion-lab-posters-chrome"
Get-ChildItem $site -Recurse -Filter print.html | ForEach-Object {
  $m = Select-String -Path $_.FullName -Pattern '<meta name="poster" content="([^"]+)"' | Select-Object -First 1
  if (-not $m) { return }                       # page sans tag poster : ignorée
  $name = $m.Matches[0].Groups[1].Value
  $out  = Join-Path $PWD "pdf\$name.pdf"
  $uri  = ([System.Uri]$_.FullName).AbsoluteUri
  $chromeArgs = @("--headless", "--disable-gpu", "--no-pdf-header-footer",
                  "--run-all-compositor-stages-before-draw", "--virtual-time-budget=5000",
                  "--user-data-dir=`"$tmpProfile`"", "--print-to-pdf=`"$out`"", "`"$uri`"")
  Start-Process -FilePath $chrome -ArgumentList $chromeArgs -Wait -NoNewWindow
  Write-Host "pdf\$name.pdf"
}
