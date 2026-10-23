---
title: "Individualized gait retraining using 3D motions"
date: 2026-10-10
draft: true
description: "Poster IGR3D — Portes Ouvertes 2026, Neuchâtel"
tags: ["Ra&D", "Sport & rééducation", "Animation 3D", "Poster"]
authors: ["Antoine Lestrade", "Nicolas Wenk", "Benoit Le Callennec"]

poster:
  acronym: igr3d, 2026-2030
  qr: https://motion-lab-he-arc.github.io/pages/2026_igr3d_poster/
  # icon: mon-icone.png     # sinon icône par défaut (params.toml > poster.icon)
  partners_height: 30mm
  partners: [logo-hesav.png, logo-chuv.png, logo-fns.png]
  references:
    - "T. Vetsch, J. Taeymans et N. Lutz, « Optimising the current model of care for knee osteoarthritis with the implementation of guideline recommended non-surgical treatments: a model-based health economic evaluation », *Swiss Medical Weekly*, vol. 153, 40059, 2023. doi:10.57187/smw.2023.40059"
    - "S. M. Engel et V. Krafft, Annals of the Rheumatic Diseases, 2018."
    - "S. T. Skou et E. M. Roos, « Physical therapy for patients with knee and hip osteoarthritis: supervised, active treatment is current best practice », *Clinical and Experimental Rheumatology*, vol. 37, n° 5, suppl. 120, p. 112-117, 2019."
    - "K. R. Vincent, B. P. Conrad, B. J. Fregly et H. K. Vincent, « The pathophysiology of osteoarthritis: a mechanical perspective on the knee joint », *PM&R*, vol. 4, n° 5 suppl., p. S3-S9, 2012. doi:10.1016/j.pmrj.2012.01.020"
  body_size: 28pt
  # heading_size: 40pt
  # content_top: 150mm
---

{{% columns ratio="1:1" %}}

## Contexte

L’arthrose du genou touche **8,5 % de la population suisse**<sup>1</sup> pour un coût supérieur à 20 milliards CHF/an<sup>2</sup>.

La pratique physiothérapeutique recommande une **approche individualisée** à chaque patient<sup>3</sup>.

La capture de mouvements 3D (MoCap) permet d'optimiser des métriques biomécaniques comme le moment d’adduction du genou (**KAM**), directement lié à la progression de la maladie<sup>4</sup>.

## Motivations
1. Permettre aux physiothérapeutes de visualiser l’impact des styles de marche sur le KAM.
2. Utiliser un **avatar 3D** comme **moyen de communication**, plutôt que des courbes et des graphiques.
3. Proposer des **contrôles intuitifs** (écartement des pieds, balancement du tronc, etc.) permettant aux thérapeutes de proposer un traitement individualisé.

## Méthodologie

Mise en place d’une **boucle collaborative temps réel** entre les patient·es et les physiothérapeutes :
- les patient·es équipé·es de marqueurs marchent sur un tapis roulant avec capteurs de force;
- les physiothérapeutes observent le KAM et explorent divers styles de marche via des critères sémantiques;
- des modèles d’IA génératives spécialisés génèrenet les mouvements cibles en respectant les critères spécifiés;
- ces mouvements cibles sont reproduits sur un avatar 3D affiché aux patient·es sur un écran.

Un entrainement incrémental des modèles génératifs spécialise les mouvements générés à un·e patient·e donné·e, reflétant son style de marche et proposant une cible individuelle réaliste et atteignable.

## Technologies

<div class="tech-logos">
  <img src="logo-python.svg" style="--logo-scale: 1.15" alt="Python">
  <img src="logo-unreal-engine.svg" style="--logo-scale: 1" alt="Unreal Engine">
  <img src="logo-optitrack.png" style="--logo-scale: 0.95" alt="OptiTrack">
</div>

<--->

![Motion-Lab](featured.jpg)

## Impact & résultats attendus

Ce projet allie pour la première fois l’approche personnalisée des physiothérapeutes aux métriques biomécaniques mesurées en laboratoire.

3 études feront l’objet de publications :
- 1 étude clinique (22 patient·es) analysant l’impact des stratégies de marche sur le KAM;
- 1 étude (3 physiothérapeutes) évaluant si le système permet de générer des mouvements de marche de façon intuitive;
- 1 étude (20 patient·es) validant que les patient·es comprennent les instructions et parviennent à modifier leur marche.

Les publications seront en accès libre et le code source sera mis à disposition de la communauté scientifique.

IGR3D s’appuie sur **GIM3D** (2024-2025, HES-SO) et sur **Motion Machine** (Master HES-SO d’Antoine Lestrade).

## Partenaires

Projet financé par le **FNS** (2026-2030) et mené avec la **HESAV** et le **CHUV**.

{{% /columns %}}
