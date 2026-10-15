> **MOB-K-02** · API · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Les écrans de groupe consomment GET /community/groups/:id, la recherche par pays/ville, POST /community/groups/:id/join et la sortie du groupe.

## ✅ Objectif

Exposer un GroupRepository avec use cases GetGroup, SearchGroups, JoinGroup, LeaveGroup.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `K-01` — Fiche groupe — non membre
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-01_fiche-groupe-non-membre__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-01_fiche-groupe-non-membre__phone_light.webp?raw=true' width='230' alt='K-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-01_fiche-groupe-non-membre__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-01_fiche-groupe-non-membre__phone_dark.webp?raw=true' width='230' alt='K-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-01_fiche-groupe-non-membre__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-01_fiche-groupe-non-membre__tablet_light.webp?raw=true' width='330' alt='K-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-01_fiche-groupe-non-membre__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-01_fiche-groupe-non-membre__tablet_dark.webp?raw=true' width='330' alt='K-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Groupe » · « Culés Cameroun » · « Yaoundé » · « 721 membres » · « Public » · « Le point de rendez-vous des supporters du Barça au Cameroun. Watch parties, discussions et bon esprit ! » · « Rejoindre le groupe » · « Fil » · « Événements » · « Membres » · « Rejoins le groupe pour participer » · « Tu pourras lire le fil et publier après avoir rejoint. » · « Prochain événement » · « oct. » · « Watch party · Clásico » · « Le Relais, Yaoundé » · « 37 y vont »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-COMM-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-15%5D%22) · [API-COMM-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-19%5D%22) · [API-COMM-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-20%5D%22) · [API-COMM-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-24%5D%22) · [API-COMM-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-31%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [API-COMM-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-33%5D%22) · [MOB-K-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-01%5D%22) · [MOB-K-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-06%5D%22) · [MOB-K-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-08%5D%22) · [MOB-K-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-28%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

#### `K-12` — Paramètres du groupe — quitter
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-12_parametres-du-groupe-quitter__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-12_parametres-du-groupe-quitter__phone_light.webp?raw=true' width='230' alt='K-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-12_parametres-du-groupe-quitter__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-12_parametres-du-groupe-quitter__phone_dark.webp?raw=true' width='230' alt='K-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-12_parametres-du-groupe-quitter__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-12_parametres-du-groupe-quitter__tablet_light.webp?raw=true' width='330' alt='K-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-12_parametres-du-groupe-quitter__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-12_parametres-du-groupe-quitter__tablet_dark.webp?raw=true' width='330' alt='K-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Groupe » · « Culés Cameroun » · « Yaoundé » · « 721 membres » · « Public » · « Le point de rendez-vous des supporters du Barça au Cameroun. Watch parties, discussions et bon esprit ! » · « Membre » · « Fil » · « Événements » · « Membres » · « Mamadou Diallo » · « Modérateur » · « il y a 12 min » · « Qui est chaud pour le Clásico samedi ? On se retrouve au Relais à 19h30 ! 🔵🔴 » · « Aïcha Ngono » · « il y a 1 h » · « Quelqu’un a vu la compo probable ? Yamal titulaire sans doute. » · « Kevin Mballa » · « il y a 3 h » · « Photo du dernier visionnage au Bastos, quelle ambiance ! » · « Écrire dans le groupe… » · « Quitter le groupe ? » · « Tu ne recevras plus les notifications de « Culés Cameroun ». Tu pourras le rejoindre à nouveau. » · « Quitter le groupe » · « Rester »

**Composants repérés** : `avatar`, `btn`, `card`, `modal`

</details>

**Issues liées sur ce même écran :** [API-COMM-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-20%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-K-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-06%5D%22) · [MOB-K-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-21%5D%22) · [MOB-K-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-29%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

#### `K-13` — Bienvenue dans le groupe
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-13_bienvenue-dans-le-groupe__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-13_bienvenue-dans-le-groupe__phone_light.webp?raw=true' width='230' alt='K-13 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-13_bienvenue-dans-le-groupe__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-13_bienvenue-dans-le-groupe__phone_dark.webp?raw=true' width='230' alt='K-13 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-13_bienvenue-dans-le-groupe__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-13_bienvenue-dans-le-groupe__tablet_light.webp?raw=true' width='330' alt='K-13 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-13_bienvenue-dans-le-groupe__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-13_bienvenue-dans-le-groupe__tablet_dark.webp?raw=true' width='330' alt='K-13 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Groupe » · « Culés Cameroun » · « Yaoundé » · « 721 membres » · « Public » · « Le point de rendez-vous des supporters du Barça au Cameroun. Watch parties, discussions et bon esprit ! » · « Membre » · « Fil » · « Événements » · « Membres » · « Mamadou Diallo » · « Modérateur » · « il y a 12 min » · « Qui est chaud pour le Clásico samedi ? On se retrouve au Relais à 19h30 ! 🔵🔴 » · « Aïcha Ngono » · « il y a 1 h » · « Quelqu’un a vu la compo probable ? Yamal titulaire sans doute. » · « Kevin Mballa » · « il y a 3 h » · « Photo du dernier visionnage au Bastos, quelle ambiance ! » · « Écrire dans le groupe… » · « Bienvenue dans Culés Cameroun ! »

**Composants repérés** : `avatar`, `btn`, `card`, `toast`

</details>

**Issues liées sur ce même écran :** [API-COMM-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-19%5D%22) · [API-COMM-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-20%5D%22) · [API-COMM-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-28%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-K-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-06%5D%22) · [MOB-K-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-22%5D%22) · [MOB-K-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-29%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

#### `K-16` — Aucun groupe — recherche vide
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-16_aucun-groupe-recherche-vide__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-16_aucun-groupe-recherche-vide__phone_light.webp?raw=true' width='230' alt='K-16 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-16_aucun-groupe-recherche-vide__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-16_aucun-groupe-recherche-vide__phone_dark.webp?raw=true' width='230' alt='K-16 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-16_aucun-groupe-recherche-vide__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-16_aucun-groupe-recherche-vide__tablet_light.webp?raw=true' width='330' alt='K-16 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-16_aucun-groupe-recherche-vide__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-16_aucun-groupe-recherche-vide__tablet_dark.webp?raw=true' width='330' alt='K-16 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Groupes » · « Aucun groupe local ici » · « Il n’y a pas encore de groupe à Bafoussam. Pourquoi ne pas en créer un ? » · « Créer un groupe » · « Élargir la recherche »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-COMM-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-13%5D%22) · [API-COMM-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-14%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-K-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-26%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

## 📐 Règles de gestion

- Rejoindre est idempotent côté UX : un 409 « déjà membre » est traité comme un succès.
- Quitter le groupe : DELETE /community/groups/:id/membership (chemin à confirmer avec l'API ; le CDC ne liste que join).
- Un groupe archived ou pending n'est jamais joignable : 404/422 -> GroupUnavailableFailure.
- Pagination de la recherche : page/limit (20), tri membres décroissants.
- Les erreurs suivent le format {success:false,error:{code,message,details,traceId}} mappé vers Failure.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `GET` | `/api/v1/community/groups/:id` | Détail d'un groupe (description, membres, événements) | — | {success:true,data:{id,name:'Culés Cameroun',city:'Yaoundé',membersCount:721,myRole:'none',description,nextEvent}} |
| `POST` | `/api/v1/community/groups/:id/join` | Rejoindre un groupe | — | {success:true,data:{groupId,role:'member',joinedAt}} |
| `GET` | `/api/v1/community/groups/search` | Recherche par pays/ville | country, city, q, page, limit | {items:[…],total,page,totalPages,hasMore} |

## 🛠️ Tâches

- [ ] Créer data/datasources/group_remote_datasource.dart (@ChopperApi(baseUrl: '/community/groups')) : @Get('/search'), @Get('/{id}'), @Post('/{id}/join'), @Delete('/{id}/membership').
- [ ] Créer domain/repositories/group_repository.dart et data/repositories/group_repository_impl.dart.
- [ ] Créer use cases get_group.dart, search_groups.dart, join_group.dart, leave_group.dart.
- [ ] Créer GroupFailure (GroupUnavailable, AlreadyMember, NotMember, Forbidden, Suspended).
- [ ] Gérer le 409 comme succès dans join_group.
- [ ] Mettre à jour le cache mémoire GroupMembershipCache après join/leave.
- [ ] Écrire les mocks mocktail et fixtures.
- [ ] Tests repository.

## ✔️ Critères d'acceptation

- [ ] Étant donné un groupe actif, quand JoinGroup est appelé, alors Right(unit) et membersCount +1 localement.
- [ ] Étant donné un 409, quand JoinGroup est appelé, alors Right(unit).
- [ ] Étant donné un groupe en attente, quand JoinGroup est appelé, alors Left(GroupUnavailableFailure).
- [ ] Étant donné un utilisateur suspendu (403 code USER_SUSPENDED), quand il rejoint, alors Left(SuspendedFailure).
- [ ] Étant donné LeaveGroup, quand il réussit, alors myRole repasse à none.

## 🧪 Tests à écrire

- [ ] group_repository_impl_test : join/leave/409/403.
- [ ] search_groups_test : pagination.
- [ ] get_group_test.
- [ ] group_membership_cache_test.

## 🔗 Dépendances

À réaliser après : `MOB-K-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §3.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
