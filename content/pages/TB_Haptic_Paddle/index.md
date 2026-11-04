---
title: "Raquette haptique"
date: 2026-11-04
draft: false
description: "Raquette trackée à retour haptique pour le tennis de table en 3D"
tags: ["Sujet TB", "Haptique", "Capture de mouvement"]
authors : ["Benoit Le Callennec"]
---
{{% columns ratio="3:1" class="space-x-4" %}} <!-- begin columns block -->

## Contexte
[Le Motion-Lab @ HE-Arc](/pages/motion-lab/) est un espace technologique de pointe dédié à la capture et à l’analyse 3D du mouvement humain.

L’objectif de ce projet est d’ajouter un retour haptique à la raquette utilisée dans l’application de tennis de table en 3D du Motion-Lab, développée sous Unreal Engine 5.

La chaîne de tracking est déjà en place : la raquette porte des marqueurs OptiTrack, suivis par les caméras infrarouges du Motion-Lab. Motive calcule sa position et son orientation en temps réel et les envoie à Unreal Engine 5.

Il reste à équiper la raquette pour qu’elle vibre et émette un son quand Unreal Engine détecte une collision avec la balle virtuelle.

La raquette servira aussi à mesurer la latence de la capture de mouvement, entre le geste réel et son affichage à l’écran.

{{< youtubeLite id="E9wWc5XBBxY" label="Hit-Stop in VR : vibration et pseudo-haptique à l’impact d’une raquette" >}}

## Objectifs principaux
1) Équiper la raquette d’une électronique embarquée : microcontrôleur sans fil, actionneur de vibration, haut-parleur, batterie.
2) Dans l’application Unreal Engine 5 existante, récupérer les collisions raquette-balle et envoyer l’événement à la raquette sans fil (p. ex. UDP sur Wi-Fi ou BLE).
3) Déclencher la vibration et le son, modulés selon la vitesse de l’impact.
4) Valider le tout en situation de jeu.

## Objectifs secondaires
1) Concevoir un protocole de mesure de la latence de bout en bout, du geste à l’affichage sur la TV.
2) Mesurer cette latence et la décomposer (Motive, réseau, Unreal Engine, écran). Mesurer aussi celle du retour haptique (collision → vibration).
3) Gérer deux raquettes pour un mode deux joueurs.
4) Évaluer avec des utilisateurs le réalisme du retour : vibration seule, son seul, les deux.


## Références

**Raquettes haptiques**
- [Haptic Racket](https://charm.stanford.edu/ME327/2025-Group10) – Stanford ME 327, 2025. Impact simulé par deux impulsions d’un moteur dans le manche.
- [VibRacket](https://doi.org/10.1145/3749385.3749417) – SportsHCI 2025. Module vibrant fixé sur une raquette de badminton, piloté par l’orientation de la raquette pour l’apprentissage du geste.
- [Hit-Stop in VR](https://visuohapticteam.github.io/hitstop_in_vr_webdemo) – World Haptics 2021. Démo web et vidéo.
- [AirRacket](https://doi.org/10.1145/3491102.3502034) – CHI 2022. Retour de force par jets d’air.
- [SPinPong](https://github.com/koikelab-team/SPinPong) – IEEE TVCG 2021. Tennis de table en VR, code Unity.

**Mesure de latence**
- [Stauffert et al., *Motion-to-Photon Latency and Latency Jitter*](https://downloads.hci.informatik.uni-wuerzburg.de/2020-ieeevr-latency-preprint.pdf) – IEEE VR 2020. Photodiodes sur l’écran.
- [Vicon : mesurer la latence temps réel](https://www.vicon.com/support/faqs/how-can-i-measure-real-time-latency/)

<---> <!-- magic separator, between columns -->

{{% /columns %}}
