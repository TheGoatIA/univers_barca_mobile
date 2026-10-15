> **MOB-D-01** · Infrastructure · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Aucun écran de jeu n'existe. L'onglet « Jeux » de la barre de navigation à 5 onglets affiche le hub (D-01) qui mène au défi Guess the Player, au quiz et aux classements. Le gabarit doit suivre la feature de référence `players`.

## ✅ Objectif

Créer les arborescences `lib/features/games/` (hub) et `lib/features/guess_the_player/` et brancher les routes go_router.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `D-01` — Hub des jeux
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__phone_light.webp?raw=true' width='230' alt='D-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__phone_dark.webp?raw=true' width='230' alt='D-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__tablet_light.webp?raw=true' width='330' alt='D-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__tablet_dark.webp?raw=true' width='330' alt='D-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Un défi chaque jour » · « Défi du jour » · « Guess the » · « Player » · « Un joueur mystère, 6 essais. Même défi pour tous les culés. » · « Jouer » · « Nouveau dans 06:41:12 » · « Niveau 2 · Culé » · « Quiz » · « adaptatif » · « 10 questions calibrées sur ton niveau. Monte jusqu'à La Masia. » · « Quiz du jour » · « Plus de jeux » · « Entraînement libre » · « Quiz illimité, sans pression » · « Classements » · « Amis · Monde · Cette semaine » · « Mon historique de jeu » · « 48 parties · 81 % de réussite »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-02%5D%22) · [API-JEUX-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-05%5D%22) · [API-JEUX-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-10%5D%22) · [API-JEUX-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-18%5D%22) · [API-JEUX-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-19%5D%22) · [API-JEUX-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-31%5D%22) · [API-JEUX-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-32%5D%22) · [API-JEUX-34](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-34%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [API-JEUX-37](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-37%5D%22) · [MOB-D-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-07%5D%22) · [MOB-D-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-08%5D%22) · [MOB-D-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-15%5D%22) · [MOB-D-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-21%5D%22) · [MOB-D-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-23%5D%22) · [MOB-D-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-28%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

#### `D-03` — Début de partie
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__phone_light.webp?raw=true' width='230' alt='D-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__phone_dark.webp?raw=true' width='230' alt='D-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__tablet_light.webp?raw=true' width='330' alt='D-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__tablet_dark.webp?raw=true' width='330' alt='D-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Guess the Player » · « Défi n°214 · 0/6 essais » · « Qui est le joueur mystère ? » · « Chaque essai compare tes choix aux indices. » · « Joueur » · « Nation » · « Poste » · « Âge » · « N° » · « Club » · « Correct » · « Proche » · « Faux » · « ▲▼ plus / moins » · « Nom du joueur… »

**Composants repérés** : `btn`, `card`, `input`

</details>

**Issues liées sur ce même écran :** [API-JEUX-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-01%5D%22) · [API-JEUX-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-03%5D%22) · [API-JEUX-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-04%5D%22) · [API-JEUX-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-05%5D%22) · [API-JEUX-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-07%5D%22) · [API-JEUX-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-08%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [API-JEUX-36](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-36%5D%22) · [API-JEUX-37](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-37%5D%22) · [MOB-D-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-02%5D%22) · [MOB-D-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-03%5D%22) · [MOB-D-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-05%5D%22) · [MOB-D-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-06%5D%22) · [MOB-D-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-10%5D%22) · [MOB-D-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-12%5D%22) · [MOB-D-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-21%5D%22) · [MOB-D-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-25%5D%22) · [MOB-D-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-26%5D%22) · [MOB-D-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-28%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

## 📐 Règles de gestion

- Le hub est la racine de l'onglet « Jeux » (`/games`) ; chaque onglet conserve sa propre pile de navigation (CDC Flutter §6.1).
- Les écrans de jeu en plein écran (plateau, résultat) masquent la barre de navigation et affichent une croix de fermeture (D-03 à D-08).
- Les routes d'invitation et de notifications utilisent le schéma `univers-barca://games/guess` (deep link série en danger, groupe O).

## 🛠️ Tâches

- [ ] Créer `lib/features/guess_the_player/{domain/{entities,repositories,usecases},data/{datasources,models,repositories},presentation/{bloc,pages,widgets}}` et `lib/features/games/presentation/{pages,widgets}`.
- [ ] Ajouter dans `core/constants/route_constants.dart` : `games = '/games'`, `guess = '/games/guess'`, `guessResult = '/games/guess/result'`, `guessHistory = '/games/guess/history'`, `guessAlreadyPlayed = '/games/guess/done'`.
- [ ] Déclarer dans `routes/app_router.dart` les sous-routes sous la branche `/games` du ShellRoute ; les routes plein écran utilisent `parentNavigatorKey: rootNavigatorKey`.
- [ ] Passer le `GuessResult` via `extra` typé (objet `GuessResultArgs`) avec repli sur un rechargement `GET /guess-the-player/today` si `extra` est nul (restauration d'état).
- [ ] Enregistrer les dépendances avec `@injectable` / `@LazySingleton(as: GuessRepository)` et régénérer `injection.config.dart`.
- [ ] Ajouter un `README.md` de feature décrivant l'ordre des écrans D-01 → D-02 → D-03 → D-07/D-08 → D-09.
- [ ] Créer des pages vides `GamesHubPage` et `GuessPlayPage` affichant `AppLoading`.

## ✔️ Critères d'acceptation

- [ ] Étant donné l'app authentifiée, quand l'utilisateur touche l'onglet « Jeux », alors `GamesHubPage` s'affiche à `/games`.
- [ ] Étant donné `/games/guess`, quand la page s'ouvre, alors la barre de navigation est masquée et une croix permet de revenir au hub.
- [ ] Étant donné un lien `univers-barca://games/guess`, quand il est ouvert, alors la route `/games/guess` est atteinte après authentification.
- [ ] Étant donné `flutter analyze`, quand la feature est ajoutée, alors aucun avertissement n'est émis.

## 🧪 Tests à écrire

- [ ] Test de routage : `context.go('/games')` rend `GamesHubPage`.
- [ ] Test de routage : `/games/guess/result` sans `extra` déclenche un rechargement du statut du jour.
- [ ] Test d'injection : `getIt<GuessThePlayerBloc>()` se résout.
- [ ] Test : la barre de navigation est absente sur `/games/guess`.

## ♿ Accessibilité et i18n

- Clés ARB `navGames`, `gamesHubTitle` (fr/en/es).

## 📚 Références

- CDC Flutter §7.3
- CDC Flutter §6.1
- CONTRIBUTING.md du dépôt mobile

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
