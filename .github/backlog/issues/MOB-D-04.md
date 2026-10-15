> **MOB-D-04** · Données · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Le défi du jour est une donnée critique : réseau prioritaire, repli sur le cache local si hors-ligne, tentative bloquée localement jusqu'au retour réseau (CDC Flutter §5.3).

## ✅ Objectif

Ajouter les tables Drift `CachedGuessChallenges` et utiliser `PendingActions` pour mettre en file les tentatives non envoyées.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `D-12` — Hors-ligne — tentative bloquée
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-12_hors-ligne-tentative-bloquee__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-12_hors-ligne-tentative-bloquee__phone_light.webp?raw=true' width='230' alt='D-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-12_hors-ligne-tentative-bloquee__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-12_hors-ligne-tentative-bloquee__phone_dark.webp?raw=true' width='230' alt='D-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-12_hors-ligne-tentative-bloquee__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-12_hors-ligne-tentative-bloquee__tablet_light.webp?raw=true' width='330' alt='D-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-12_hors-ligne-tentative-bloquee__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-12_hors-ligne-tentative-bloquee__tablet_dark.webp?raw=true' width='330' alt='D-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Guess the Player » · « Défi n°214 · 1/6 essais » · « Qui est le joueur mystère ? » · « Chaque essai compare tes choix aux indices. » · « Joueur » · « Nation » · « Poste » · « Âge » · « N° » · « Club » · « Yamal » · « 19 ▲ » · « 10 ▲ » · « La Masia » · « Correct » · « Proche » · « Faux » · « ▲▼ plus / moins » · « Pedri » · « Connexion perdue · tentative en attente » · « Hors-ligne : ta tentative sera envoyée au retour du réseau. »

**Composants repérés** : `banner`, `btn`, `card`, `input`, `toast`

</details>

**Issues liées sur ce même écran :** [API-JEUX-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-05%5D%22) · [API-JEUX-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-07%5D%22) · [API-JEUX-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-08%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-D-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-06%5D%22) · [MOB-D-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-22%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

#### `D-10` — Déjà joué — prochain défi
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-10_deja-joue-prochain-defi__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-10_deja-joue-prochain-defi__phone_light.webp?raw=true' width='230' alt='D-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-10_deja-joue-prochain-defi__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-10_deja-joue-prochain-defi__phone_dark.webp?raw=true' width='230' alt='D-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-10_deja-joue-prochain-defi__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-10_deja-joue-prochain-defi__tablet_light.webp?raw=true' width='330' alt='D-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-10_deja-joue-prochain-defi__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-10_deja-joue-prochain-defi__tablet_dark.webp?raw=true' width='330' alt='D-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Guess the Player » · « avant le prochain » · « Reviens demain ! » · « Tu as déjà relevé le défi n°214 aujourd'hui. Un nouveau joueur mystère arrive à minuit. » · « Revoir mon résultat » · « Jouer au quiz du jour »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-JEUX-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-01%5D%22) · [API-JEUX-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-02%5D%22) · [API-JEUX-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-05%5D%22) · [API-JEUX-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-18%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-D-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-20%5D%22) · [MOB-D-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-21%5D%22) · [MOB-D-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-28%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

## 📐 Règles de gestion

- Le cache contient au plus le défi du jour courant (clé `challengeNumber`) ; purge des défis antérieurs à J-1.
- Une tentative hors-ligne n'est jamais évaluée localement (la solution n'est pas connue du client) : elle est affichée comme « en attente » (D-12) et rejouée à la reconnexion dans l'ordre de création.
- Une seule tentative en attente à la fois : le champ de saisie est désactivé tant qu'elle n'est pas synchronisée.

## 🛠️ Tâches

- [ ] Créer `core/local_storage/tables/cached_guess_challenges_table.dart` : `challengeNumber (PK)`, `payloadJson`, `status`, `nextChallengeAt`, `cachedAt`.
- [ ] Étendre la table `PendingActions` (type `guess_attempt`, `payloadJson`, `idempotencyKey`, `createdAt`, `retryCount`, `lastError`).
- [ ] Créer `GuessLocalDataSource` avec `watchToday()` (Stream via `watch()`), `saveToday()`, `enqueueAttempt()`, `pendingAttempt()`, `markSynced()`.
- [ ] Créer `core/local_storage/daos/guess_dao.dart` (`@DriftAccessor`) et incrémenter `schemaVersion` avec une migration `onUpgrade`.
- [ ] Implémenter la purge dans `clearOldChallenges()` appelée au démarrage.
- [ ] Chiffrer rien de sensible : ne jamais stocker la solution avant fin de partie ; la stocker ensuite uniquement dans le payload du défi terminé.
- [ ] Tests DAO avec base en mémoire (`NativeDatabase.memory()`).

## ✔️ Critères d'acceptation

- [ ] Étant donné un défi mis en cache, quand l'app démarre hors-ligne, alors l'état du plateau est restitué à l'identique.
- [ ] Étant donné une tentative en file, quand l'utilisateur relance l'app, alors elle est toujours présente avec le même `idempotencyKey`.
- [ ] Étant donné un défi J-2 en cache, quand la purge s'exécute, alors il est supprimé.
- [ ] Étant donné une migration de schéma 1 → 2, quand elle s'exécute, alors les données existantes sont conservées.

## 🧪 Tests à écrire

- [ ] Test DAO : insertion/lecture/purge d'un défi.
- [ ] Test DAO : file FIFO des tentatives.
- [ ] Test de migration Drift 1 → 2.
- [ ] Test : `watchToday()` émet à chaque mise à jour.

## 🔗 Dépendances

À réaliser après : `MOB-D-02` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §5.1–5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
