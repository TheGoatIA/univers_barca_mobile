> **MOB-FND-12** · Sécurité · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

`AppAuthenticator` contient un `À faire`. L'API `POST /auth/refresh` fait une rotation : un refresh token utilisé deux fois est invalide (réutilisation = révocation de la famille).

## ✅ Objectif

Sur 401, obtenir une nouvelle paire de jetons une seule fois même avec N requêtes simultanées, puis rejouer les requêtes.

## 📐 Règles de gestion

- Single-flight : un `Completer<TokenPair?>` partagé ; les requêtes concurrentes attendent le même résultat.
- Appel `POST /auth/refresh {refreshToken}` via un client Chopper sans Authenticator ni AuthInterceptor (évite la boucle).
- Succès : sauvegarde de la nouvelle paire avant rejeu ; rejeu limité à 1 fois par requête.
- Échec (401/400 refresh invalide) : `TokenStorage.clear()` + événement `SessionExpired` vers l'AuthBloc → redirection `/auth/login` ; échec réseau : on ne déconnecte pas.
- Ne pas tenter de refresh pour les 401 des routes publiques (`/auth/login` mauvais mot de passe).

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `POST` | `/api/v1/auth/refresh` | Rotation du refresh token | {"refreshToken":"…"} | {"success":true,"data":{"accessToken":"…","refreshToken":"…"}} |

## 🛠️ Tâches

- [ ] Réécrire `lib/core/network/authenticator.dart` (`@injectable`).
- [ ] Créer `lib/core/network/refresh_client.dart` (ChopperClient minimal).
- [ ] Créer `SessionEvents` (stream broadcast) dans `lib/core/auth/session_events.dart`.
- [ ] Brancher l'écoute dans AuthBloc (issue AuthBloc).
- [ ] Ajouter un test d'intégration avec serveur mock (package `http` MockClient).
- [ ] Documenter le flux (diagramme Mermaid) dans `docs/ARCHITECTURE.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné 5 requêtes parallèles en 401 quand le refresh réussit alors un seul `POST /auth/refresh` est émis et les 5 sont rejouées.
- [ ] Étant donné un refresh invalide quand il échoue alors la session est purgée et `SessionExpired` est émis.
- [ ] Étant donné une coupure réseau pendant le refresh alors l'utilisateur reste connecté et reçoit `NetworkUnavailableException`.
- [ ] Étant donné un 401 sur `/auth/login` alors aucun refresh n'est tenté.

## 🧪 Tests à écrire

- [ ] Test unitaire : concurrence (Completer partagé).
- [ ] Test unitaire : rejet unique.
- [ ] Test unitaire : pas de boucle infinie.
- [ ] Test unitaire : réseau coupé ≠ déconnexion.

## 🔗 Dépendances

À réaliser après : `MOB-FND-06` · `MOB-FND-07` · `MOB-FND-11` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §4.2
- CDC Global §3.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
