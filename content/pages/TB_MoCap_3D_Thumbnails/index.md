---
title: "Génération de vignettes 3D"
date: 2026-04-26
draft: false
description: "Génération de vignettes 3D à partir de fichiers BVH"
tags: ["Sujet TB", "Animation 3D", "Capture de mouvement"]
authors : ["Benoit Le Callennec"]
---

{{% columns ratio="3:1" class="space-x-4" %}} <!-- begin columns block -->

Les fichiers **BVH (Biovision Hierarchy)** sont largement utilisés pour représenter des animations de motion capture sous forme de squelettes articulés.

{{< figure src="featured.png" >}}

L’objectif de ce travail est de concevoir un **pipeline autonome** permettant de générer automatiquement des **vignettes animées** à partir de fichiers BVH, afin de les afficher dans une page web.

# Objectifs

## Principaux

- Implémenter (ou intégrer si existant) le chargement de fichiers BVH.
- Afficher le fichier BVH. On pourra utiliser l’application existante (avec GeeXLab) comme exemple ou s’orienter, au choix, vers une autre technologie (OpenGL, WebGPU, etc.).
- Générer une image pour chaque intervalle de l’animation 3D.
- Générer un GIF animé à partir de la séquence d’images générées. On pourra utiliser ffmpeg pour cela.

## Objectifs secondaires

- Extraire et stocker des métadonnées utiles (durée, FPS, nombre de joints, hiérarchie).
- Améliorer le rendu pour proposer un résultat cohérent et lisible.
- Garantir un pipeline reproductible et automatisable.
- Intégrer le tout à Motion Machine, un package Python pour l’animation 3D.

<---> <!-- magic separator, between columns -->

{{% /columns %}}
