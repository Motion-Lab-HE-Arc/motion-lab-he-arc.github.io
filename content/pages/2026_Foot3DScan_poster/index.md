---
title: "Scan 3D de pied pour les physiothérapeutes"
date: 2026-10-20
draft: true
description: "Poster Foot 3D Scan"
tags: ["Ra&D", "Sport & rééducation", "Reconstruction 3D", "Poster"]
authors: ["Ivan Serra Moncadas", "Benoit Le Callennec"]

poster:
  body_size: 29pt
  acronym: Foot 3D Scan, 2024
  qr: https://motion-lab-he-arc.github.io/pages/2024_rnd_foot3dscan/
  partners_mono: true
  partners: [{ src: Innosuisse_Logo_supported_Innovation_cheque_rgb_EN.png, scale: 1.6 }]
  references:
    - "C.-Y. Wu, J. Johnson, J. Malik, C. Feichtenhofer et G. Gkioxari, « Multiview Compressive Coding for 3D Reconstruction », *CVPR*, 2023. arXiv:2301.08247"
    - "R. A. Newcombe *et al.*, « KinectFusion: Real-time dense surface mapping and tracking », *IEEE ISMAR*, p. 127-136, 2011."
    - "J. Sturm *et al.*, « A Benchmark for the Evaluation of RGB-D SLAM Systems », *IEEE/RSJ IROS*, 2012 (séquence fr1/desk)."
    - "I. Serra Moncadas et B. Le Callennec, *State of the art in foot 3D scanning for physiotherapists*, rapport Innosuisse, HE-Arc, 2024."
---

{{% columns ratio="1:1" %}}

## Contexte

Les physiothérapeutes ont besoin d’un **modèle 3D des pieds** en début de séance pour affiner l’analyse de la marche, le diagnostic et le traitement. Aucun outil n’est assez rapide, fiable et simple pour la routine clinique : les applications testées (MagiScan, Kiri Engine, Qlone, Scandy Pro, Myfit) sont trop lentes, imprécises ou coûteuses<sup>4</sup>.

Ce projet est une **étude de faisabilité** (environ 250 h) : choisir la technique de reconstruction la plus adaptée en temps et en précision, et vérifier qu’un smartphone peut remplacer la caméra de profondeur.

<--->

![Foot 3D Scan](featured.png)

*Prototype Kinect : nuage de 34 472 points d'une chaussure.*

{{% /columns %}}

{{% columns ratio="1:1" %}}

## Objectifs

- Modèle 3D des deux pieds **en moins de 5 minutes**, patient·e allongé·e sur une table ;
- voûte plantaire, cheville, avant-pied et arrière-pied ;
- reconstruction **incrémentale** : chaque nouvelle image complète le modèle ;
- à terme, acquisition par **smartphone**, sans câble.

## Méthodologie

Trois techniques comparées en temps de calcul et en précision, sur des données d'exemple (pas sur des pieds) :
- **SAM / MCC** (Meta)<sup>1</sup> : 1 image en 3 min 32 ; nuage de points sans maillage ; le réseau complète les parties cachées et peut ajouter un orteil absent.
- **Reality Scan** (Epic Games) : 17 photos en 3 min 24 ; calcul sur serveur ; non incrémental, chaque photo ajoutée relance le calcul.
- **KinectFusion**<sup>2</sup> (recalage ICP, fusion TSDF) : 571 images RGB-D<sup>3</sup> en 32 s, soit 18 images/s ; produit un maillage.

KinectFusion est retenu : seule technique rapide et incrémentale.

## Technologies

<div class="tech-logos">
  <img src="logo-python.svg" style="--logo-scale: 1.4" alt="Python">
  <img src="logo-kinect.svg" style="--logo-scale: 0.6" alt="Kinect">
  <img src="logo-geexlab.svg" style="--logo-scale: 1.1" alt="GeeXLab">
</div>

<--->

## Résultats

Prototype Python + GeeXLab avec une Kinect, testé sur une chaussure :
- 4 images/s, recalage ICP en 200 ms par image.
- 34 472 points après 40 s d'acquisition.
- Bruit visible, sortie en nuage de points, sans maillage.

## Limites et perspectives

- Atteindre au moins 10 images/s (optimiser l'ICP) et filtrer le bruit.
- Générer le maillage en 1 à 2 minutes, en un clic.
- Tester sur des pieds.
- Remplacer la Kinect par un smartphone (ARCore Depth API, envoi par HTTP) : non testé, l'application d'exemple ARCore était incompatible.
- Concevoir l'interface avec les physiothérapeutes.

## Partenaires

Chèque d'innovation **Innosuisse** (janvier à mars 2024) pour **O2TE Sàrl**, chef de projet **Christophe Otte**, physiothérapeute.

{{% /columns %}}
