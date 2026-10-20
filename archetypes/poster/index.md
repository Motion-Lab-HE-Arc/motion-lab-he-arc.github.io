---
title: "{{ replace .File.ContentBaseName "_" " " }}"
date: {{ .Date }}
draft: true
description: ""
tags: ["poster", "Ra&D"]
authors: []

poster:
  acronym: ""
  qr: ""            # fichier du dossier (qr.svg) ou URL
  partners: []      # logos placés dans ce dossier
  references: []
---

{{ "{{% columns ratio=\"1:1\" %}}" }}

## Contexte

- …

## Motivations

- …

<--->

![Illustration](featured.jpg)

{{ "{{% /columns %}}" }}

{{ "{{% columns ratio=\"1:1\" %}}" }}

## Méthodologie

- …

<--->

## Impact & résultats attendus

- …

{{ "{{% /columns %}}" }}
