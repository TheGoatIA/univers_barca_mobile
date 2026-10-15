> **MOB-A-03** · Infrastructure · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Plusieurs écrans (A-03, tous les écrans réseau) doivent savoir si l'appareil est connecté. `lib/core/network/network_info.dart` existe mais n'expose pas de flux ni de vérification réelle d'accès au serveur.

## ✅ Objectif

Fournir un `ConnectivityCubit` global qui publie l'état en ligne/hors-ligne (avec horodatage de la dernière synchronisation réussie) et déclenche les rejeux de la file d'actions.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `A-03` — Hors-ligne
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__phone_light.webp?raw=true' width='230' alt='A-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__phone_dark.webp?raw=true' width='230' alt='A-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__tablet_light.webp?raw=true' width='330' alt='A-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__tablet_dark.webp?raw=true' width='330' alt='A-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Hors-ligne · derniers contenus synchronisés il y a 12 min » · « Pas de connexion » · « Le défi du jour et le vote GOAT nécessitent une connexion. Ton historique consulté reste disponible. » · « Réessayer » · « Voir le contenu en cache »

**Composants repérés** : `banner`, `btn`

</details>

**Issues liées sur ce même écran :** [MOB-A-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-04%5D%22) · [MOB-A-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-05%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

## 📐 Règles de gestion

- Deux niveaux : connectivité de l'interface (connectivity_plus) ET joignabilité réelle de l'API (`GET /health`) car un Wi-Fi sans Internet reste « connecté ».
- Hystérésis : passage hors-ligne après 2 échecs consécutifs ou perte d'interface ; retour en ligne après 1 succès. Ping de reprise toutes les 5 s puis backoff jusqu'à 30 s tant que hors-ligne.
- `lastSyncAt` mémorisé (Drift, table de métadonnées) et affiché sous forme relative « il y a 12 min » (intl, locales fr/en/es).
- À la reconnexion : rejouer la file `PendingActions` (CDC Flutter §5.1) dans l'ordre de création, max 3 tentatives par action.

## 🔄 Comportement et états

- Hors-ligne détecté : émission `ConnectivityState.offline(lastSyncAt)`.
- Reconnexion : émission `online`, déclenchement de `ReplayPendingActionsUseCase` puis rafraîchissement léger.
- Application en arrière-plan : on stoppe le ping, reprise au `resumed`.
- Mode avion : état offline immédiat sans attendre de timeout.

## 🛠️ Tâches

- [ ] Étendre `lib/core/network/network_info.dart` : interface `NetworkInfo` avec `Stream<bool> onChanged` et `Future<bool> hasInternet()`.
- [ ] Ajouter la dépendance `connectivity_plus` dans `pubspec.yaml` et l'enregistrer dans `di/register_module.dart`.
- [ ] Créer `lib/core/network/connectivity_cubit.dart` + `connectivity_state.dart`.
- [ ] Créer la table Drift `SyncMetadata` (`key`, `valueText`, `updatedAt`) et le DAO `SyncMetadataDao` (clé `lastSuccessfulSyncAt`).
- [ ] Créer `lib/core/usecases/replay_pending_actions_usecase.dart` (lecture `PendingActions` triée par `createdAt`).
- [ ] Mettre à jour le `RetryInterceptor` pour consulter l'état avant de réessayer.
- [ ] Fournir un `FakeNetworkInfo` dans `test/helpers/`.
- [ ] Documenter le comportement dans `docs/ARCHITECTURE.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné le mode avion activé quand l'utilisateur ouvre l'app alors l'état est offline en moins de 1 s.
- [ ] Étant donné offline puis retour réseau quand l'API répond à /health alors l'état passe online et la file d'actions est rejouée dans l'ordre.
- [ ] Étant donné un Wi-Fi sans Internet quand deux pings échouent alors l'état passe offline.
- [ ] Étant donné la dernière synchro à 12 min quand l'état est offline alors `lastSyncAt` vaut ce moment.

## 🧪 Tests à écrire

- [ ] Test bloc : séquence online → 2 échecs → offline → 1 succès → online.
- [ ] Test unitaire : formatage « il y a 12 min » en fr, en, es.
- [ ] Test : rejeu des actions en attente dans l'ordre et arrêt après 3 échecs.
- [ ] Test DAO Drift : lecture/écriture de `lastSuccessfulSyncAt`.

## 🔗 Dépendances

À réaliser après : `MOB-A-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §5
- CDC Flutter §13.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
