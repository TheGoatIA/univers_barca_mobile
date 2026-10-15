> **MOB-E-19** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

E-08 : « 8/10 bonnes réponses », « Excellent travail ! », statistiques (+120 points, 01:48 temps, 80 % réussite), « Progression vers Socio — 75 % », « Encore une bonne série pour monter de niveau. », « Revoir les explications », « Voir le classement ».

## ✅ Objectif

Implémenter l'écran de fin de session, avec routage vers E-09/E-10 si le niveau change.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-08` — Résultat de la session
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-08_resultat-de-la-session__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-08_resultat-de-la-session__phone_light.webp?raw=true' width='230' alt='E-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-08_resultat-de-la-session__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-08_resultat-de-la-session__phone_dark.webp?raw=true' width='230' alt='E-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-08_resultat-de-la-session__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-08_resultat-de-la-session__tablet_light.webp?raw=true' width='330' alt='E-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-08_resultat-de-la-session__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-08_resultat-de-la-session__tablet_dark.webp?raw=true' width='330' alt='E-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Résultat » · « 8/10 » · « bonnes réponses » · « Excellent travail ! » · « +120 » · « Points » · « Temps » · « 80 % » · « Réussite » · « Progression vers Socio » · « 75 % » · « Encore une bonne série pour monter de niveau. » · « Revoir les explications » · « Voir le classement »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-11%5D%22) · [API-JEUX-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-12%5D%22) · [API-JEUX-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-17%5D%22) · [API-JEUX-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-20%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-E-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-02%5D%22) · [MOB-E-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-05%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-08%5D%22) · [MOB-E-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-20%5D%22) · [MOB-E-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-24%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Message d'encouragement selon le score : ≥ 9/10 « Parfait ! », ≥ 7/10 « Excellent travail ! », ≥ 5/10 « Bien joué ! », sinon « Continue de t'entraîner ! ».
- Anneau 8/10 animé (600 ms) ; compteur de points animé.
- Mode entraînement : pas de points ni de progression de niveau, libellé « Entraînement terminé ».

## 🛠️ Tâches

- [ ] Créer `presentation/pages/quiz_result_page.dart` consommant `QuizResultArgs`.
- [ ] Créer `ScoreRing(correct,total)` (`CustomPainter`), `ResultStatTile`, `LevelProgressBar` (réutilisé).
- [ ] Boutons : « Revoir les explications » → `QuizReviewPage`, « Voir le classement » → E-13.
- [ ] Après affichage, si `levelChange != none` : afficher E-09/E-10 (modale) après 800 ms.
- [ ] Empêcher le retour vers la question (`PopScope` → hub).
- [ ] Gérer erreur et hors-ligne (résumé en cache).
- [ ] Golden tests clair/sombre ; tests widget.
- [ ] Analytics `quiz_completed{correct,points,durationSec,levelChange}`.

## ✔️ Critères d'acceptation

- [ ] Étant donné 8 bonnes réponses, quand E-08 s'affiche, alors « 8/10 », « +120 », « 01:48 » et « 80 % » sont visibles.
- [ ] Étant donné `levelChange:'up'`, quand E-08 s'affiche, alors E-09 apparaît ensuite.
- [ ] Étant donné le mode entraînement, quand le résumé s'affiche, alors aucun point n'est montré.
- [ ] Étant donné « Voir le classement », quand il est touché, alors E-13 s'ouvre.

## 🧪 Tests à écrire

- [ ] Golden test : E-08.
- [ ] Widget test : message selon score.
- [ ] Widget test : mode entraînement.
- [ ] Widget test : routage vers E-09.
- [ ] Widget test : PopScope.

## ♿ Accessibilité et i18n

- Clés ARB : `resultTitle`, `correctAnswersLabel`, `excellentWork`, `pointsLabel`, `timeLabel`, `successLabel`, `progressToLevel`, `reviewExplanations`, `seeLeaderboard`.

## 🔗 Dépendances

À réaliser après : `MOB-E-08` · `MOB-E-17` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.4
- CDC Global §2.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
