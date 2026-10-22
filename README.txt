Motion-Lab HE-Arc website
=========================

Static site built with Hugo and the Blowfish theme, published at
https://motion-lab-he-arc.github.io/ by GitHub Actions
(.github/workflows/) on every push to main.


1. Requirements
---------------

- Git
- Hugo **Extended**, version **0.145.0** exactly. Do not use a newer version.

  The Blowfish theme is copied into themes/blowfish (it is not a submodule)
  and supports Hugo up to 0.145.0 only. Newer Hugo versions removed the
  built-in shortcodes the theme uses, so the build fails with:

    WARN  Module "blowfish" is not compatible with this Hugo version: 0.87.0/0.145.0
    ERROR html/template:_shortcodes/figure.html:3:14: no such template
          "_internal/shortcodes/figure.html"

  The deploy workflow also uses 0.145.0 (HUGO_VERSION in the workflow file).

You do NOT need Node.js/npm to run or build the site. package.json is a leftover
from the Blowfish template (Tailwind CSS tooling for theme development), and
"npm install" / "npm update" do not fix Hugo errors.


2. Installing Hugo 0.145.0
--------------------------

Windows (winget):

    winget install Hugo.Hugo.Extended --version 0.145.0 --force
    winget pin add Hugo.Hugo.Extended --version 0.145.0

  The pin stops "winget upgrade --all" from replacing it with a newer version.
  Open a new terminal afterwards so the updated PATH is used.

macOS / Linux, or a manual install:
  Download hugo_extended_0.145.0_<os>-<arch> from
  https://github.com/gohugoio/hugo/releases/tag/v0.145.0
  and put the hugo binary on your PATH.

Check the version:

    hugo version
    -> hugo v0.145.0-...+extended ...


3. Running the site locally
---------------------------

    git clone https://github.com/Motion-Lab-HE-Arc/motion-lab-he-arc.github.io.git
    cd motion-lab-he-arc.github.io
    hugo server -D

Then open http://localhost:1313/
(-D also shows draft pages. Leave it out to see only what gets published.)

To build the static site into ./public:

    hugo


4. Project layout
-----------------

    config/_default/   site configuration (hugo.toml, params.toml, menus, language)
    content/           pages (French, the only site language)
    assets/, static/   images, CSS overrides, files copied as-is
    layouts/           local template/shortcode overrides of the theme
    i18n/              translation strings
    themes/blowfish/   the Blowfish theme (vendored copy, max Hugo 0.145.0)
    poster-pdf.ps1     builds the A1 posters (pages tagged "poster") as PDFs
                       into ./pdf. Needs hugo on the PATH and Chrome or Edge.


5. Upgrading Hugo later
-----------------------

To move to a newer Hugo, first update themes/blowfish to a Blowfish release
that supports that version. Check the "max" value in
themes/blowfish/config.toml under [module.hugoVersion]. Then update
HUGO_VERSION in the deploy workflow and this README to match, and check
that "hugo" builds without warnings.
