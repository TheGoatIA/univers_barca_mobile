> **MOB-H-02** · API · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

La feature consomme GET/PUT /fantasy/team et GET /fantasy/leaderboard. Le client Chopper doit traduire les statuts HTTP en Failure typées, notamment le 409 de composition verrouillée affiché sur H-09.

## ✅ Objectif

Fournir un service Chopper typé et un mapping d'erreurs exhaustif vers des Failure métier.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-07` — Confirmation de la composition
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-07_confirmation-de-la-composition__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-07_confirmation-de-la-composition__phone_light.webp?raw=true' width='230' alt='H-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-07_confirmation-de-la-composition__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-07_confirmation-de-la-composition__phone_dark.webp?raw=true' width='230' alt='H-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-07_confirmation-de-la-composition__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-07_confirmation-de-la-composition__tablet_light.webp?raw=true' width='330' alt='H-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-07_confirmation-de-la-composition__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-07_confirmation-de-la-composition__tablet_dark.webp?raw=true' width='330' alt='H-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Fermeture des compositions dans » · « 1 j 04 h 12 min » · « J11 » · « ter Stegen » · « Koundé » · « Cubarsí » · « Araújo » · « Balde » · « De Jong » · « Pedri » · « Gavi » · « Yamal » · « Lewandowski » · « Raphinha » · « 11/11 » · « Équipe complète » · « Formation » · « 4-3-3 » · « · Capitaine » · « Capitaine »

**Composants repérés** : `avatar`, `btn`, `card`, `modal`

</details>

**Issues liées sur ce même écran :** [API-FANT-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-06%5D%22) · [API-FANT-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-24%5D%22) · [MOB-H-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-04%5D%22) · [MOB-H-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-06%5D%22) · [MOB-H-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-17%5D%22) · [MOB-H-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-29%5D%22) · [MOB-H-35](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-35%5D%22)

#### `H-08` — Composition enregistrée
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-08_composition-enregistree__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-08_composition-enregistree__phone_light.webp?raw=true' width='230' alt='H-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-08_composition-enregistree__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-08_composition-enregistree__phone_dark.webp?raw=true' width='230' alt='H-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-08_composition-enregistree__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-08_composition-enregistree__tablet_light.webp?raw=true' width='330' alt='H-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-08_composition-enregistree__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-08_composition-enregistree__tablet_dark.webp?raw=true' width='330' alt='H-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Fermeture des compositions dans » · « 1 j 04 h 12 min » · « J11 » · « ter Stegen » · « Koundé » · « Cubarsí » · « Araújo » · « Balde » · « De Jong » · « Pedri » · « Gavi » · « Yamal » · « Lewandowski » · « Raphinha » · « 11/11 » · « Équipe complète » · « Formation » · « 4-3-3 » · « · Capitaine » · « Capitaine »

**Composants repérés** : `avatar`, `btn`, `card`, `toast`

</details>

**Issues liées sur ce même écran :** [API-FANT-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-06%5D%22) · [API-FANT-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-24%5D%22) · [MOB-H-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-06%5D%22) · [MOB-H-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-18%5D%22) · [MOB-H-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-31%5D%22) · [MOB-H-35](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-35%5D%22)

#### `H-09` — Composition verrouillée — erreur 409
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-09_composition-verrouillee-erreur-409__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-09_composition-verrouillee-erreur-409__phone_light.webp?raw=true' width='230' alt='H-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-09_composition-verrouillee-erreur-409__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-09_composition-verrouillee-erreur-409__phone_dark.webp?raw=true' width='230' alt='H-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-09_composition-verrouillee-erreur-409__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-09_composition-verrouillee-erreur-409__tablet_light.webp?raw=true' width='330' alt='H-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-09_composition-verrouillee-erreur-409__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-09_composition-verrouillee-erreur-409__tablet_dark.webp?raw=true' width='330' alt='H-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Composition verrouillée » · « Match en cours · points en direct » · « En direct » · « ter Stegen » · « Koundé » · « Cubarsí » · « Araújo » · « Balde » · « De Jong » · « Pedri » · « Gavi » · « Yamal » · « Lewandowski » · « Raphinha » · « 11/11 » · « Équipe complète » · « Formation » · « 4-3-3 » · « · Capitaine » · « Voir le détail »

**Composants repérés** : `avatar`, `btn`, `card`, `toast`

</details>

**Issues liées sur ce même écran :** [API-FANT-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-01%5D%22) · [API-FANT-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-05%5D%22) · [API-FANT-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-06%5D%22) · [API-FANT-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-07%5D%22) · [API-FANT-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-11%5D%22) · [API-FANT-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-13%5D%22) · [API-FANT-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-21%5D%22) · [API-FANT-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-24%5D%22) · [MOB-H-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-06%5D%22) · [MOB-H-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-08%5D%22) · [MOB-H-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-19%5D%22) · [MOB-H-35](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-35%5D%22)

#### `H-12` — Classement entre amis
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-12_classement-entre-amis__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-12_classement-entre-amis__phone_light.webp?raw=true' width='230' alt='H-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-12_classement-entre-amis__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-12_classement-entre-amis__phone_dark.webp?raw=true' width='230' alt='H-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-12_classement-entre-amis__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-12_classement-entre-amis__tablet_light.webp?raw=true' width='330' alt='H-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-12_classement-entre-amis__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-12_classement-entre-amis__tablet_dark.webp?raw=true' width='330' alt='H-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Aïcha Ngono » · « 812 pts · J11 : +78 » · « Mamadou Diallo » · « 790 pts · J11 : +64 » · « Boris T. » · « Toi » · « 774 pts · J11 : +70 » · « Lucía Fernández » · « 751 pts · J11 : +55 » · « Kevin Mballa » · « 702 pts · J11 : +61 » · « Inviter des amis » · « Créer une ligue »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-FANT-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-14%5D%22) · [API-FANT-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-15%5D%22) · [API-FANT-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-16%5D%22) · [API-FANT-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-17%5D%22) · [API-FANT-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-18%5D%22) · [API-FANT-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-22%5D%22) · [API-FANT-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-24%5D%22) · [API-FANT-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-33%5D%22) · [MOB-H-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-01%5D%22) · [MOB-H-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-03%5D%22) · [MOB-H-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-04%5D%22) · [MOB-H-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-07%5D%22) · [MOB-H-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-22%5D%22) · [MOB-H-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-25%5D%22) · [MOB-H-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-32%5D%22) · [MOB-H-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-34%5D%22)

## 📐 Règles de gestion

- Toutes les routes sont authentifiées (CDC Backend §3.13 : Fantasy & La Masia = authentifiée) ; l'intercepteur d'auth existant injecte le Bearer et gère le refresh sur 401.
- 409 Conflict = composition déjà verrouillée (CDC Backend §6) -> FantasyLockedFailure ; 422/400 = équipe invalide (InvalidFantasyTeamError) -> FantasyInvalidTeamFailure avec details ; 403 = module indisponible ; 5xx/timeout -> NetworkFailure.
- Format d'erreur standard {success:false,error:{code,message,details,traceId}} : le traceId est conservé dans la Failure pour Sentry.
- Timeout 10 s sur les lectures, 15 s sur PUT /fantasy/team ; aucune relance automatique d'un PUT (idempotence gérée dans l'issue brouillon).

## 🔄 Comportement et états

- Succès -> Right(entité) ; échec -> Left(Failure) ; jamais d'exception qui remonte à la couche présentation.
- Un 404 sur GET /fantasy/team signifie 'pas encore d'équipe' et est converti en Right(null), pas en erreur (alimente H-16).

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `GET` | `/api/v1/fantasy/team` | Équipe de l'utilisateur pour une journée | ?gameweek=11 | {success:true,data:{id,gameweek:11,formation:'4-3-3',selections:[{playerId,roleSlot:'GB'}],captainId,status:'open',locksAt}} |
| `PUT` | `/api/v1/fantasy/team` | Création ou mise à jour du XI avant fermeture | {gameweek:11,formation:'4-3-3',playerIds:[11 uuid],captainId} | {success:true,data:FantasyTeam} \| 409 composition verrouillée \| 422 équipe invalide |
| `GET` | `/api/v1/fantasy/leaderboard` | Classement amis / mondial | ?scope=friends\|world\|gameweek&gameweek=11&leagueCode=&cursor= | {success:true,data:{items:[{rank,userId,displayName,points,gameweekDelta}],me:{rank,points},nextCursor}} |

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/data/datasources/fantasy_api.dart (@ChopperApi) : getTeam(gameweek), putTeam(body), getLeaderboard(scope, gameweek, leagueCode, cursor).
- [ ] Créer lib/features/fantasy/data/datasources/fantasy_remote_datasource.dart qui enveloppe FantasyApi et parse la réponse {success,data}.
- [ ] Créer lib/features/fantasy/data/mappers/fantasy_failure_mapper.dart (statut + error.code -> Failure).
- [ ] Déclarer FantasyLockedFailure, FantasyInvalidTeamFailure, FantasyDisabledFailure dans core/error.
- [ ] Enregistrer le service dans di/register_module.dart (@lazySingleton).
- [ ] Propager le traceId (header X-Request-Id) et le journaliser via core/services.
- [ ] Tests avec MockClient Chopper pour 200, 404, 409, 422, 500, timeout.

## ✔️ Critères d'acceptation

- [ ] Étant donné un PUT renvoyant 409 quand le datasource répond alors un FantasyLockedFailure est retourné.
- [ ] Étant donné un GET /fantasy/team 404 quand le repository lit alors Right(null) est retourné.
- [ ] Étant donné un 422 avec details quand le mapper s'exécute alors les messages de champs sont accessibles.
- [ ] Étant donné un 401 quand l'intercepteur rafraîchit le token alors la requête est rejouée une seule fois.

## 🧪 Tests à écrire

- [ ] mapper 409 -> FantasyLockedFailure
- [ ] mapper 422 -> FantasyInvalidTeamFailure avec details
- [ ] getTeam 404 -> Right(null)
- [ ] timeout -> NetworkFailure
- [ ] traceId conservé dans la Failure
- [ ] PUT n'est pas relancé automatiquement

## 🔗 Dépendances

À réaliser après : `MOB-H-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §3.5
- CDC Backend §6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
