> **MOB-K-24** · API · Priorité **P1** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

La création est soumise à validation (status pending, puis active ou rejet). Le mobile doit créer, relire, modifier et annuler sa demande.

## ✅ Objectif

Exposer CreateGroup, GetMyPendingGroup, UpdateGroupRequest, CancelGroupRequest.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `K-14` — Créer un groupe — demande
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-14_creer-un-groupe-demande__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-14_creer-un-groupe-demande__phone_light.webp?raw=true' width='230' alt='K-14 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-14_creer-un-groupe-demande__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-14_creer-un-groupe-demande__phone_dark.webp?raw=true' width='230' alt='K-14 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-14_creer-un-groupe-demande__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-14_creer-un-groupe-demande__tablet_light.webp?raw=true' width='330' alt='K-14 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-14_creer-un-groupe-demande__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-14_creer-un-groupe-demande__tablet_dark.webp?raw=true' width='330' alt='K-14 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Créer un groupe » · « Choisir une image » · « Nom du groupe » · « Culés Bafoussam » · « Ville » · « Bafoussam » · « Description » · « Le groupe des supporters du Barça dans l'Ouest du Cameroun. » · « Un groupe local est validé par un modérateur lorsqu'il compte peu de membres. Délai moyen : 24 h. » · « Envoyer pour validation »

**Composants repérés** : `btn`, `card`, `input`

</details>

**Issues liées sur ce même écran :** [API-COMM-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-15%5D%22) · [API-COMM-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-16%5D%22) · [API-COMM-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-17%5D%22) · [API-COMM-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-18%5D%22) · [API-COMM-27](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-27%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [API-COMM-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-33%5D%22) · [MOB-K-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-23%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

#### `K-15` — Groupe en attente de validation
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-15_groupe-en-attente-de-validation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-15_groupe-en-attente-de-validation__phone_light.webp?raw=true' width='230' alt='K-15 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-15_groupe-en-attente-de-validation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-15_groupe-en-attente-de-validation__phone_dark.webp?raw=true' width='230' alt='K-15 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-15_groupe-en-attente-de-validation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-15_groupe-en-attente-de-validation__tablet_light.webp?raw=true' width='330' alt='K-15 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-15_groupe-en-attente-de-validation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-15_groupe-en-attente-de-validation__tablet_dark.webp?raw=true' width='330' alt='K-15 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Culés Bafoussam » · « Demande en cours d’examen » · « Ton groupe sera visible sur la carte dès sa validation par un modérateur. Tu seras notifié(e). » · « Modifier ma demande » · « Annuler la demande »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-COMM-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-15%5D%22) · [API-COMM-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-16%5D%22) · [API-COMM-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-17%5D%22) · [API-COMM-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-28%5D%22) · [MOB-K-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-25%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

## 📐 Règles de gestion

- Cycle de vie : pending -> active (validé) | archived/rejeté ; le client n'affiche que les demandes de l'utilisateur.
- Modification possible uniquement tant que status=pending ; annulation = suppression logique.
- Routes à confirmer côté API (le CDC n'en liste pas) : POST /community/groups, GET /community/groups/mine?status=pending, PATCH/DELETE /community/groups/:id.
- Le résultat de la validation arrive par notification (catégorie communauté) puis rafraîchit l'état local.
- Upload de l'image du groupe via l'endpoint d'upload du dépôt API (clé imageKey).

## 🛠️ Tâches

- [ ] Étendre group_remote_datasource.dart avec @Post(''), @Get('/mine'), @Patch('/{id}'), @Delete('/{id}').
- [ ] Créer use cases create_group.dart, get_my_pending_group.dart, update_group_request.dart, cancel_group_request.dart.
- [ ] Créer CreateGroupRequestModel et UpdateGroupRequestModel.
- [ ] Créer GroupRequestFailure (Duplicate, NotPending, Limit).
- [ ] Gérer l'upload d'image (multipart ou URL présignée).
- [ ] Mettre à jour le cache local de la demande.
- [ ] Fixtures et tests.
- [ ] Documenter l'écart avec l'API.

## ✔️ Critères d'acceptation

- [ ] Étant donné une demande valide, quand CreateGroup est appelé, alors Right(LocalGroup(status: pending)).
- [ ] Étant donné une demande active, quand UpdateGroupRequest est appelé, alors Left(NotPendingFailure).
- [ ] Étant donné CancelGroupRequest, quand il réussit, alors GetMyPendingGroup renvoie null.
- [ ] Étant donné un doublon, quand la création échoue, alors Left(DuplicateFailure).

## 🧪 Tests à écrire

- [ ] create_group_test.
- [ ] update_group_request_test.
- [ ] cancel_group_request_test.
- [ ] group_request_failure_mapping_test.

## 🔗 Dépendances

À réaliser après : `MOB-K-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.16.2 (RG-MAP-04, RG-MAP-05)
- CDC Backend §3.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
