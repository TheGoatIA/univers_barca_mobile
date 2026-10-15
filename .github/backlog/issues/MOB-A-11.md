> **MOB-A-11** · Sécurité · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Le jeton d'accès vit 15 min et le refresh 30 jours avec rotation ; si le refresh échoue (révoqué, expiré, réutilisation détectée), l'utilisateur doit être déconnecté proprement et invité à se reconnecter.

## ✅ Objectif

Brancher `AuthInterceptor`/`Authenticator` sur un événement `SessionExpired` qui purge les jetons et ouvre A-08 sans perdre l'état utile.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `A-08` — Session expirée
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__phone_light.webp?raw=true' width='230' alt='A-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__phone_dark.webp?raw=true' width='230' alt='A-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__tablet_light.webp?raw=true' width='330' alt='A-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__tablet_dark.webp?raw=true' width='330' alt='A-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Session expirée » · « Pour ta sécurité, reconnecte-toi pour continuer. » · « Me reconnecter » · « Changer de compte »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-09%5D%22) · [API-AUTH-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-13%5D%22) · [API-AUTH-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-16%5D%22) · [API-AUTH-44](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-44%5D%22) · [API-AUTH-45](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-45%5D%22) · [MOB-A-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-01%5D%22) · [MOB-A-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-05%5D%22) · [MOB-A-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-12%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

## 📐 Règles de gestion

- Seul un 401 après échec du refresh déclenche la déconnexion (CDC Flutter §13.1) ; un refresh en cours est mutualisé (une seule requête `POST /auth/refresh` pour N appels simultanés).
- Réutilisation d'un refresh token détectée par le serveur → toute la famille est révoquée : le client voit 401 `TOKEN_REUSED`/`UNAUTHORIZED` et ouvre A-08.
- À l'expiration : suppression des jetons de `flutter_secure_storage`, conservation de l'e-mail pour pré-remplir la connexion, conservation du cache Drift (pas de purge sans « Changer de compte »).
- Ne pas rejouer automatiquement les actions d'écriture sensibles après reconnexion ; seules les lectures le sont.

## 🔄 Comportement et états

- Une requête reçoit 401 : tentative de refresh ; succès → rejeu transparent ; échec → `SessionExpiredEvent` → écran A-08.
- Application en arrière-plan : aucune navigation tant que l'app n'est pas `resumed`.
- Plusieurs 401 simultanés : un seul écran A-08 empilé.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `POST` | `/api/v1/auth/refresh` | Rotation du refresh token (existant). | {refreshToken} | {success:true,data:{accessToken,refreshToken}} |

## 🛠️ Tâches

- [ ] Compléter `lib/core/network/authenticator.dart` : verrou `Completer` partagé pour le refresh unique.
- [ ] Émettre `SystemEventBus.add(SessionExpiredEvent)` sur échec.
- [ ] Créer `AuthBloc` événement `SessionExpired` et état `AuthStatus.sessionExpired` (coordination avec le groupe B).
- [ ] Ajouter à `redirect` de go_router la règle : état `sessionExpired` → `/system/session-expired`.
- [ ] Mémoriser `lastEmail` dans les préférences non sensibles.
- [ ] Appeler `POST /auth/logout` en best effort lors de « Changer de compte ».
- [ ] Tests de concurrence du refresh (Mockito + fake async).

## ✔️ Critères d'acceptation

- [ ] Étant donné un access token expiré et un refresh valide quand une requête est émise alors elle est rejouée de façon transparente.
- [ ] Étant donné un refresh révoqué quand le refresh échoue alors A-08 s'ouvre et les jetons sont supprimés.
- [ ] Étant donné 5 requêtes simultanées en 401 quand le refresh est lancé alors un seul appel /auth/refresh est émis.
- [ ] Étant donné A-08 quand l'utilisateur se reconnecte alors il revient à l'écran d'origine.

## 🧪 Tests à écrire

- [ ] Test : verrou unique de refresh avec 5 appels parallèles.
- [ ] Test : échec refresh → événement émis une fois.
- [ ] Test : jetons supprimés du secure storage factice.
- [ ] Test : redirect go_router vers A-08.
- [ ] Test : `lastEmail` conservé.

## 🔗 Dépendances

À réaliser après : `MOB-A-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §4.2
- CDC Flutter §13.1
- CDC Backend §5.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
