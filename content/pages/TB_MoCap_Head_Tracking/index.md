---
title: "FishTank UE5"
date: 2026-04-26
draft: false
description: "Tracking 3D temps réel de tête"
tags: ["Sujet TB", "Head tracking", "Capture de mouvement"]
authors : ["Benoit Le Callennec"]
---
{{% columns ratio="3:1" class="space-x-4" %}} <!-- begin columns block -->

## Contexte
[Le Motion-Lab @ HE-Arc](/pages/motion-lab/) est un espace technologique de pointe dédié à la capture et à l’analyse 3D du mouvement humain.

L’objectif de ce projet est de concevoir et tracker un support léger (une paire de lunettes équipée de marqueurs) pour récupérer en temps réel la position de la tête d’un utilisateur.
Ces données seront utilisées dans Unreal Engine pour contrôler la caméra et ajuster la perspective, offrant une sensation de profondeur et d’immersion 3D lorsque l’utilisateur se déplace devant l’écran.

{{<youtubeLite id="Jd3-eiid-Uw">}}

## Objectifs principaux
1) Concevoir et calibrer un objet rigide (lunettes ou équivalent) pour le tracking de tête dans OptiTrack.
2) Transmettre les données de position/orientation en temps réel vers Unreal Engine via Live Link.
3) Contrôler la caméra dans Unreal Engine pour adapter la perspective aux mouvements réels de l’utilisateur.
<br>

## Objectifs secondaires
1) Créer une scène 3D permettant de démontrer clairement l’effet d’immersion.
2) Implémenter le tracking avec une webcam seulement.
3) Comparer les performances et la précision du tracking avec et sans marqueurs.

<br>
<---> <!-- magic separator, between columns -->

{{% /columns %}}
