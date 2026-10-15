> **MOB-FND-14** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Le routeur doit réagir à l'état d'authentification (CDC §6.1 : guard basé sur un AuthBloc global). Les écrans de connexion sont traités dans le groupe Auth ; ici seul le socle de session est posé.

## ✅ Objectif

Un `AuthBloc` unique fournit `AuthStatus` à toute l'app et orchestre login/logout/expiration.

## 📐 Règles de gestion

- États : `AuthUnknown` (démarrage), `Authenticated(user)`, `Unauthenticated`, `AuthLoggingOut`.
- Événements : `AuthStarted`, `AuthLoggedIn(TokenPair,User)`, `AuthLogoutRequested({allDevices})`, `AuthSessionExpired`, `AuthUserUpdated`.
- Au démarrage : lecture `TokenStorage` ; si jeton → `GET /users/me` (cache Drift du profil si hors-ligne) ; jeton invalide → `Unauthenticated`.
- Logout : `POST /auth/logout` (ou `/auth/logout-all`), purge jetons, purge cache utilisateur Drift et file d'actions, désabonnement FCM ; en cas d'échec réseau la purge locale a quand même lieu.
- Sessions multi-appareils : refresh par appareil (CDC §12.1).

## 🛠️ Tâches

- [ ] Créer `lib/core/auth/bloc/auth_bloc.dart`, `auth_event.dart`, `auth_state.dart` (Equatable).
- [ ] Créer `lib/core/auth/domain/entities/session_user.dart` minimal (id, pseudo, role, locale).
- [ ] Écouter `SessionEvents` (issue Authenticator).
- [ ] Fournir `AuthBloc` en `BlocProvider` au-dessus de `MaterialApp.router` dans `lib/app.dart`.
- [ ] Créer `AuthRouterRefresh extends ChangeNotifier` pour `refreshListenable`.
- [ ] Utiliser `GetSessionUser`, `LogoutUser`, `LogoutAllDevices` (use cases) — repository complet dans le groupe Auth.
- [ ] Nettoyer Drift via `LocalDataCleaner`.

## ✔️ Critères d'acceptation

- [ ] Étant donné un jeton valide au démarrage alors l'état passe `AuthUnknown → Authenticated`.
- [ ] Étant donné `AuthSessionExpired` alors l'état passe `Unauthenticated` et les données locales sont purgées.
- [ ] Étant donné un logout hors-ligne alors la session locale est quand même terminée.
- [ ] Étant donné aucun jeton alors `Unauthenticated` sans appel réseau.

## 🧪 Tests à écrire

- [ ] bloc_test : `AuthStarted` avec jeton.
- [ ] bloc_test : `AuthStarted` sans jeton.
- [ ] bloc_test : `AuthSessionExpired`.
- [ ] bloc_test : logout-all.
- [ ] Test unitaire : `LocalDataCleaner` appelé.

## 🔗 Dépendances

À réaliser après : `MOB-FND-12` · `MOB-FND-18` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §6.1
- CDC Flutter §12.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
