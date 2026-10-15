> **MOB-M-02** · API · Priorité **P0** · Taille **L** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Les écrans du module consomment quatre ressources de l'API (`POST /wallpapers`, `GET /wallpapers/:id`, `GET /wallpapers`, quota). Cette issue construit la chaîne data complète en suivant la feature de référence `players` (datasource -> repository -> use cases, `Either<Failure,T>`).

## ✅ Objectif

Exposer au BLoC des use cases typés qui masquent Chopper et traduisent les erreurs HTTP en `Failure` métier (refus de modération, quota, module désactivé, réseau).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `M-01` — Générateur — formulaire guidé
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__phone_light.webp?raw=true' width='230' alt='M-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__phone_dark.webp?raw=true' width='230' alt='M-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__tablet_light.webp?raw=true' width='330' alt='M-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__tablet_dark.webp?raw=true' width='330' alt='M-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Wallpapers IA » · « 1/3 » · « 3 générations gratuites par jour · » · « 2 restantes » · « 1. Joueur ou thème » · « Yamal » · « Pedri » · « Raphinha » · « Lewandowski » · « Autre » · « 2. Style visuel » · « Illustration » · « Néon » · « Aquarelle » · « Rétro » · « Minimal » · « 3. Occasion » · « Jour de match » · « Anniversaire » · « Trophée » · « Libre » · « Précision (optionnel) » · « 39 / 140 » · « Célébration de but sous les projecteurs, ambiance nocturne » · « Générer mon wallpaper »

**Composants repérés** : `btn`, `card`, `chip`

</details>

**Issues liées sur ce même écran :** [MOB-M-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-04%5D%22) · [MOB-M-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-05%5D%22) · [MOB-M-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-06%5D%22) · [MOB-M-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-22%5D%22) · [MOB-M-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-26%5D%22) · [MOB-M-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-29%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

#### `M-04` — Génération en cours
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-04_generation-en-cours__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-04_generation-en-cours__phone_light.webp?raw=true' width='230' alt='M-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-04_generation-en-cours__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-04_generation-en-cours__phone_dark.webp?raw=true' width='230' alt='M-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-04_generation-en-cours__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-04_generation-en-cours__tablet_light.webp?raw=true' width='330' alt='M-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-04_generation-en-cours__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-04_generation-en-cours__tablet_dark.webp?raw=true' width='330' alt='M-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Génération » · « Més que » · « un club » · « Création… » · « On dessine ton wallpaper » · « Environ 15 secondes. Tu peux quitter l'écran : on te prévient quand c'est prêt. » · « En file d'attente » · « 64 % » · « Prévenez-moi quand c’est prêt »

**Composants repérés** : `btn`, `spinner`

</details>

**Issues liées sur ce même écran :** [MOB-M-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-01%5D%22) · [MOB-M-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-09%5D%22) · [MOB-M-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-10%5D%22) · [MOB-M-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-11%5D%22) · [MOB-M-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-29%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

#### `M-08` — Ma galerie
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-08_ma-galerie__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-08_ma-galerie__phone_light.webp?raw=true' width='230' alt='M-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-08_ma-galerie__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-08_ma-galerie__phone_dark.webp?raw=true' width='230' alt='M-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-08_ma-galerie__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-08_ma-galerie__tablet_light.webp?raw=true' width='330' alt='M-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-08_ma-galerie__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-08_ma-galerie__tablet_dark.webp?raw=true' width='330' alt='M-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ma galerie » · « 12 wallpapers » · « Tous » · « Favoris » · « Més que » · « un club » · « Yamal » · « Visca » · « Barça » · « Camp » · « Nou » · « Aquí » · « mana » · « Força » · « Nouveau wallpaper »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [MOB-M-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-01%5D%22) · [MOB-M-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-03%5D%22) · [MOB-M-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-17%5D%22) · [MOB-M-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-18%5D%22) · [MOB-M-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-26%5D%22) · [MOB-M-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-27%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

#### `M-12` — Quota quotidien atteint
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__phone_light.webp?raw=true' width='230' alt='M-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__phone_dark.webp?raw=true' width='230' alt='M-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__tablet_light.webp?raw=true' width='330' alt='M-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__tablet_dark.webp?raw=true' width='330' alt='M-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Wallpapers IA » · « Quota atteint pour aujourd’hui » · « Tu as utilisé tes 3 générations du jour. Elles se renouvellent dans : » · « 11:24:08 » · « Voir ma galerie »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [MOB-M-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-09%5D%22) · [MOB-M-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-22%5D%22) · [MOB-M-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-23%5D%22) · [MOB-M-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-29%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

## 📐 Règles de gestion

- Mapping d'erreurs : 422 `PROMPT_REJECTED` -> `PromptRejectedFailure(reason)` ; 429 `QUOTA_EXCEEDED` -> `QuotaExceededFailure(resetsAt)` ; 503 `MODULE_DISABLED` -> `ModuleDisabledFailure` ; 401 géré par l'intercepteur de refresh ; erreurs réseau -> `NetworkFailure`
- Le format d'erreur de l'API est `{success:false,error:{code,message,details,traceId}}` : le `traceId` est conservé dans la Failure pour le support
- POST /wallpapers envoie un en-tête `Idempotency-Key` (uuid v4 généré par demande) pour qu'un retry réseau ne décompte pas deux fois le quota
- Timeouts : 10 s pour POST (la modération est synchrone, la génération asynchrone), 8 s pour GET statut
- Pagination curseur : `nextCursor`, 20 éléments par page

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `POST` | `/api/v1/wallpapers` | Demande de génération (prompt guidé) : modère le prompt, décompte le quota, enfile le job BullMQ `generate-wallpaper` | {"playerId":"<id>\|null","theme":"string\|null","style":"illustration\|neon\|watercolor\|retro\|minimal","occasion":"matchday\|birthday\|trophy\|free","details":"string<=140"} | 202 {"success":true,"data":{"id":"...","status":"PENDING","quota":{"limit":3,"used":1,"remaining":2,"resetsAt":"ISO"}}} |
| `GET` | `/api/v1/wallpapers/:id` | Statut et résultat d'une génération | - | {"success":true,"data":{"id":"...","status":"PENDING\|GENERATING\|READY\|REJECTED","progress":64,"imageUrl":"https://...\|null","thumbUrl":"...","moderationStatus":"ok\|rejected","createdAt":"ISO"}} |
| `GET` | `/api/v1/wallpapers` | Galerie personnelle paginée (plus récent d'abord) | ?filter=all\|favorites&cursor=&limit=20 | {"success":true,"data":{"items":[...],"total":12,"hasMore":false,"nextCursor":null}} |
| `PATCH` | `/api/v1/wallpapers/:id` | Marque/démarque un favori (complément requis par l'onglet « Favoris » de M-08) | {"isFavorite":true} | {"success":true,"data":{"id":"...","isFavorite":true}} |
| `GET` | `/api/v1/wallpapers/quota` | Quota quotidien restant (ne décompte rien) | - | {"success":true,"data":{"limit":3,"used":1,"remaining":2,"resetsAt":"ISO"}} |
| `POST` | `/api/v1/wallpapers/check` | Pré-vérification de modération du prompt sans décompter le quota ni lancer de job (étape 2/3) | même corps que POST /wallpapers | 200 {"data":{"ok":true,"normalizedPrompt":"..."}} \| 422 PROMPT_REJECTED |

## 🛠️ Tâches

- [ ] Créer `data/datasources/wallpapers_remote_datasource.dart` (`@ChopperApi(baseUrl:'/wallpapers')`) avec createWallpaper, getWallpaper, listWallpapers, setFavorite, getQuota, checkPrompt
- [ ] Générer `wallpapers_remote_datasource.chopper.dart`
- [ ] Créer `domain/repositories/wallpapers_repository.dart` (interface) et `data/repositories/wallpapers_repository_impl.dart` (`@LazySingleton(as: WallpapersRepository)`)
- [ ] Créer un `WallpaperFailureMapper` convertissant `Response.error` en Failures typées
- [ ] Créer les use cases : `CheckWallpaperPromptUseCase`, `RequestWallpaperUseCase`, `GetWallpaperStatusUseCase`, `ListWallpapersUseCase`, `ToggleWallpaperFavoriteUseCase`, `GetWallpaperQuotaUseCase`
- [ ] Enregistrer le service Chopper dans `di/register_module.dart` et régénérer `injection.config.dart`
- [ ] Gérer l'en-tête `Idempotency-Key` via un paramètre `@Header`
- [ ] Tests avec `MockClient`/mocktail du service Chopper

## ✔️ Critères d'acceptation

- [ ] Étant donné une réponse 422 PROMPT_REJECTED quand RequestWallpaperUseCase est appelé alors `Left(PromptRejectedFailure)` contient la raison renvoyée
- [ ] Étant donné une réponse 429 quand getQuota/request est appelé alors `Left(QuotaExceededFailure)` porte `resetsAt`
- [ ] Étant donné une réponse 503 MODULE_DISABLED alors `Left(ModuleDisabledFailure)` est retourné
- [ ] Étant donné un timeout alors `Left(NetworkFailure)` est retourné et aucune exception ne remonte

## 🧪 Tests à écrire

- [ ] wallpapers_repository_impl_test : succès 202
- [ ] wallpapers_repository_impl_test : 422 -> PromptRejectedFailure
- [ ] wallpapers_repository_impl_test : 429 -> QuotaExceededFailure
- [ ] wallpapers_repository_impl_test : 503 -> ModuleDisabledFailure
- [ ] failure_mapper_test : traceId conservé
- [ ] wallpapers_repository_impl_test : Idempotency-Key présent sur POST

## 🔗 Dépendances

À réaliser après : `MOB-M-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §3.9, §10.2, §11.6
- CDC Flutter §7.9

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
