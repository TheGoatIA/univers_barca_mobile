> **MOB-D-24** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Écran D-11 « Mon historique » : trois indicateurs (Parties jouées, 81 % Taux de réussite, Série en cours, Meilleure série), histogramme « Répartition des essais » et liste « Dernières parties » (date, joueur, essais).

## ✅ Objectif

Implémenter D-11 avec un histogramme dessiné sans dépendance graphique lourde.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `D-11` — Historique et statistiques
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-11_historique-et-statistiques__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-11_historique-et-statistiques__phone_light.webp?raw=true' width='230' alt='D-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-11_historique-et-statistiques__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-11_historique-et-statistiques__phone_dark.webp?raw=true' width='230' alt='D-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-11_historique-et-statistiques__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-11_historique-et-statistiques__tablet_light.webp?raw=true' width='330' alt='D-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-11_historique-et-statistiques__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-11_historique-et-statistiques__tablet_dark.webp?raw=true' width='330' alt='D-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Mon historique » · « Parties jouées » · « 81% » · « Taux de réussite » · « Série en cours » · « Meilleure série » · « Répartition des essais » · « Dernières parties » · « 14 oct. » · « Pedri » · « 4/6 » · « 13 oct. » · « Gavi » · « 2/6 » · « 12 oct. » · « Piqué » · « 11 oct. » · « Iniesta » · « 5/6 »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-10%5D%22) · [API-JEUX-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-19%5D%22) · [API-JEUX-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-33%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-D-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-03%5D%22) · [MOB-D-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-23%5D%22) · [MOB-D-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-28%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

## 📐 Règles de gestion

- Indicateurs en grille 2 x 2 dans des cartes ; valeurs en Barlow Condensed.
- Histogramme horizontal : 6 barres (essais 1 à 6) + « Raté » ; barre grenat, valeur à droite.
- Liste « Dernières parties » : date (« 14 oct. »), nom du joueur, « 4/6 » ; couleur verte pour victoire, rouge/bleue pour échec « X/6 ».

## 🛠️ Tâches

- [ ] Créer `presentation/pages/guess_history_page.dart` (`CustomScrollView`).
- [ ] Créer `StatsGrid`, `AttemptsDistributionChart` (`CustomPainter`, animation de 400 ms), `HistoryTile`.
- [ ] Brancher `GuessHistoryCubit` avec `BlocBuilder` et squelette shimmer.
- [ ] Ouverture depuis D-01 (« Mon historique de jeu ») et D-07 (« Statistiques »).
- [ ] Ajouter pull-to-refresh (`RefreshIndicator`).
- [ ] Tap sur une ligne → D-07/D-08 en lecture seule du résultat (si disponible).
- [ ] Ajouter `Semantics` à l'histogramme (« 3 essais : 10 parties »).
- [ ] Golden tests clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné l'historique chargé, quand D-11 s'affiche, alors les 4 indicateurs et l'histogramme sont visibles.
- [ ] Étant donné une répartition `{3:10}` maximale, quand l'histogramme s'affiche, alors la barre « 3 » est la plus longue.
- [ ] Étant donné la touche sur une partie, quand elle est pressée, alors le résumé de la partie s'ouvre.
- [ ] Étant donné texte 200 %, quand l'écran s'affiche, alors aucun débordement.

## 🧪 Tests à écrire

- [ ] Golden test : D-11 clair.
- [ ] Golden test : D-11 sombre.
- [ ] Widget test : histogramme proportionnel.
- [ ] Widget test : tap sur une ligne.
- [ ] Widget test : squelette.

## ♿ Accessibilité et i18n

- Clés ARB : `myHistory`, `gamesPlayed`, `successRate`, `currentStreak`, `bestStreak`, `attemptsDistribution`, `recentGames`, `failedLabel`, `noGamesYet`.

## 🔗 Dépendances

À réaliser après : `MOB-D-23` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.3
- CDC Global §2.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
