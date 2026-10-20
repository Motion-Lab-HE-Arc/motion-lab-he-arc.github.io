---
title: "Motion Machine Cloud Platform"
date: 2026-04-26
draft: false
description: "Motion Machine Cloud Platform"
tags: ["Sujet TB", "Cloud", "Animation 3D"]
authors : ["Benoit Le Callennec"]
---

{{% columns ratio="3:1" class="space-x-4" %}} <!-- begin columns block -->

[Le Motion-Lab @ HE-Arc](/pages/motion-lab/) est un espace technologique de pointe dédié à la capture et à l’analyse 3D du mouvement humain. Il repose sur l’utilisation de Motion Machine : un package Python offrant toutes les fonctionnalités relatives à l’animation de personnages 3D, de la gestion de la capture au stockage, à la génération de mouvements et au streaming. Il existe déjà des intégrations de Motion Machine pour Unity et Unreal Engine. 

**Le but de ce projet est de transformer Motion Machine en « AWS pour l’animation de personnages 3D ».**

{{< figure src="featured.png" >}}

# Objectifs

## Principaux

- Concevoir une plateforme permettant d’héberger tous les services offerts par Motion Machine.
- Implémenter les APIs des services de Motion Machine avec FastAPI. Certains services comme le streaming d’animation, ou la génération de mouvements pourront servir d’exemples.
- Implémenter un système de gestion d’utilisateurs.
- Intégrer le tout comme un Dev Tool : tous les services doivent être accessibles grâce à une API en Python.

## Secondaires

- Concevoir un portail web permettant de créer des utilisateurs, de vérifier leurs privilèges, etc.
- Implémenter une interface administrateur pour gérer les différents services.
- Implémenter un dashboard pour monitorer l’état des différents services.

<---> <!-- magic separator, between columns -->

{{% /columns %}}
