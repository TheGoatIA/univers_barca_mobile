> **MOB-E-09** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

E-01 « Quiz » : carte « Ton niveau — Culé » avec progression (« 70 % … Passe au niveau Socio à 75 % »), carte « Quiz du jour : 10 questions · +150 pts max · 1 fois par jour » avec bouton « Jouer », « Entraînement libre », « Classements », et liste « Les 5 paliers » avec le palier actuel marqué.

## ✅ Objectif

Implémenter le hub avec statuts chargés indépendamment.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-01` — Hub du quiz
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__phone_light.webp?raw=true' width='230' alt='E-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__phone_dark.webp?raw=true' width='230' alt='E-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__tablet_light.webp?raw=true' width='330' alt='E-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__tablet_dark.webp?raw=true' width='330' alt='E-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz » · « Ton niveau » · « Culé » · « 70 % de réussite sur les 10 dernières réponses · Passe au niveau » · « Socio » · « à 75 % » · « Quiz du jour » · « 10 questions · +150 pts max · 1 fois par jour » · « Jouer » · « Entraînement libre » · « Illimité · sans impact sur ton niveau » · « Classements » · « Amis, monde, cette semaine » · « Les 5 paliers » · « 1. Supporter occasionnel » · « 2. Culé » · « Actuel » · « 3. Socio » · « 4. Historien du Barça » · « 5. La Masia »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-12%5D%22) · [API-JEUX-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-14%5D%22) · [API-JEUX-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-18%5D%22) · [API-JEUX-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-21%5D%22) · [API-JEUX-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-32%5D%22) · [API-JEUX-34](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-34%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-E-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-01%5D%22) · [MOB-E-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-08%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Palier actuel affiché avec badge « Actuel » ; liste : 1. Supporter occasionnel, 2. Culé, 3. Socio, 4. Historien du Barça, 5. La Masia.
- Bouton « Jouer » désactivé et remplacé par « Voir mon résultat » si le quiz du jour est terminé (→ E-17).
- Entraînement libre : « Illimité · sans impact sur ton niveau » (→ E-11) ; Classements : « Amis, monde, cette semaine » (→ E-13).

## 🛠️ Tâches

- [ ] Créer `presentation/pages/quiz_hub_page.dart` (`CustomScrollView`).
- [ ] Créer `LevelCard`, `DailyQuizCard`, `QuizMenuTile`, `LevelsLadder` (liste des 5 paliers, puce « Actuel »).
- [ ] Créer `QuizHubCubit` (niveau, statut du quiz du jour) avec chargement parallèle et échec partiel.
- [ ] Squelette shimmer, erreur partielle (`AppErrorView` compacte), bandeau hors-ligne.
- [ ] Navigations vers E-02/E-17, E-11, E-13.
- [ ] Pull-to-refresh.
- [ ] `Semantics` des cartes.
- [ ] Golden tests clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné niveau 2, quand E-01 s'affiche, alors « Culé » est affiché et le palier 2 porte « Actuel ».
- [ ] Étant donné le quiz du jour non joué, quand « Jouer » est touché, alors E-02 s'ouvre.
- [ ] Étant donné le quiz du jour joué, quand E-01 s'affiche, alors E-17 est accessible et « Jouer » est remplacé.
- [ ] Étant donné l'échec du niveau, quand les autres sources répondent, alors la liste des paliers reste affichée.

## 🧪 Tests à écrire

- [ ] Golden test : E-01 clair.
- [ ] Golden test : E-01 sombre.
- [ ] Widget test : navigation.
- [ ] Widget test : quiz déjà joué.
- [ ] Widget test : squelette.

## ♿ Accessibilité et i18n

- Clés ARB : `quizYourLevel`, `levelProgressHint`, `dailyQuizTitle`, `dailyQuizMeta`, `play`, `freePractice`, `unlimitedNoImpact`, `leaderboards`, `leaderboardsSub`, `fivePalliers`, `currentBadge`, `level1`…`level5`.

## 🔗 Dépendances

À réaliser après : `MOB-E-08` · `MOB-E-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.4
- CDC Global §2.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
