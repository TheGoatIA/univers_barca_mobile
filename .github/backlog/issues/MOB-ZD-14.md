> **MOB-ZD-14** · Écran · Priorité **P1** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

ZD-06 liste les micro-interactions clés : validation d'un quiz (couleur + icône immédiates, légère vibration), déblocage d'un badge (pop de l'hexagone puis halo or), ouverture de la bulle IA (expansion circulaire vers le sheet), série maintenue (la flamme s'allume, compteur incrémenté).

## ✅ Objectif

Widgets d'animation réutilisables `AnswerFeedback`, `BadgePop`, `AiBubbleExpand`, `StreakFlame`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZD-06` — Mouvement et tokens
_Module : Composants métier et responsive_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-06_mouvement-et-tokens__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-06_mouvement-et-tokens__desktop_light.webp?raw=true' width='330' alt='ZD-06 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-06_mouvement-et-tokens__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-06_mouvement-et-tokens__desktop_dark.webp?raw=true' width='330' alt='ZD-06 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-06_mouvement-et-tokens__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-06_mouvement-et-tokens__mobile_light.webp?raw=true' width='230' alt='ZD-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-06_mouvement-et-tokens__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-06_mouvement-et-tokens__mobile_dark.webp?raw=true' width='230' alt='ZD-06 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Qualité · 02 » · « Mouvement et tokens » · « Micro-animations soignées (validation de quiz, déblocage de badge, ouverture de la bulle IA) sans jamais nuire à la performance perçue. Tokens partagés Flutter ↔ CSS. » · « Durées et courbes » · « Instantané » · « 100 ms » · « Retour de pression, bascule » · « Rapide » · « 180 ms » · « Chips, onglets, toasts » · « Standard » · « 280 ms » · « Sheets, transitions de question » · « Expressif » · « 480 ms » · « Badge débloqué, montée de niveau » · « Easing standard » · « cubic-bezier(.2,0,0,1) » · « Easing sortie » · « cubic-bezier(.4,0,.2,1) » · « Respect de « réduire les animations » » · « Animations réduites : transitions instantanées » · « Micro-interactions clés » · « Validation d’un quiz » · « Couleur + icône immédiates, légère vibration haptique » · « Déblocage d’un badge » · « Pop de l’hexagone puis halo or » · « Ouverture de la bulle IA » · « Expansion circulaire vers le sheet » · « Série maintenue »

**Composants repérés** : `toggle`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-30](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-30%5D%22) · [MOB-ZA-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-16%5D%22) · [MOB-ZD-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-13%5D%22)

#### `ZE-01` — Bibliothèque d’animations — images clés
_Module : Animations et micro-interactions_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__desktop_light.webp?raw=true' width='330' alt='ZE-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__desktop_dark.webp?raw=true' width='330' alt='ZE-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__mobile_light.webp?raw=true' width='230' alt='ZE-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__mobile_dark.webp?raw=true' width='230' alt='ZE-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Mouvement · 01 » · « Animations clés » · « Chaque interaction a une réponse immédiate, un mouvement naturel et une fin nette. Ressorts doux, aucune animation décorative qui retarde l’action. Les images clés ci-dessous montrent le déroulé ; la version animée est dans le prototype interactif. » · « Univers Barça · Design System v1.1 » · « Mouvement & ergonomie » · « iOS · Android · Tablette » · « Entrées et surfaces » · « Ouverture d’un bottom sheet » · « Surface » · « 0 ms » · « 120 ms » · « 240 ms » · « 360 ms » · « 480 ms » · « 480 ms · cubic-bezier(.16,1,.3,1) · fond flouté +46 % · haptique : aucune » · « Modale (pop + overshoot) » · « 160 ms » · « 300 ms » · « 500 ms » · « 500 ms · ressort léger (overshoot 3 %) · haptique : notification succès » · « Jeux et gratification » · « Bonne réponse au quiz » · « Feedback » · « Rakitić » · « Repos » · « Appui · 100 ms » · « Validation · 220 ms » · « Check · 300 ms » · « +15 PTS » · « Gain · 600 ms »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-31](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-31%5D%22) · [MOB-ZC-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-03%5D%22) · [MOB-ZC-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-07%5D%22) · [MOB-ZD-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-13%5D%22) · [MOB-ZE-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-01%5D%22) · [MOB-ZE-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-02%5D%22) · [MOB-ZE-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-03%5D%22) · [MOB-ZE-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-07%5D%22) · [MOB-ZE-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-08%5D%22) · [MOB-ZE-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-17%5D%22) · [MOB-ZE-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-18%5D%22)

## 📐 Règles de gestion

- Validation quiz : voir `zd-quiz-options` (appui 100 ms, validation 220 ms, check 300 ms).
- Badge : pop 700 ms ressort, confettis 900 ms (cf. zc-modale-celebration).
- Bulle IA : expansion circulaire depuis la bulle (morphing de forme) 420 ms vers le sheet de conversation, easing `emphasized`.
- Série : flamme s'allume (0–120 ms), échelle 1,15, compteur 12 → 13 à 360 ms, haptique succès léger.

## 🛠️ Tâches

- [ ] Créer `lib/core/widgets/motion/answer_feedback.dart`, `badge_pop.dart`, `ai_bubble_expand.dart`, `streak_flame.dart`.
- [ ] Implémenter l'expansion circulaire avec `ClipPath`/`CircularRevealRoute`.
- [ ] Compteur animé `AnimatedCount`.
- [ ] Hooks haptiques centralisés `AppHaptics`.
- [ ] Tests (frames clés), widgetbook avec bouton Rejouer.

## ✔️ Critères d'acceptation

- [ ] Étant donné un tap sur la bulle IA, alors la conversation s'ouvre par expansion circulaire en 420 ms.
- [ ] Étant donné une série maintenue, alors le compteur passe de 12 à 13 à 360 ms.
- [ ] Étant donné mouvement réduit, alors les transitions sont instantanées.
- [ ] Étant donné 120 Hz, alors aucun layout n'est animé.

## 🧪 Tests à écrire

- [ ] Widget : frames clés flamme.
- [ ] Widget : expansion circulaire.
- [ ] Unitaire : `AppHaptics`.
- [ ] Widget : mouvement réduit.

## 🔗 Dépendances

À réaliser après : `MOB-ZD-13` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §4.5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
