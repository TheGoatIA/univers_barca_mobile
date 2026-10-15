> **MOB-P-02** · API · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Le profil se lit et se met à jour via les endpoints utilisateurs existants (GET/PATCH /users/me) ; la progression et les badges nécessitent des endpoints de lecture non détaillés dans le CDC (contrat proposé).

## ✅ Objectif

Fournir datasource, repository et cache avec la règle cache-then-network.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `P-01` — Passport — vue d’ensemble
_Module : Culé Passport_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-01_passport-vue-d-ensemble__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-01_passport-vue-d-ensemble__phone_light.webp?raw=true' width='230' alt='P-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-01_passport-vue-d-ensemble__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-01_passport-vue-d-ensemble__phone_dark.webp?raw=true' width='230' alt='P-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-01_passport-vue-d-ensemble__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-01_passport-vue-d-ensemble__tablet_light.webp?raw=true' width='330' alt='P-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-01_passport-vue-d-ensemble__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-01_passport-vue-d-ensemble__tablet_dark.webp?raw=true' width='330' alt='P-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Culé Passport » · « Boris_Culé » · « 🇨🇲 Yaoundé · Culé depuis 2018 » · « Niveau Culé » · « 12 j » · « 2 340 » · « Points » · « Série » · « Badges » · « 18 432e » · « Prochains badges » · « Voir tout » · « Série de 100 jours » · « 12 / 100 » · « Quiz parfait » · « 8 / 10 » · « Mes derniers badges » · « 9 / 24 » · « Premier match suivi » · « Série de 10 jours » · « GOAT voter » · « Statistiques détaillées » · « Quiz, Guess the Player, Fantasy » · « Ma série » · « Calendrier d’activité » · « Paramètres » · « Langue, thème, confidentialité »

**Composants repérés** : `avatar`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-P-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-01%5D%22) · [MOB-P-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-03%5D%22) · [MOB-P-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-04%5D%22) · [MOB-P-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-05%5D%22) · [MOB-P-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-06%5D%22) · [MOB-P-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-18%5D%22) · [MOB-P-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-20%5D%22) · [MOB-P-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-21%5D%22)

#### `P-03` — Grille de badges
_Module : Culé Passport_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-03_grille-de-badges__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-03_grille-de-badges__phone_light.webp?raw=true' width='230' alt='P-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-03_grille-de-badges__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-03_grille-de-badges__phone_dark.webp?raw=true' width='230' alt='P-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-03_grille-de-badges__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-03_grille-de-badges__tablet_light.webp?raw=true' width='330' alt='P-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-03_grille-de-badges__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-03_grille-de-badges__tablet_dark.webp?raw=true' width='330' alt='P-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Badges » · « 9 débloqués sur 24 » · « Tous » · « Débloqués » · « À débloquer » · « Premier match suivi » · « Série de 10 jours » · « Série de 100 jours » · « GOAT voter » · « Niveau La Masia » · « Pile à l’heure » · « Membre d’un groupe » · « Fantasy top 10 % » · « Artiste IA » · « Quiz parfait » · « Agenda synchronisé » · « Polyglotte »

**Composants repérés** : `chip`

</details>

**Issues liées sur ce même écran :** [MOB-P-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-01%5D%22) · [MOB-P-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-03%5D%22) · [MOB-P-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-04%5D%22) · [MOB-P-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-08%5D%22) · [MOB-P-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-09%5D%22) · [MOB-P-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-20%5D%22) · [MOB-P-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-21%5D%22)

#### `P-07` — Modifier le profil
_Module : Culé Passport_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-07_modifier-le-profil__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-07_modifier-le-profil__phone_light.webp?raw=true' width='230' alt='P-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-07_modifier-le-profil__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-07_modifier-le-profil__phone_dark.webp?raw=true' width='230' alt='P-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-07_modifier-le-profil__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-07_modifier-le-profil__tablet_light.webp?raw=true' width='330' alt='P-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-07_modifier-le-profil__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-07_modifier-le-profil__tablet_dark.webp?raw=true' width='330' alt='P-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Modifier le profil » · « Enregistrer » · « Changer l’avatar » · « Pseudo » · « Boris_Culé » · « 3 à 20 caractères · visible par les autres culés » · « Pays » · « Cameroun » · « Ville » · « Yaoundé » · « Joueur préféré » · « Lamine Yamal » · « Supporter depuis »

**Composants repérés** : `avatar`, `btn`, `input`

</details>

**Issues liées sur ce même écran :** [MOB-P-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-03%5D%22) · [MOB-P-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-04%5D%22) · [MOB-P-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-13%5D%22) · [MOB-P-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-19%5D%22) · [MOB-P-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-21%5D%22)

#### `P-11` — Profil d’un autre culé
_Module : Culé Passport_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-11_profil-d-un-autre-cule__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-11_profil-d-un-autre-cule__phone_light.webp?raw=true' width='230' alt='P-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-11_profil-d-un-autre-cule__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-11_profil-d-un-autre-cule__phone_dark.webp?raw=true' width='230' alt='P-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-11_profil-d-un-autre-cule__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-11_profil-d-un-autre-cule__tablet_light.webp?raw=true' width='330' alt='P-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-11_profil-d-un-autre-cule__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-11_profil-d-un-autre-cule__tablet_dark.webp?raw=true' width='330' alt='P-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Profil » · « Aïcha_N » · « 🇨🇲 Yaoundé · Culé depuis 2015 » · « 1 420 » · « Points » · « Série max » · « Badges » · « Défier au quiz » · « Signaler » · « Seules la ville et les statistiques publiques sont visibles. Aucune position exacte. »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-P-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-01%5D%22) · [MOB-P-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-17%5D%22) · [MOB-P-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-19%5D%22)

## 📐 Règles de gestion

- GET/PATCH /users/me existent déjà (displayName 3 à 20, countryCode, city, avatarKey, favoritePlayerId, supporterSince).
- Lecture de progression/badges : endpoints à confirmer côté API (proposés ci-dessous).
- Cache Drift passport_cache, péremption 5 min ; purge à la déconnexion ; progression = source de vérité serveur (CDC Flutter §291).
- Mappage d'erreurs : 422 pseudo invalide (code de charte), 409 pseudo déjà pris, 404 profil introuvable.

## 🔄 Comportement et états

- Hors-ligne : dernier état affiché avec indicateur.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `GET` | `/api/v1/users/me` | Profil connecté | — | {success:true,data:{displayName,countryCode,city,avatarKey,favoritePlayerId,supporterSince}} |
| `PATCH` | `/api/v1/users/me` | Met à jour le profil | {displayName,countryCode,city,favoritePlayerId,supporterSince,avatarKey} | {success:true,data:User} \| 422 \| 409 |
| `GET` | `/api/v1/users/me/progress` | Progression et badges (proposé) | — | {success:true,data:{totalPoints,currentStreak,bestStreak,quizLevel,badges:[{badgeCode,unlockedAt}],fantasyRank}} |
| `GET` | `/api/v1/badges` | Catalogue (proposé) | ?lang=fr | {success:true,data:[{code,label,description,icon,threshold}]} |
| `GET` | `/api/v1/users/:id/public` | Profil public (proposé) | — | {success:true,data:{displayName,city,countryCode,supporterSince,points,bestStreak,badgeCount}} |

## 🛠️ Tâches

- [ ] Créer lib/features/profile_passport/data/datasources/passport_api.dart (@ChopperApi).
- [ ] Créer passport_remote_datasource.dart et passport_local_datasource.dart.
- [ ] Créer lib/features/profile_passport/domain/repositories/passport_repository.dart + implémentation.
- [ ] Failures : NicknameForbiddenFailure, NicknameTakenFailure.
- [ ] Migration Drift.
- [ ] Enregistrement DI.
- [ ] Tests MockClient.

## ✔️ Critères d'acceptation

- [ ] Étant donné un 422 charte alors NicknameForbiddenFailure.
- [ ] Étant donné un 409 alors NicknameTakenFailure.
- [ ] Étant donné un cache valide alors affichage immédiat.
- [ ] Étant donné une déconnexion alors purge.

## 🧪 Tests à écrire

- [ ] 422 charte
- [ ] 409 pseudo pris
- [ ] cache servi
- [ ] purge
- [ ] PATCH met à jour le cache

## 🔗 Dépendances

À réaliser après : `MOB-P-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.12
- CDC Backend §3.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
