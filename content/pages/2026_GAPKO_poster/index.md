---
title: "Capture de la marche sans marqueurs"
date: 2026-10-20
draft: false
description: "Poster GAPKO"
tags: ["Ra&D", "Sport & rééducation", "Markerless", "Poster"]
authors: ["Christophe Müller", "Benoit Le Callennec"]

poster:
  body_size: 28pt
  acronym: GAPKO, 2022
  qr: https://motion-lab-he-arc.github.io/pages/2026_gapko_poster/
  partners: [logo-hes-so.png, logo-chuv.png]
  references:
    - "C. Müller, J. Favre et B. Le Callennec, *Robust Contactless Shoes Tracking for Gait Analysis*, manuscrit non publié, 2022."
    - "T. Guzsvinecz, V. Szucs et C. Sik-Lanyi, « Suitability of the Kinect Sensor and Leap Motion Controller—A Literature Review », *Sensors*, vol. 19, n° 5, 1072, 2019."
    - "D. J. Geerse, B. H. Coolen et M. Roerdink, « Kinematic Validation of a Multi-Kinect v2 Instrumented 10-Meter Walkway for Quantitative Gait Assessments », *PLoS ONE*, vol. 10, n° 10, e0139913, 2015."
    - "A. Botros *et al.*, « Contactless Gait Assessment in Home-like Environments », *Sensors*, vol. 21, n° 18, 6205, 2021."
---

{{% columns ratio="1:1" %}}

## Contexte

La capacité de marcher est essentielle à la **qualité de vie**. De nombreuses atteintes musculo-squelettiques et neurologiques l’affectent, comme l’**arthrose du genou**.

Les systèmes des laboratoires (capture optique avec marqueurs, tapis instrumentés, centrales inertielles) sont **chers et difficiles à utiliser** ; leur mise en place peut prendre 30 minutes, plus qu’une séance de physiothérapie (environ 25 minutes)<sup>1</sup>.

Les caméras **RGB-D** sont abordables et sans contact, mais le squelette calculé par la Kinect est trop imprécis pour la clinique<sup>2</sup>. Les systèmes existants sont imprécis (4 Kinect v2<sup>3</sup>) ou chers (4 LiDAR à 2 000 CHF chacun<sup>4</sup>), et ne mesurent pas l’orientation des pieds.

<--->

![GAPKO](featured.png)

_Suivi des deux chaussures avec 3 Kinect._

{{% /columns %}}

{{% columns ratio="1:1" %}}

## Objectifs

- Système **multicaméras RGB-D markerless**, abordable, rapide à installer.
- Mesurer la **position et l’orientation des pieds** au cours du temps, d’où découlent longueur et durée du pas, vitesse, cadence et angles du pied.
- Comparer au **VICON** du Swiss BioMotion Lab (CHUV).
- Application : réentraînement de la marche en cas d’arthrose du genou.

## Méthodologie

- **3 Azure Kinect** synchronisées, à 60 cm du sol, sur un seul ordinateur portable ; profondeur 640 × 576 px à 30 images/s<sup>1</sup>.
- **Scan 3D des chaussures**, une fois par patient·e.
- **Calibration** : grille ArUco au sol, affinée avec la profondeur et le plan du sol.
- **Suivi** à chaque image : segmentation, suppression des points aberrants et recalage du modèle de chaussure par **ICP robuste (LMedS)**, sur la profondeur seule.

## Technologies

<div class="tech-logos">
  <img src="logo-python.svg" style="--logo-scale: 1.4" alt="Python">
  <img src="logo-geexlab.svg" style="--logo-scale: 1.1" alt="GeeXLab">
  <img src="logo-kinect.svg" style="--logo-scale: 0.6" alt="Kinect">
</div>

<--->

## Résultats

- Démonstrateur : nuages de points en 3D temps réel (plus de 100 000 points chacun), interface graphique complète, enregistrement et relecture des mesures.
- 3 sessions de mesure au CHUV, comparées au VICON, **sans sujets** (commission d’éthique obligatoire) : chaussures déplacées avec des perches.
- Résultats encourageants, mais insuffisants pour une publication.

## Limites et perspectives

- Valider sur des sujets (commission d’éthique) et comparer à l’état de l’art.
- Chaussures à scanner au préalable, les mêmes à chaque mesure.
- Autres applications : troubles musculo-squelettiques, sport, jeux vidéo et VR/AR industrielle.

## Partenaires

Financé par la **HES-SO** (110 000 CHF, 2020-2022), avec le **Swiss BioMotion Lab (CHUV)**.

{{% /columns %}}
