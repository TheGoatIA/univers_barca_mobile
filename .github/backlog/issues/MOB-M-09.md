> **MOB-M-09** · Fonctionnel · Priorité **P0** · Taille **L** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

La génération prend jusqu'à 15 s (CDC Backend §3.9) et l'écran M-04 précise « Tu peux quitter l'écran : on te prévient quand c'est prêt ». Le BLoC doit suivre le statut même si l'écran est fermé et reprendre au retour au premier plan (CDC Flutter §6.3).

## ✅ Objectif

Suivre une génération de l'état PENDING jusqu'à READY/REJECTED/échec avec polling robuste, reprise et annulation propre.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `M-04` — Génération en cours
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-04_generation-en-cours__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-04_generation-en-cours__phone_light.webp?raw=true' width='230' alt='M-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-04_generation-en-cours__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-04_generation-en-cours__phone_dark.webp?raw=true' width='230' alt='M-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-04_generation-en-cours__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-04_generation-en-cours__tablet_light.webp?raw=true' width='330' alt='M-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-04_generation-en-cours__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-04_generation-en-cours__tablet_dark.webp?raw=true' width='330' alt='M-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Génération » · « Més que » · « un club » · « Création… » · « On dessine ton wallpaper » · « Environ 15 secondes. Tu peux quitter l'écran : on te prévient quand c'est prêt. » · « En file d'attente » · « 64 % » · « Prévenez-moi quand c’est prêt »

**Composants repérés** : `btn`, `spinner`

</details>

**Issues liées sur ce même écran :** [API-WALL-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-01%5D%22) · [API-WALL-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-09%5D%22) · [API-WALL-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-10%5D%22) · [API-WALL-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-11%5D%22) · [API-WALL-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-16%5D%22) · [API-WALL-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-21%5D%22) · [API-WALL-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-23%5D%22) · [API-WALL-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-30%5D%22) · [API-WALL-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-31%5D%22) · [MOB-M-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-01%5D%22) · [MOB-M-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-02%5D%22) · [MOB-M-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-10%5D%22) · [MOB-M-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-11%5D%22) · [MOB-M-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-29%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

#### `M-05` — Wallpaper prêt
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-05_wallpaper-pret__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-05_wallpaper-pret__phone_light.webp?raw=true' width='230' alt='M-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-05_wallpaper-pret__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-05_wallpaper-pret__phone_dark.webp?raw=true' width='230' alt='M-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-05_wallpaper-pret__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-05_wallpaper-pret__tablet_light.webp?raw=true' width='330' alt='M-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-05_wallpaper-pret__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-05_wallpaper-pret__tablet_dark.webp?raw=true' width='330' alt='M-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ton wallpaper » · « Yamal » · « Généré » · « Yamal · Illustration · Jour de match » · « Appliquer comme fond d’écran » · « Enregistrer » · « Partager »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-WALL-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-01%5D%22) · [API-WALL-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-10%5D%22) · [API-WALL-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-11%5D%22) · [API-WALL-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-12%5D%22) · [API-WALL-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-13%5D%22) · [API-WALL-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-14%5D%22) · [API-WALL-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-15%5D%22) · [API-WALL-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-16%5D%22) · [API-WALL-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-20%5D%22) · [API-WALL-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-21%5D%22) · [API-WALL-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-29%5D%22) · [API-WALL-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-30%5D%22) · [API-WALL-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-31%5D%22) · [MOB-M-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-01%5D%22) · [MOB-M-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-11%5D%22) · [MOB-M-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-12%5D%22) · [MOB-M-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-15%5D%22) · [MOB-M-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-27%5D%22) · [MOB-M-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-29%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

#### `M-13` — Échec de la génération
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-13_echec-de-la-generation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-13_echec-de-la-generation__phone_light.webp?raw=true' width='230' alt='M-13 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-13_echec-de-la-generation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-13_echec-de-la-generation__phone_dark.webp?raw=true' width='230' alt='M-13 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-13_echec-de-la-generation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-13_echec-de-la-generation__tablet_light.webp?raw=true' width='330' alt='M-13 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-13_echec-de-la-generation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-13_echec-de-la-generation__tablet_dark.webp?raw=true' width='330' alt='M-13 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Wallpapers IA » · « La génération a échoué » · « Un problème est survenu. Ta tentative n’est pas décomptée de ton quota. » · « Réessayer » · « Modifier ma demande »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-WALL-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-08%5D%22) · [API-WALL-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-10%5D%22) · [API-WALL-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-11%5D%22) · [API-WALL-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-15%5D%22) · [API-WALL-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-16%5D%22) · [API-WALL-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-17%5D%22) · [API-WALL-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-30%5D%22) · [MOB-M-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-22%5D%22) · [MOB-M-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-24%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

#### `M-12` — Quota quotidien atteint
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__phone_light.webp?raw=true' width='230' alt='M-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__phone_dark.webp?raw=true' width='230' alt='M-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__tablet_light.webp?raw=true' width='330' alt='M-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__tablet_dark.webp?raw=true' width='330' alt='M-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Wallpapers IA » · « Quota atteint pour aujourd’hui » · « Tu as utilisé tes 3 générations du jour. Elles se renouvellent dans : » · « 11:24:08 » · « Voir ma galerie »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-IA-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-03%5D%22) · [API-WALL-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-08%5D%22) · [API-WALL-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-23%5D%22) · [API-WALL-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-30%5D%22) · [MOB-M-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-02%5D%22) · [MOB-M-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-22%5D%22) · [MOB-M-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-23%5D%22) · [MOB-M-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-29%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

## 📐 Règles de gestion

- Polling de `GET /wallpapers/:id` toutes les 2 s, backoff x1,5 plafonné à 8 s, arrêt après 90 s -> état `Timeout` traité comme échec M-13
- `progress` 0-100 affiché (64 %) ; si absent, barre indéterminée
- Passage en arrière-plan : interruption propre du polling (WidgetsBindingObserver), reprise avec une vérification de statut au `resumed` (CDC Flutter §6.3)
- `REJECTED` (modération de l'image en sortie) -> état `Rejected` ; échec technique -> `Failed` avec `quotaRefunded: true` (M-13)
- L'id de la génération en cours est persisté (Drift `wallpaper_draft.pending_id`) pour reprise après kill de l'app

## 🔄 Comportement et états

- États : `GenerationQueued`, `GenerationRunning(progress)`, `GenerationReady(wallpaper)`, `GenerationRejected`, `GenerationFailed(refunded)`, `GenerationTimedOut`
- Événements : GenerationStarted(id), PollTick, AppResumed, NotifyMeToggled, CancelWatching, RetryPressed
- `CancelWatching` n'annule pas la génération côté serveur, il arrête seulement le suivi

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `GET` | `/api/v1/wallpapers/:id` | Statut et résultat d'une génération | - | {"success":true,"data":{"id":"...","status":"PENDING\|GENERATING\|READY\|REJECTED","progress":64,"imageUrl":"https://...\|null","thumbUrl":"...","moderationStatus":"ok\|rejected","createdAt":"ISO"}} |

## 🛠️ Tâches

- [ ] Créer `presentation/bloc/wallpaper_generation_bloc.dart`, `_event.dart`, `_state.dart`
- [ ] Implémenter le polling avec `Stream.periodic` + `restartable()` (bloc_concurrency) et le backoff
- [ ] Observer le cycle de vie via `WidgetsBindingObserver` dans la page et envoyer `AppResumed`
- [ ] Persister/relire `pending_id`
- [ ] Au démarrage de l'app, si `pending_id` existe : proposer la reprise (snackbar « Ton wallpaper est prêt » si READY)
- [ ] Rafraîchir le quota et la galerie à la fin
- [ ] Journaliser durée de génération (`wallpaper_generation_completed` avec `durationMs`)
- [ ] Tests `bloc_test` avec temps simulé (`fakeAsync`)

## ✔️ Critères d'acceptation

- [ ] Étant donné un statut GENERATING 64 % quand un tick arrive alors l'état est `GenerationRunning(64)`
- [ ] Étant donné READY quand le tick arrive alors le polling s'arrête et l'état porte le wallpaper
- [ ] Étant donné 90 s sans résultat alors l'état est `GenerationTimedOut`
- [ ] Étant donné l'app mise en arrière-plan puis reprise alors une vérification de statut est faite immédiatement
- [ ] Étant donné un kill de l'app quand elle redémarre alors la génération en cours est reprise via `pending_id`

## 🧪 Tests à écrire

- [ ] generation_bloc_test : succès nominal
- [ ] generation_bloc_test : backoff 2s -> 3s -> 4,5s -> 6,75s -> 8s
- [ ] generation_bloc_test : timeout 90 s
- [ ] generation_bloc_test : REJECTED
- [ ] generation_bloc_test : reprise après resumed
- [ ] generation_bloc_test : annulation du suivi

## 🔗 Dépendances

À réaliser après : `MOB-M-02` · `MOB-M-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §3.9, §11.3
- CDC Flutter §6.3, §7.9

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
