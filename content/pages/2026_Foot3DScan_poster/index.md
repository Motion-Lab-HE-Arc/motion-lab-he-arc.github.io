---
title: "Scan 3D de pied pour les physiothérapeutes"
date: 2026-10-20
draft: false
description: "Poster Foot 3D Scan"
tags: ["Ra&D", "Sport & rééducation", "Reconstruction 3D", "Poster"]
authors: ["Ivan Serra Moncadas", "Benoit Le Callennec"]

poster:
  body_size: 29pt
  acronym: FOOT 3D SCAN, 2024
  qr: https://motion-lab-he-arc.github.io/pages/2026_foot3dscan_poster/
  partners_mono: true
  partners:
    [
      {
        src: Innosuisse_Logo_supported_Innovation_cheque_rgb_EN.png,
        scale: 1.6,
      },
    ]
  references:
    - "I. Serra Moncadas et B. Le Callennec, *State of the art in foot 3D scanning for physiotherapists*, rapport Innosuisse, HE-Arc, 2024."
    - "C.-Y. Wu, J. Johnson, J. Malik, C. Feichtenhofer et G. Gkioxari, « Multiview Compressive Coding for 3D Reconstruction », *CVPR*, 2023. arXiv:2301.08247"
    - "R. A. Newcombe *et al.*, « KinectFusion: Real-time dense surface mapping and tracking », *IEEE ISMAR*, p. 127-136, 2011."
    - "J. Sturm *et al.*, « A Benchmark for the Evaluation of RGB-D SLAM Systems », *IEEE/RSJ IROS*, 2012 (séquence fr1/desk)."
---

{{% columns ratio="1:1" %}}

## Contexte

Les physiothérapeutes ont besoin d’un **modèle 3D des pieds** en début de séance pour affiner l’analyse de la marche, le diagnostic et le traitement. Aucun outil n’est assez rapide, fiable et simple pour la routine clinique : les applications testées (MagiScan, Kiri Engine, Qlone, Scandy Pro, Myfit) sont trop lentes, imprécises ou coûteuses<sup>1</sup>.

Ce projet est une **étude de faisabilité** (environ 250 h) : choisir la technique de reconstruction la plus adaptée en temps et en précision, et vérifier qu’un smartphone peut remplacer la caméra de profondeur.

<--->

![Foot 3D Scan](featured.png)

_Prototype Kinect : nuage de 34 472 points d’une chaussure._

{{% /columns %}}

{{% columns ratio="1:1" %}}

## Objectifs

- Modèle 3D des deux pieds **en moins de 5 minutes**, patient·e allongé·e sur une table.
- Voûte plantaire, cheville, avant-pied et arrière-pied.
- Reconstruction **incrémentale** : chaque nouvelle image complète le modèle.
- À terme, acquisition par **smartphone**, sans câble.

## Méthodologie

Trois techniques comparées en temps de calcul et en précision, sur des données d’exemple (pas sur des pieds) :

- **SAM / MCC** (Meta)<sup>2</sup> : 1 image en 3 min 32 ; nuage de points sans maillage ; le réseau complète les parties cachées et peut ajouter un orteil absent.
- **Reality Scan** (Epic Games) : 17 photos en 3 min 24 ; calcul sur serveur ; non incrémental, chaque photo ajoutée relance le calcul.
- **KinectFusion**<sup>3</sup> (recalage ICP, fusion TSDF) : 571 images RGB-D<sup>4</sup> en 32 s, soit 18 images/s ; la méthode publiée produit un maillage.

## Technologies

<div class="tech-logos">
  <img src="logo-python.svg" style="--logo-scale: 1.4" alt="Python">
  <img src="logo-geexlab.svg" style="--logo-scale: 1.1" alt="GeeXLab">
  <img src="logo-kinect.svg" style="--logo-scale: 0.6" alt="Kinect">
</div>

<--->

## Résultats

Prototype Python + GeeXLab avec une Kinect, testé sur une chaussure :

- 4 images/s, recalage ICP en 200 ms par image.
- 34 472 points après 40 s d’acquisition.
- Bruit visible ; le prototype produit un nuage de points, pas encore de maillage.

## Limites et perspectives

- Atteindre au moins 10 images/s (optimiser l’ICP) et filtrer le bruit.
- Générer le maillage en 1 à 2 minutes, en un clic.
- Tester sur des pieds.
- Remplacer la Kinect par un smartphone (ARCore Depth API, envoi par HTTP) : non testé, l’application d’exemple ARCore était incompatible.
- Concevoir l’interface avec les physiothérapeutes.

## Partenaires

Chèque d’innovation **Innosuisse** (janvier à mars 2024) pour **O2TE Sàrl**, chef de projet **Christophe Otte**, physiothérapeute.

{{% /columns %}}
