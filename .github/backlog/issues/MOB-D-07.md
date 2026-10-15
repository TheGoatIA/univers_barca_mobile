> **MOB-D-07** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Le hub affiche en une seule vue l'état du défi du jour (« Nouveau dans 06:41:12 »), le niveau du quiz (« Niveau 2 · Culé ») et le récapitulatif « 48 parties · 81 % de réussite ». Les données proviennent de trois endpoints existants côté API.

## ✅ Objectif

Créer `GamesHubCubit` qui agrège le statut Guess the Player, le niveau du quiz et les statistiques sans bloquer l'écran si l'une des sources échoue.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `D-01` — Hub des jeux
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__phone_light.webp?raw=true' width='230' alt='D-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__phone_dark.webp?raw=true' width='230' alt='D-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__tablet_light.webp?raw=true' width='330' alt='D-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-01_hub-des-jeux__tablet_dark.webp?raw=true' width='330' alt='D-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Un défi chaque jour » · « Défi du jour » · « Guess the » · « Player » · « Un joueur mystère, 6 essais. Même défi pour tous les culés. » · « Jouer » · « Nouveau dans 06:41:12 » · « Niveau 2 · Culé » · « Quiz » · « adaptatif » · « 10 questions calibrées sur ton niveau. Monte jusqu'à La Masia. » · « Quiz du jour » · « Plus de jeux » · « Entraînement libre » · « Quiz illimité, sans pression » · « Classements » · « Amis · Monde · Cette semaine » · « Mon historique de jeu » · « 48 parties · 81 % de réussite »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-02%5D%22) · [API-JEUX-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-05%5D%22) · [API-JEUX-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-10%5D%22) · [API-JEUX-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-18%5D%22) · [API-JEUX-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-19%5D%22) · [API-JEUX-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-31%5D%22) · [API-JEUX-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-32%5D%22) · [API-JEUX-34](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-34%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [API-JEUX-37](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-37%5D%22) · [MOB-D-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-01%5D%22) · [MOB-D-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-08%5D%22) · [MOB-D-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-15%5D%22) · [MOB-D-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-21%5D%22) · [MOB-D-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-23%5D%22) · [MOB-D-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-28%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

## 📐 Règles de gestion

- Chaque bloc du hub charge indépendamment (échec partiel toléré) : défi du jour, quiz du jour, historique.
- Le compte à rebours « Nouveau dans HH:MM:SS » est calculé à partir de `nextChallengeAt` (instant serveur) et recalé avec l'en-tête `Date` si l'écart dépasse 60 s.
- Quand le défi est déjà joué, le bouton « Jouer » devient « Revoir mon résultat » et mène à D-10.

## 🛠️ Tâches

- [ ] Créer `lib/features/games/presentation/cubit/games_hub_cubit.dart` et `games_hub_state.dart` (`dailyGuess`, `quizLevel`, `historySummary`, chacun `AsyncValue`-like : loading/data/error).
- [ ] Créer le use case `GetGamesHubSummary` composant `GetTodayGuess`, `GetQuizSummary` (groupe E) et `GetGuessHistory(limit:1)`.
- [ ] Créer `CountdownTicker` (Stream.periodic 1 s, annulé à la fermeture) réutilisable par D-10.
- [ ] Mettre en cache le résumé (dernière valeur) pour affichage immédiat hors-ligne.
- [ ] Resynchroniser au retour au premier plan (`resumed`) avec un throttle de 60 s.
- [ ] Gérer la bascule de minuit : à `remaining <= 0`, recharger `/today`.
- [ ] Exposer `analytics` : `games_hub_viewed`.

## ✔️ Critères d'acceptation

- [ ] Étant donné le défi non joué, quand le hub s'affiche, alors le bouton « Jouer » est actif et le compte à rebours décroît chaque seconde.
- [ ] Étant donné l'échec de l'historique, quand les autres sources répondent, alors la ligne « 48 parties · 81 % » est remplacée par un état d'erreur discret sans bloquer le reste.
- [ ] Étant donné `remaining == 0`, quand le tick se produit, alors le statut est rechargé et le défi redevient jouable.
- [ ] Étant donné le mode hors-ligne, quand le hub s'ouvre, alors les dernières valeurs en cache sont visibles.

## 🧪 Tests à écrire

- [ ] bloc_test (cubit) : chargement parallèle avec échec partiel.
- [ ] Test unitaire : formatage `06:41:12`.
- [ ] Test : recalage d'horloge > 60 s.
- [ ] Test : rechargement à minuit.

## 🔗 Dépendances

À réaliser après : `MOB-D-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.4
- CDC Flutter §5.3, §6.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
