---
title: "Motion-Lab@HE-Arc, 2026"
date: 2026-10-21
draft: false
description: "Motion-Lab@HE-Arc"
tags: ["Ra&D", "Sport & rééducation", "Animation 3D", "Poster"]
authors: ["Ivan Serra Moncadas", "Antoine Lestrade", "Nicolas Wenk", "Benoit Le Callennec"]

poster:
  body_size: 28pt
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
    - { src: Innosuisse_Logo_supported_Innovation_cheque_rgb_EN.png, scale: 1.6 }
  references:
    - "T. Vetsch, J. Taeymans et N. Lutz, « Optimising the current model of care for knee osteoarthritis with the implementation of guideline recommended non-surgical treatments: a model-based health economic evaluation », *Swiss Medical Weekly*, vol. 153, 40059, 2023."
    - "A. Cui, H. Li, D. Wang, J. Zhong, Y. Chen et H. Lu, « Global, regional prevalence, incidence and risk factors of knee osteoarthritis in population-based studies », *EClinicalMedicine*, vol. 29-30, 100587, 2020. doi:10.1016/j.eclinm.2020.100587"
    - "M. Capallera, A. Lestrade, D. Kohler, E. Mugellini et B. Le Callennec, « GIM3D: a Pilot Study of Intuitive 3D Motion Control HMI », *IHM ’25*, Toulouse, 2025."
---

{{% columns ratio="1:1" %}}

## Mission

Nous mesurons, analysons et générons du mouvement humain en 3D pour la santé et le sport.

**Domaines**

Rééducation, sport, ergonomie, animation 3D, réalité virtuelle, création artistique.

## Équipement
- **16 caméras OptiTrack** pour une mesure temps réel et précise du mouvement humain en 3D
- **Volume de capture** : 50 m<sup>2</sup>
- **6 capteurs Azure Kinect DK** pour la capture de mouvement markerless
- **1 tapis de course** **Maxxus runMaxx 9.1**

<--->

![Projets de recherche du Motion-Lab : IGR3D, GIM3D, Foot 3D Scan, GAPKO](Motion-Lab_projets.png)

{{% /columns %}}

{{% columns ratio="1:1" %}}

## Projets de recherche

#### IGR3D (2026-2030, FNS)
Un avatar 3D guide la rééducation de la marche pour les patient·es atteint·es d’arthrose du genou.
  - L’arthrose du genou touche 8,5 % de la population suisse<sup>1</sup> et environ 654 millions de personnes de 40 ans et plus dans le monde<sup>2</sup>.
  - 3 études : ~40 patient·es, 3 physiothérapeutes.
  - Publications en accès libre et code source ouvert.

#### GIM3D (2025, HES-SO)
Un entraîneur modifie une foulée de course en 3D pour montrer la correction à son athlète.
Étude pilote avec 5 participant·es : score d’utilisabilité <span style="white-space: nowrap">F-SUS</span> de 85,5<sup>3</sup>.

#### Foot 3D Scan (2024, Innosuisse)
Étude de faisabilité d’un scan 3D des pieds pour les physiothérapeutes. Objectifs : moins de 5 minutes, avec un scanner 3D portable et markerless.

#### GAPKO (2022, HES-SO)
Capture de la marche markerless (Kinect).

## Technologies utilisées

<div class="tech-logos">
  <img src="logo-python.svg" style="--logo-scale: 1.15" alt="Python">
  <img src="logo-unity.svg" style="--logo-scale: 0.62" alt="Unity">
  <img src="logo-unreal-engine.svg" style="--logo-scale: 1" alt="Unreal Engine">
  <img src="logo-optitrack.png" style="--logo-scale: 0.95" alt="OptiTrack">
</div>

<--->

## Projets d’étudiants

#### Python Skeletal Animation (2022-2023)
Travail de Bachelor de Dimitri Kohler.
Conception d’une bibliothèque Python de traitement de MoCap, point de départ du projet de recherche GIM3D.

#### Motion Machine (2024)
Travail de Master HES-SO d’Antoine Lestrade.
Conception d’un système de streaming d’animations 3D avec cinématique directe et Motion Matching.
Résultats utilisés pour IGR3D.

#### Dagster pour les animations 3D (2025)
Projet de semestre.
Flux d’orchestration local pour la gestion automatisée des données de capture de mouvements 3D avec Dagster.

#### FishTank UE5 (2026)
Travail de Bachelor.
Suivi de la tête en temps réel pour adapter la perspective dans Unreal Engine 5.

## Démos en direct

- Tennis de table en capture de mouvement.
- Suivi de la tête en temps réel avec effet stéréoscopique.
- GIM3D : modifier un mouvement 3D en direct.

{{% /columns %}}
