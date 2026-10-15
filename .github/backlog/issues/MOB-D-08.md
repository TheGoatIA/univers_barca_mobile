> **MOB-D-08** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Premier écran de l'onglet « Jeux » : titre « Un défi chaque jour », deux cartes mises en avant (Guess the Player, Quiz adaptatif), puis une section « Plus de jeux » avec Entraînement libre, Classements et Mon historique de jeu.

## ✅ Objectif

Reproduire fidèlement la maquette D-01 (clair et sombre) en consommant `GamesHubCubit`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `D-01` — Hub des jeux
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__phone_light.webp?raw=true' width='230' alt='D-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__phone_dark.webp?raw=true' width='230' alt='D-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__tablet_light.webp?raw=true' width='330' alt='D-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__tablet_dark.webp?raw=true' width='330' alt='D-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Un défi chaque jour » · « Défi du jour » · « Guess the » · « Player » · « Un joueur mystère, 6 essais. Même défi pour tous les culés. » · « Jouer » · « Nouveau dans 06:41:12 » · « Niveau 2 · Culé » · « Quiz » · « adaptatif » · « 10 questions calibrées sur ton niveau. Monte jusqu'à La Masia. » · « Quiz du jour » · « Plus de jeux » · « Entraînement libre » · « Quiz illimité, sans pression » · « Classements » · « Amis · Monde · Cette semaine » · « Mon historique de jeu » · « 48 parties · 81 % de réussite »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-02%5D%22) · [API-JEUX-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-05%5D%22) · [API-JEUX-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-10%5D%22) · [API-JEUX-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-18%5D%22) · [API-JEUX-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-19%5D%22) · [API-JEUX-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-31%5D%22) · [API-JEUX-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-32%5D%22) · [API-JEUX-34](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-34%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [API-JEUX-37](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-37%5D%22) · [MOB-D-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-01%5D%22) · [MOB-D-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-07%5D%22) · [MOB-D-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-15%5D%22) · [MOB-D-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-21%5D%22) · [MOB-D-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-23%5D%22) · [MOB-D-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-28%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

## 📐 Règles de gestion

- Carte Guess the Player : badge « Défi du jour », titre sur deux lignes « Guess the / Player », sous-titre « Un joueur mystère, 6 essais. Même défi pour tous les culés. », bouton « Jouer », compte à rebours « Nouveau dans 06:41:12 ».
- Carte Quiz : titre « Quiz adaptatif », « 10 questions calibrées sur ton niveau. Monte jusqu'à La Masia. », puce « Niveau 2 · Culé », bouton « Quiz du jour ».
- Liste « Plus de jeux » : « Entraînement libre — Quiz illimité, sans pression » (→ E-11), « Classements — Amis · Monde · Cette semaine » (→ E-13), « Mon historique de jeu — 48 parties · 81 % de réussite » (→ D-11).

## 🛠️ Tâches

- [ ] Créer `presentation/pages/games_hub_page.dart` (`CustomScrollView`, marges 16 dp, `SafeArea`).
- [ ] Créer les widgets `DailyChallengeCard`, `AdaptiveQuizCard`, `GameListTile` dans `presentation/widgets/` avec les tokens du design system (carte rayon 16, ombre légère, accent grenat/bleu).
- [ ] Utiliser `AppButton` (variante primaire/secondaire) pour « Jouer » et « Quiz du jour ».
- [ ] Implémenter l'avatar/illustration joueur mystère (silhouette) en SVG ou asset local.
- [ ] Gérer les états loading (squelette shimmer des 2 cartes), erreur partielle (`AppErrorView` compacte avec « Réessayer ») et hors-ligne (bandeau).
- [ ] Navigation : `context.push(RouteConstants.guess)`, `push('/games/quiz')`, `push('/games/leaderboard')`, `push(RouteConstants.guessHistory)`.
- [ ] Ajouter `Semantics` aux cartes (label complet : « Défi du jour, Guess the Player, nouveau dans 6 heures 41 »).
- [ ] Créer les tests golden (iPhone SE, Pixel 7 ; clair/sombre).

## ✔️ Critères d'acceptation

- [ ] Étant donné le hub chargé, quand l'utilisateur touche « Jouer », alors `/games/guess` s'ouvre.
- [ ] Étant donné un défi déjà joué, quand le hub s'affiche, alors la carte indique « Défi du jour terminé » et le bouton mène à D-10.
- [ ] Étant donné le thème sombre, quand le hub s'affiche, alors les contrastes respectent WCAG AA.
- [ ] Étant donné un texte système à 200 %, quand le hub s'affiche, alors aucun débordement (RenderFlex) ne se produit.
- [ ] Étant donné une erreur sur la source historique, quand le hub s'affiche, alors le reste reste utilisable.

## 🧪 Tests à écrire

- [ ] Golden test : hub clair (phone).
- [ ] Golden test : hub sombre (phone).
- [ ] Widget test : navigation sur chaque carte.
- [ ] Widget test : état squelette.
- [ ] Widget test : textScaleFactor 2.0 sans overflow.

## ♿ Accessibilité et i18n

- Clés ARB : `gamesHubHeadline`, `dailyChallengeBadge`, `guessCardSubtitle`, `playAction`, `newInCountdown`, `quizCardSubtitle`, `moreGames`, `freePractice`, `freePracticeSubtitle`, `leaderboards`, `leaderboardsSubtitle`, `myGameHistory`, `gameHistorySummary` (fr/en/es).

## 🔗 Dépendances

À réaliser après : `MOB-D-07` · `MOB-D-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.3, §9.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
