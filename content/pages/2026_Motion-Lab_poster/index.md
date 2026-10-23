---
title: "Motion-Lab@HE-Arc, Portes Ouvertes 2026"
date: 2026-10-21
draft: true
description: "Motion-Lab@HE-Arc"
tags: ["Ra&D", "Sport & rééducation", "Animation 3D", "Poster"]
authors: ["Ivan Serra Moncadas", "Antoine Lestrade", "Nicolas Wenk", "Benoit Le Callennec"]

poster:
  body_size: 29pt
  acronym: ""
  qr: https://motion-lab-he-arc.github.io
  partners_height: 24mm
  partners_mono: true
  partners:
    - { src: logo-fns.png, scale: 1.0 }
    - { src: logo-hes-so.png, scale: 1.05 }
    - { src: logo-hesav.png, scale: 1.25 }
    - { src: logo-heia-fr.png, scale: 1.1 }
    - { src: logo-chuv.png, scale: 0.8 }
  references:
    - "T. Vetsch, J. Taeymans et N. Lutz, « Optimising the current model of care for knee osteoarthritis with the implementation of guideline recommended non-surgical treatments: a model-based health economic evaluation », *Swiss Medical Weekly*, vol. 153, 40059, 2023."
    - "S. M. Engel et V. Krafft, Annals of the Rheumatic Diseases, 2018."
    - "M. Capallera, A. Lestrade, D. Kohler, E. Mugellini et B. Le Callennec, « GIM3D: a pilot study of intuitive 3D motion control HMI », 2025."
---

{{% columns ratio="1:1" %}}

## Mission

Nous mesurons, analysons et générons du mouvement humain en 3D pour la santé et le sport.

**Domaines :** rééducation, sport, ergonomie, animation 3D, réalité virtuelle, création artistique.

## Équipement
- **16 caméras OptiTrack** pour une mesure temps réel et précise du mouvement humain en 3D
- **Volume de capture** : 50 m<sup>2</sup>
- **6 capteurs Azure Kinect DK** pour la capture de mouvement markerless
- **1 tapis de course** **Maxxus runMaxx 9.1**

<--->

![Motion-Lab](Motion-Lab_systeme_motive.jpg)

{{% /columns %}}

{{% columns ratio="1:1" %}}

## Projets de recherche

#### IGR3D (2026-2030, FNS)
Un avatar 3D guide la rééduction de la marche pour les patient·es atteint·es d’arthrose du genou.
  - L’arthrose du genou touche 8,5 % de la population suisse<sup>1</sup> et coûte plus de 20 milliards CHF par an<sup>2</sup>.
  - 3 études : 22 patient·es, 3 physiothérapeutes, 20 patient·es.
  - Publications en accès libre et code source ouvert.

#### GIM3D (2024-2025, HES-SO)
Un entraîneur modifie une foulée de course en 3D pour montrer la correction à son athlète.
Étude pilote avec 5 participant·es. : score d’utilisabilité <span style="white-space: nowrap">F-SUS</span> de 85,5<sup>3</sup>.

#### Foot 3D Scan (2024, Innosuisse)
Scan 3D des pieds en moins de 5 minutes pour les physiothérapeutes et les podologues, avec un scanner 3D portable et markerless.

#### GAPKO (2023, HES-SO)
Analyse de la marche avec des caméras RGB-D (Kinect) pour la pratique clinique.

## Technologies utilisées

<div class="tech-logos">
  <img src="logo-optitrack.png" style="--logo-scale: 0.95" alt="OptiTrack">
  <img src="logo-python.svg" style="--logo-scale: 1.15" alt="Python">
  <img src="logo-unity.svg" style="--logo-scale: 0.62" alt="Unity">
  <img src="logo-unreal-engine.svg" style="--logo-scale: 1" alt="Unreal Engine">
</div>

<--->

## Projets d'étudiants

#### Python Skeletal Animation (2022-2023)
Travail de Bachelor de Dimitri Kohler.
Conception d'une bibliothèque Python de traitement de MoCap, point de départ du projet de recherche GIM3D.

#### Motion Machine (2025)
Master HES-SO d'Antoine Lestrade.
Conception d'un système de streaming d'animations 3D avec cinématique directe et Motion Matching.
Résultats utilisés pour IGR3D.

#### Dagster pour les animations 3D (2025)
Projet de semestre.
Flux d’orchestration local pour la gestion automatisée des données de capture de mouvements 3D avec Dagster.

#### FishTank UE5 (2026)
Suivre la tête en temps réel pour adapter la perspective dans Unreal Engine 5.

#### Base de données MoCap
Indexer et rechercher les fichiers de captures de mouvements 3D du laboratoire.

## Démos en direct

- Tennis de table en capture de mouvement.
- Suivi de la tête en temps réel avec effet stéréoscopique.
- GIM3D : modifier un mouvement 3D en direct.

{{% /columns %}}
