> **MOB-ZC-03** · Écran · Priorité **P1** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

Modale « NOUVEAU BADGE ! — GOAT VOTER — Super ! » avec hexagone navy et icône. ZE-01 détaille le déroulé : pop 500 ms avec ressort léger (overshoot 3 %), haptique notification succès ; confettis 900 ms puis disparition (700 ms ressort pour l'hexagone).

## ✅ Objectif

`showBarcaCelebration` générique (badge, niveau, série) avec animation orchestrée.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZC-01` — Surfaces flottantes — sheets, modales, toasts
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_light.webp?raw=true' width='330' alt='ZC-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_dark.webp?raw=true' width='330' alt='ZC-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_light.webp?raw=true' width='230' alt='ZC-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_dark.webp?raw=true' width='230' alt='ZC-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 07 » · « Surfaces flottantes » · « Bottom sheets (24 px de rayon), modales centrées, toasts et infobulles. Sur tablette, les sheets deviennent des panneaux centrés de 600 px maximum. » · « Bottom sheet et modale » · « Bottom sheet » · « Formation » · « 4-3-3 » · « 4-2-3-1 » · « Appliquer » · « Modale de confirmation » · « Désactiver la localisation ? » · « Tu n’apparaîtras plus dans les compteurs. » · « Désactiver » · « Annuler » · « Modale de célébration » · « Nouveau badge ! » · « GOAT voter » · « Super ! » · « Toasts, snackbars et infobulles » · « Toast succès » · « Équipe enregistrée · J11 » · « Toast erreur » · « Composition déjà verrouillée » · « Toast information » · « Ta série de 12 jours est en danger » · « Infobulle » · « Pose-moi une question sur le Barça ! 👋 » · « Toast admin » · « Fiche publiée » · « Notification push »

**Composants repérés** : `btn`, `modal`, `sheet`, `toast`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-16](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-16%5D%22) · [ADM-ADS-17](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-17%5D%22) · [ADM-ADS-18](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-18%5D%22) · [ADM-ADS-37](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-37%5D%22) · [MOB-FND-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-32%5D%22) · [MOB-ZC-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-01%5D%22) · [MOB-ZC-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-02%5D%22) · [MOB-ZC-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-04%5D%22) · [MOB-ZC-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-05%5D%22) · [MOB-ZC-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-17%5D%22)

#### `ZE-01` — Bibliothèque d’animations — images clés
_Module : Animations et micro-interactions_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__desktop_light.webp?raw=true' width='330' alt='ZE-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__desktop_dark.webp?raw=true' width='330' alt='ZE-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__mobile_light.webp?raw=true' width='230' alt='ZE-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__mobile_dark.webp?raw=true' width='230' alt='ZE-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Mouvement · 01 » · « Animations clés » · « Chaque interaction a une réponse immédiate, un mouvement naturel et une fin nette. Ressorts doux, aucune animation décorative qui retarde l’action. Les images clés ci-dessous montrent le déroulé ; la version animée est dans le prototype interactif. » · « Univers Barça · Design System v1.1 » · « Mouvement & ergonomie » · « iOS · Android · Tablette » · « Entrées et surfaces » · « Ouverture d’un bottom sheet » · « Surface » · « 0 ms » · « 120 ms » · « 240 ms » · « 360 ms » · « 480 ms » · « 480 ms · cubic-bezier(.16,1,.3,1) · fond flouté +46 % · haptique : aucune » · « Modale (pop + overshoot) » · « 160 ms » · « 300 ms » · « 500 ms » · « 500 ms · ressort léger (overshoot 3 %) · haptique : notification succès » · « Jeux et gratification » · « Bonne réponse au quiz » · « Feedback » · « Rakitić » · « Repos » · « Appui · 100 ms » · « Validation · 220 ms » · « Check · 300 ms » · « +15 PTS » · « Gain · 600 ms »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-31](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-31%5D%22) · [MOB-ZC-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-07%5D%22) · [MOB-ZD-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-13%5D%22) · [MOB-ZD-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-14%5D%22) · [MOB-ZE-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-01%5D%22) · [MOB-ZE-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-02%5D%22) · [MOB-ZE-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-03%5D%22) · [MOB-ZE-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-07%5D%22) · [MOB-ZE-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-08%5D%22) · [MOB-ZE-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-17%5D%22) · [MOB-ZE-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-18%5D%22)

## 📐 Règles de gestion

- Séquence badge : 0 ms fond flou ; 160 ms hexagone échelle 0,6 → 1,03 (ressort) ; 300 ms halo or radial ; 520 ms confettis (3 couleurs garnet/marine/or, ~40 particules) ; 900 ms disparition des confettis.
- Haptique : succès fort (`HapticFeedback.heavyImpact`) au pic de la pop.
- Bouton unique « Super ! » ; fermeture par bouton, pas par scrim avant 1 s.
- Animations réduites : pas de confettis ni halo animé, hexagone statique, haptique conservée.
- Cap de performance : transform/opacity uniquement, 60 fps (120 Hz si dispo).

## 🛠️ Tâches

- [ ] Créer `barca_celebration_dialog.dart` (`AnimationController` 900 ms + `Interval`).
- [ ] Créer `BadgeHexagon` (CustomPainter, couleurs par rareté) et `GoldHalo`.
- [ ] Créer `ConfettiBurst` (CustomPainter + `Ticker`, graines déterministes pour tests).
- [ ] Définir `AppMotion.celebrationPop` (500 ms, `Curves.elasticOut` borné à overshoot 3 % via courbe custom `OvershootCurve(0.03)`).
- [ ] Gérer file d'attente de célébrations successives (une à la fois).
- [ ] Tests et golden à t = 0/160/300/520/900 ms (`tester.pump`).
- [ ] Use case widgetbook avec bouton « Rejouer ».

## ✔️ Critères d'acceptation

- [ ] Étant donné un badge débloqué, quand la modale s'ouvre, alors l'hexagone atteint l'échelle 1,03 à ~160 ms puis se stabilise à 1.
- [ ] Étant donné animations réduites, alors aucun confetti n'est rendu.
- [ ] Étant donné deux badges simultanés, alors ils s'affichent l'un après l'autre.
- [ ] Étant donné 120 Hz, alors l'animation n'utilise que transform/opacity (pas d'animation de layout).

## 🧪 Tests à écrire

- [ ] Unitaire : `OvershootCurve` max = 1,03.
- [ ] Widget : frames clés à 0/160/300/520/900 ms.
- [ ] Widget : file d'attente.
- [ ] Widget : animations réduites.
- [ ] Golden : état final.

## ♿ Accessibilité et i18n

- `SemanticsService.announce` « Nouveau badge : GOAT Voter » ; bouton « Super ! » focusable ; ARB `celebrationNewBadge`.

## 🔗 Dépendances

À réaliser après : `MOB-ZC-02` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §4.5.3
- CDC Flutter §9.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
