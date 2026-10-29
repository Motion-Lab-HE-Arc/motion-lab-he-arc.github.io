---
title: "Génération intuitive de mouvements 3D"
date: 2026-10-20
draft: false
description: "Poster GIM3D"
tags: ["Ra&D", "Sport & rééducation", "Animation 3D", "Poster"]
authors: ["M. Capallera", "A. Lestrade", "D. Kohler", "E. Mugellini", "B. Le Callennec"]

poster:
  body_size: 28pt
  acronym: GIM3D, 2025
  qr: https://motion-lab-he-arc.github.io/pages/2025_gim3d/
  partners: [logo-hes-so.png, logo-chuv.png, logo-heia-fr.png]
  references:
    - "M. Capallera, A. Lestrade, D. Kohler, E. Mugellini et B. Le Callennec, « GIM3D: a Pilot Study of Intuitive 3D Motion Control HMI », *IHM ’25*, Toulouse, 2025."
---

{{% columns ratio="1:1" %}}

## Contexte

En sport, en rééducation ou en prototypage virtuel, il faut pouvoir communiquer un mouvement **rapidement, intuitivement et sans ambiguïté**.

Pour les entraîneur·euses, transmettre aux athlètes des **ajustements précis** de leur geste reste un défi.
En particulier, la parole, le texte et la vidéo sont souvent ambigus.
La capture de mouvement 3D est plus précise, mais demande un équipement spécifique et un environnement contrôlé.
Enfin, bien que les modèles d’IA génératifs produisent des mouvements réalistes, ils restent complexes à piloter en temps réel et de manière intuitive.

<--->

![GIM3D](featured.png)

*Application GIM3D : une course idéale et deux courses générées (ACP et CVAE).*

{{% /columns %}}

{{% columns ratio="1:1" %}}

## Objectifs
GIM3D développe les bases techniques de la génération intuitive de mouvements 3D, pour :
- offrir aux entraîneur·euses un outil pour modifier un mouvement 3D en direct, simplement et rapidement.
- Afficher les mouvements 3D générés avec des indicateurs visuels facilement compréhensibles.
- S'appuyer sur des **modèles statistiques avancés** pour garantir des mouvements 3D plausibles.

## Méthodologie

- **Approche centrée utilisateur** : observation d’un entraîneur de course conseillant un athlète sur tapis roulant, au Swiss BioMotion Lab (CHUV) ; 6 paramètres cités, 3 modélisés : écartement des coudes, hauteur des genoux, tronc.
- **Modèles statistiques avancés**, en Python, entraînés sur des courses pré-enregistrées : analyse en composantes principales (**ACP**) et auto-encodeurs variationnels conditionnels (**CVAE**).
- **Application tactile Unity** (Android et Windows) : des curseurs modifient la course des mannequins ACP et CVAE, affichée à côté d’une course idéale.

## Technologies
<div class="tech-logos">
  <img src="logo-python.svg" style="--logo-scale: 1.8" alt="Python">
  <img src="logo-unity.svg" style="--logo-scale: 1" alt="Unity">
</div>

<--->

## Résultats

Étude pilote avec 5 participant·es<sup>1</sup> (1 entraîneur, 2 athlètes, 2 non-athlètes ; 20 minutes au plus) :
- utilisabilité : **F-SUS = 85,5 / 100**.
- UEQ-S (échelle de −3 à 3) : moyenne globale de **2**, qualité pragmatique (2,35) supérieure à la qualité hédonique (1,65).
- Outil jugé utile, clair et efficace.
- Comparaison avec la course « idéale » appréciée par l’ensemble des participant·es.

Les premiers résultats démontrent l’efficacité de l’outil, pour les praticien·nes comme pour les chercheur·euses.

## Limites et perspectives

Le prototype ne modélise que 3 des 6 paramètres cités par l’entraîneur et n’a été testé qu’avec 5 participant·es.

Il ne peut pas encore analyser ni générer la course de l’athlète lui-même, alors qu’un·e participant·e souhaitait comparer sa propre course à la course idéale.

GIM3D sert de base technique au projet IGR3D (2026-2030, FNS), qui vise à assister les physiothérapeutes dans le suivi de patient·es atteint·es d’arthrose du genou.

## Partenaires

Projet financé par la **HES-SO** et développé avec l’**Institut HumanTech (HEIA-FR)** et le **Swiss BioMotion Lab (CHUV)**.

{{% /columns %}}

