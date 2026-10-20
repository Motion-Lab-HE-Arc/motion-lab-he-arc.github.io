---
title: "Individualized gait retraining using 3D motions"
date: 2026-10-10
draft: true
description: "Poster IGR3D — Portes Ouvertes 2026, Neuchâtel"
tags: ["Ra&D", "Sport & rééducation", "Animation 3D", "Poster"]
authors: ["Antoine Lestrade", "Nicolas Wenk", "Benoit Le Callennec"]

poster:
  acronym: igr3d
  qr: https://motion-lab-he-arc.github.io                # svg file, or url
  # icon: mon-icone.png     # sinon icône par défaut (params.toml > poster.icon)
  partners: [logo-hesav.png, logo-chuv.png, logo-fns.png]
  references:
    - "T. Vetsch et al., Swiss Medical Weekly, 2023."
    - "S. M. Engel et V. Krafft, Annals of the Rheumatic Diseases, 2018."
    - "S. T. Skou et E. M. Roos, Clinical and Experimental Rheumatology, 2019."
    - "K. R. Vincent et al., PM&R : The Journal of Injury, Function, and Rehabilitation, 2012."
  # body_size: 28pt
  # heading_size: 40pt
  # content_top: 150mm
---

{{% columns ratio="1:1" %}}

## Contexte

L’arthrose du genou touche **8.5% de la population suisse**<sup>1</sup> pour un coût supérieur à 20 milliards CHF/an<sup>2</sup>.

La pratique physiothérapeutique recommande une **approche individualisée** à chaque patient<sup>3</sup>.

La capture de mouvements 3D (MoCap) permet d'optimiser des métriques biomécaniques comme le moment d’adduction du genou (**KAM**), directement lié à la progression de la maladie<sup>4</sup>.

## Motivations
1. Permettre aux physiothérapeutes de visualiser l’impact des styles de marche sur le KAM.
2. Utiliser un **avatar 3D** comme **moyen de communication**, plutôt que des courbes et des graphiques.
3. Proposer des **contrôles sémantiques, intuitifs** (écartement des pieds, balancement du tronc, etc.) permettant aux thérapeutes de proposer un traitement individualisé.

<--->

![Motion-Lab](featured.jpg)

{{% /columns %}}

{{% columns ratio="1:1" %}}

## Méthodologie

Mise en place d’une **boucle collaborative temps réel** entre les patient∙e∙s et les physiothérapeutes :
- les patient∙e∙s équipé∙e∙s de marqueurs marchent sur un tapis roulant avec capteurs de force;
- les physiothérapeutes observent le KAM et explorent divers styles de marche via des critères sémantiques;
- des modèles d’IA génératives spécialisés génèrenet les mouvements cibles en respectant les critères spécifiés;
- ces mouvements cibles sont reproduits sur un avatar 3D affiché aux patient∙e∙s sur un écran.

Un entrainement incrémental des modèles génératifs spécialise les mouvements générés à un∙e patient∙e donné∙e, reflétant son style de marche et proposant une cible individuelle réaliste et atteignable.

<--->

## Impact & résultats attendus

Ce projet allie pour la première fois l’approche personnalisée des physiothérapeutes aux métriques biomécaniques mesurées en laboratoire.

3 études feront l’objet de publications :
- 1 étude clinique (22 patient∙e∙s) analysant l’impact des stratégies de marche sur le KAM;
- 1 étude (3 physiothérapeutes) évaluant si le système permet de générer des mouvements de marche de façon intuitive;
- 1 étude (20 patient∙e∙s) validant que les patient∙e∙s comprennent les instructions et parviennent à modifier leur marche.

Les publications seront en accès libre et le code source sera mis à disposition de la communauté scientifique.

{{% /columns %}}
