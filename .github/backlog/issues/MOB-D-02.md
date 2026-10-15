> **MOB-D-02** · Données · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Le plateau affiche, par tentative, un nom de joueur et 5 cellules d'indices colorées (Nation, Poste, Âge, N°, Club). Le serveur calcule les statuts ; le mobile les modélise sans jamais connaître la solution tant que la partie n'est pas terminée.

## ✅ Objectif

Créer les DTO immuables et les entités de domaine du jeu, avec mapping DTO → entité.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `D-03` — Début de partie
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__phone_light.webp?raw=true' width='230' alt='D-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__phone_dark.webp?raw=true' width='230' alt='D-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__tablet_light.webp?raw=true' width='330' alt='D-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__tablet_dark.webp?raw=true' width='330' alt='D-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Guess the Player » · « Défi n°214 · 0/6 essais » · « Qui est le joueur mystère ? » · « Chaque essai compare tes choix aux indices. » · « Joueur » · « Nation » · « Poste » · « Âge » · « N° » · « Club » · « Correct » · « Proche » · « Faux » · « ▲▼ plus / moins » · « Nom du joueur… »

**Composants repérés** : `btn`, `card`, `input`

</details>

**Issues liées sur ce même écran :** [API-JEUX-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-01%5D%22) · [API-JEUX-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-03%5D%22) · [API-JEUX-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-04%5D%22) · [API-JEUX-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-05%5D%22) · [API-JEUX-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-07%5D%22) · [API-JEUX-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-08%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [API-JEUX-36](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-36%5D%22) · [API-JEUX-37](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-37%5D%22) · [MOB-D-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-01%5D%22) · [MOB-D-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-03%5D%22) · [MOB-D-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-05%5D%22) · [MOB-D-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-06%5D%22) · [MOB-D-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-10%5D%22) · [MOB-D-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-12%5D%22) · [MOB-D-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-21%5D%22) · [MOB-D-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-25%5D%22) · [MOB-D-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-26%5D%22) · [MOB-D-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-28%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

#### `D-05` — Trois essais joués
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-05_trois-essais-joues__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-05_trois-essais-joues__phone_light.webp?raw=true' width='230' alt='D-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-05_trois-essais-joues__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-05_trois-essais-joues__phone_dark.webp?raw=true' width='230' alt='D-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-05_trois-essais-joues__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-05_trois-essais-joues__tablet_light.webp?raw=true' width='330' alt='D-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-05_trois-essais-joues__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-05_trois-essais-joues__tablet_dark.webp?raw=true' width='330' alt='D-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Guess the Player » · « Défi n°214 · 3/6 essais » · « Qui est le joueur mystère ? » · « Chaque essai compare tes choix aux indices. » · « Joueur » · « Nation » · « Poste » · « Âge » · « N° » · « Club » · « Yamal » · « 19 ▲ » · « 10 ▲ » · « La Masia » · « Pedri » · « 23 ▲ » · « 8 ▲ » · « Las Palmas » · « Olmo » · « 28 ▲ » · « 20 ▲ » · « Leipzig » · « Correct » · « Proche » · « Faux » · « ▲▼ plus / moins » · « Nom du joueur… »

**Composants repérés** : `btn`, `card`, `input`

</details>

**Issues liées sur ce même écran :** [API-JEUX-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-04%5D%22) · [API-JEUX-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-05%5D%22) · [API-JEUX-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-07%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-D-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-06%5D%22) · [MOB-D-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-10%5D%22) · [MOB-D-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-11%5D%22) · [MOB-D-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-13%5D%22) · [MOB-D-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-14%5D%22) · [MOB-D-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-26%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

#### `D-07` — Victoire
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-07_victoire__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-07_victoire__phone_light.webp?raw=true' width='230' alt='D-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-07_victoire__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-07_victoire__phone_dark.webp?raw=true' width='230' alt='D-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-07_victoire__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-07_victoire__tablet_light.webp?raw=true' width='330' alt='D-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-07_victoire__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-07_victoire__tablet_dark.webp?raw=true' width='330' alt='D-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Résultat » · « Défi n°214 » · « Bravo ! » · « Frenkie de Jong » · « Milieu · Pays-Bas · N°21 · Trouvé en » · « 3 essais » · « Série » · « 81% » · « Réussite » · « +60 » · « Points » · « Ta grille » · « Partager mon résultat » · « Quiz du jour » · « Statistiques »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-01%5D%22) · [API-JEUX-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-07%5D%22) · [API-JEUX-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-09%5D%22) · [API-JEUX-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-19%5D%22) · [API-JEUX-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-20%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-D-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-05%5D%22) · [MOB-D-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-06%5D%22) · [MOB-D-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-15%5D%22) · [MOB-D-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-16%5D%22) · [MOB-D-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-18%5D%22) · [MOB-D-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-25%5D%22) · [MOB-D-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-26%5D%22) · [MOB-D-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-28%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

## 📐 Règles de gestion

- Statut d'une cellule : `ClueStatus { correct, close, wrong }` (vert / jaune / rouge) ; direction optionnelle `ClueDirection { higher, lower }` rendue ▲ (la cible est plus haute) ou ▼ (plus basse) pour l'âge et le numéro.
- Le champ solution (`mysteryPlayer`) n'est présent dans la réponse qu'à la fin de la partie (victoire, 6e essai raté) — CDC Backend §3.3 : ne pas divulguer le nom tant que non deviné.
- Les dates sont des instants UTC ISO-8601 ; `nextChallengeAt` est fourni par le serveur.

## 🗄️ Données

- Collections côté API : DailyChallenge (type=guess_player, date unique), GuessAttempt (userId, challengeId, attemptNumber, guessedPlayerId, isCorrect)

## 🛠️ Tâches

- [ ] Créer `data/models/daily_guess_status_model.dart` : `{challengeNumber:int (214), date:String (yyyy-MM-dd), status: 'not_started'|'in_progress'|'won'|'lost', maxAttempts:int (6), attempts:List<GuessAttemptModel>, nextChallengeAt:DateTime, solution:MysteryPlayerModel?}`.
- [ ] Créer `guess_attempt_model.dart` : `{attemptNumber:int, player:PlayerLightModel{id,name,photoUrl}, clues:List<ClueModel>, isCorrect:bool}`.
- [ ] Créer `clue_model.dart` : `{field: 'nation'|'position'|'age'|'number'|'club', value:String, status:String, direction:String?}` avec `@JsonKey(unknownEnumValue:)` pour tolérer de futurs champs.
- [ ] Créer `mystery_player_model.dart` : `{id,name,position,nationality,shirtNumber,previousClub,photoUrl}` (D-07 : « Milieu · Pays-Bas · N°21 », D-08 : « ex-Ajax »).
- [ ] Créer `guess_history_model.dart` : `{played:int, winRate:double, currentStreak:int, bestStreak:int, distribution:Map<String,int>, recent:List<GuessHistoryEntry{date,playerName,attempts,won}>}`.
- [ ] Créer les entités `lib/features/guess_the_player/domain/entities/*.dart` (Equatable) et les extensions `toEntity()`.
- [ ] Générer `*.freezed.dart` / `*.g.dart` via build_runner ; tests de sérialisation avec fixtures JSON dans `test/fixtures/guess/`.

## ✔️ Critères d'acceptation

- [ ] Étant donné un JSON `today` sans `solution`, quand il est désérialisé, alors `solution == null` et aucune exception n'est levée.
- [ ] Étant donné un champ `status` inconnu, quand il est parsé, alors `ClueStatus.wrong` est utilisé en repli.
- [ ] Étant donné `direction:'higher'`, quand l'entité est créée, alors la cellule expose `showsUpArrow == true`.
- [ ] Étant donné un défi `lost`, quand le modèle est mappé, alors `solution` est non nulle.

## 🧪 Tests à écrire

- [ ] Test unitaire : parsing d'un défi en cours (3 tentatives, fixture D-05).
- [ ] Test unitaire : parsing d'un défi gagné avec solution (fixture D-07).
- [ ] Test unitaire : valeur d'énumération inconnue → repli.
- [ ] Test unitaire : mapping `GuessHistoryModel` → entité avec distribution `{1:2,2:5,3:10,4:8,5:3,6:1,fail:4}`.

## 📚 Références

- CDC Backend §3.3
- CDC Backend §4.3
- CDC Flutter §2.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
