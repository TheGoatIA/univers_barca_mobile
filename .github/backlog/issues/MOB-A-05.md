> **MOB-A-05** · Sécurité · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Les écrans A-03, A-04, A-05 et A-08 sont tous déclenchés par des erreurs HTTP/réseau. Le gabarit contient `Failure` (Server/Cache/Network/Validation/Auth) et `interceptors.dart`, mais pas le mapping complet du CDC Flutter §13.1.

## ✅ Objectif

Centraliser la traduction HTTP → exception typée → `Failure` → état d'écran, pour que chaque BLoC traite les erreurs de façon homogène.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `A-04` — Erreur serveur 5xx
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-04_erreur-serveur-5xx__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-04_erreur-serveur-5xx__phone_light.webp?raw=true' width='230' alt='A-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-04_erreur-serveur-5xx__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-04_erreur-serveur-5xx__phone_dark.webp?raw=true' width='230' alt='A-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-04_erreur-serveur-5xx__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-04_erreur-serveur-5xx__tablet_light.webp?raw=true' width='330' alt='A-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-04_erreur-serveur-5xx__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-04_erreur-serveur-5xx__tablet_dark.webp?raw=true' width='330' alt='A-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz » · « Petit souci de notre côté » · « Le service est momentanément indisponible. Notre équipe est déjà dessus. Réessaie dans quelques instants. » · « Réessayer » · « Code d'incident : UB-5C21-8F3A »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-44](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-44%5D%22) · [API-PLAT-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-05%5D%22) · [API-PLAT-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-07%5D%22) · [API-PLAT-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-24%5D%22) · [API-PLAT-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-33%5D%22) · [API-PLAT-34](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-34%5D%22) · [API-PLAT-40](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-40%5D%22) · [API-PLAT-41](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-41%5D%22) · [API-PLAT-55](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-55%5D%22) · [MOB-A-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-06%5D%22) · [MOB-A-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-17%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

#### `A-05` — Trop de requêtes 429
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-05_trop-de-requetes-429__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-05_trop-de-requetes-429__phone_light.webp?raw=true' width='230' alt='A-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-05_trop-de-requetes-429__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-05_trop-de-requetes-429__phone_dark.webp?raw=true' width='230' alt='A-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-05_trop-de-requetes-429__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-05_trop-de-requetes-429__tablet_light.webp?raw=true' width='330' alt='A-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-05_trop-de-requetes-429__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-05_trop-de-requetes-429__tablet_dark.webp?raw=true' width='330' alt='A-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Assistant » · « Doucement, champion ! » · « Tu as atteint la limite de messages pour le moment. Tu pourras écrire de nouveau dans : » · « Réessayer »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-41](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-41%5D%22) · [API-PLAT-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-06%5D%22) · [API-PLAT-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-07%5D%22) · [API-PLAT-41](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-41%5D%22) · [API-PLAT-55](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-55%5D%22) · [MOB-A-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-07%5D%22) · [MOB-A-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-17%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

#### `A-08` — Session expirée
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__phone_light.webp?raw=true' width='230' alt='A-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__phone_dark.webp?raw=true' width='230' alt='A-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__tablet_light.webp?raw=true' width='330' alt='A-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__tablet_dark.webp?raw=true' width='330' alt='A-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Session expirée » · « Pour ta sécurité, reconnecte-toi pour continuer. » · « Me reconnecter » · « Changer de compte »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-09%5D%22) · [API-AUTH-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-13%5D%22) · [API-AUTH-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-16%5D%22) · [API-AUTH-44](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-44%5D%22) · [API-AUTH-45](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-45%5D%22) · [API-PLAT-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-07%5D%22) · [API-PLAT-55](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-55%5D%22) · [MOB-A-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-01%5D%22) · [MOB-A-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-11%5D%22) · [MOB-A-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-12%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

#### `A-03` — Hors-ligne
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__phone_light.webp?raw=true' width='230' alt='A-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__phone_dark.webp?raw=true' width='230' alt='A-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__tablet_light.webp?raw=true' width='330' alt='A-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__tablet_dark.webp?raw=true' width='330' alt='A-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Hors-ligne · derniers contenus synchronisés il y a 12 min » · « Pas de connexion » · « Le défi du jour et le vote GOAT nécessitent une connexion. Ton historique consulté reste disponible. » · « Réessayer » · « Voir le contenu en cache »

**Composants repérés** : `banner`, `btn`

</details>

**Issues liées sur ce même écran :** [API-PLAT-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-07%5D%22) · [API-PLAT-55](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-55%5D%22) · [MOB-A-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-03%5D%22) · [MOB-A-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-04%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

## 📐 Règles de gestion

- Mapping : absence de réseau/timeout → `NetworkUnavailableException` ; 401 après échec du refresh → `UnauthorizedException` ; 400/422 → `ValidationException` ; 409 → `ConflictException` ; 429 → `RateLimitedException(retryAfter)` ; 5xx → `ServerException(traceId)`.
- Le corps d'erreur API est `{success:false,error:{code,message,details,traceId}}` ; le `traceId` est conservé pour l'écran A-04 (« Code d'incident : UB-5C21-8F3A ») et pour Sentry.
- Codes métier à reconnaître : `RATE_LIMITED` (429), `ACCOUNT_SUSPENDED`, `ACCOUNT_DISABLED`, `MAINTENANCE` (503), `UPDATE_REQUIRED` (426) ; un 403 `ACCOUNT_SUSPENDED` dirige vers A-09, un 403 `ACCOUNT_DISABLED` (compte banni ou supprimé) vers A-10 ; un 401 `BAD_CREDENTIALS` sur /auth/login est une erreur de formulaire, jamais une session expirée.
- `RetryInterceptor` : réessaie uniquement erreurs réseau transitoires et 502/503/504 sur méthodes idempotentes (GET), backoff 300 ms / 900 ms, maximum 2 retries ; jamais sur 4xx.
- Aucun message technique brut n'est affiché ; aucun jeton ni contenu de conversation n'est journalisé (CDC Flutter §13).

## 🔄 Comportement et états

- Une erreur est émise par l'`ErrorMappingInterceptor` puis transformée en `Failure` dans le repository (Either).
- Le BLoC convertit `Failure` en état UI ; les erreurs système globales (maintenance, mise à jour, suspension) sont rediffusées par un `SystemEventBus` écouté par `AppStartupCubit`.
- Les 5xx sont envoyés à Sentry avec traceId et sans corps de requête.

## 🛠️ Tâches

- [ ] Étendre `lib/core/error/failure.dart` : `RateLimitFailure(retryAfter)`, `UnauthorizedFailure`, `ConflictFailure`, `MaintenanceFailure`, `UpdateRequiredFailure`, `AccountRestrictedFailure(status, until, reason)`.
- [ ] Créer `lib/core/network/exceptions.dart` avec les exceptions métier du CDC §13.1.
- [ ] Compléter `lib/core/network/interceptors.dart` : `ErrorMappingInterceptor`, `RetryInterceptor`, `LoggingInterceptor` (masquage Authorization et mots de passe).
- [ ] Créer `lib/core/network/failure_mapper.dart` (exception → Failure).
- [ ] Créer `lib/core/network/system_event_bus.dart` (StreamController broadcast).
- [ ] Lire l'en-tête `Retry-After` (secondes) et `RateLimit-Reset` (draft-7) pour calculer `retryAfter`.
- [ ] Ajouter un en-tête `X-Request-Id` généré côté client (corrélation, CDC Flutter §12.3).
- [ ] Configurer Sentry `beforeSend` pour retirer Authorization et corps.
- [ ] Tests unitaires de chaque mapping.

## ✔️ Critères d'acceptation

- [ ] Étant donné une réponse 429 avec `Retry-After: 42` quand l'intercepteur la traite alors une `RateLimitedException(retryAfter: 42s)` est levée.
- [ ] Étant donné une 503 GET quand RetryInterceptor agit alors 2 retries sont effectués avec backoff puis `ServerException`.
- [ ] Étant donné une 400 de login quand l'intercepteur agit alors aucun retry n'est tenté.
- [ ] Étant donné une réponse 500 avec traceId quand le repository retourne alors `ServerFailure.code` contient le traceId.
- [ ] Étant donné un en-tête Authorization quand une requête est journalisée alors la valeur est masquée.

## 🧪 Tests à écrire

- [ ] Test unitaire du mapping pour chaque code (400, 401, 403 ACCOUNT_SUSPENDED, 409, 422, 429, 500, 503, timeout).
- [ ] Test : pas de retry sur POST.
- [ ] Test : masquage Authorization dans LoggingInterceptor.
- [ ] Test : Retry-After absent → valeur par défaut 60 s.
- [ ] Test : bus d'événements notifie AppStartupCubit sur MAINTENANCE.

## 🔗 Dépendances

À réaliser après : `MOB-A-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §4.2
- CDC Flutter §13.1
- CDC Backend §5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
