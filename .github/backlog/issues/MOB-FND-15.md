> **MOB-FND-15** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

`app_router.dart` a un `redirect` commenté et un splash qui navigue après 2 s en dur. Le CDC §6.1 demande des routes auth/onboarding hors shell avec redirection selon l'AuthBloc.

## ✅ Objectif

Navigation déterministe selon l'état de session, sans clignotement.

## 📐 Règles de gestion

- Tant que `AuthUnknown` : rester sur `/` (splash) sans redirection.
- Non authentifié : tout chemin hors `/auth/**`, `/onboarding`, `/legal/**` redirige vers `/auth/login` en conservant `?from=<chemin>` encodé.
- Authentifié : `/auth/**` redirige vers `from` ou `/dashboard`.
- Onboarding non terminé (flag local `onboarding_done`) : redirection vers `/onboarding` avant le shell.
- Compte à consentements manquants : redirection vers l'écran de consentements (groupe Auth).
- `refreshListenable: AuthRouterRefresh` ; `GoRouter` créé par `AppRouter` injectable (plus de global `appRouter`).

## 🛠️ Tâches

- [ ] Refactorer `lib/routes/app_router.dart` en classe `AppRouter` ; mettre à jour `RouteConstants` (`/auth/login`, `/auth/register`, `/auth/forgot-password`, `/auth/reset-password`, `/onboarding`, `/dashboard`, `/games`, `/history`, `/fantasy`, `/community`).
- [ ] Implémenter `redirect` pur dans `route_guards.dart` (fonction testable).
- [ ] Créer `NotFoundScreen` (route `errorBuilder`) avec `BarcaErrorState`.
- [ ] Supprimer le `Future.delayed(2 s)` du splash.
- [ ] Ajouter `GoRouterObserver` pour l'analytics (`screen_view`).
- [ ] Documenter la table des routes dans `docs/ARCHITECTURE.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné `Unauthenticated` et chemin `/fantasy` alors la destination est `/auth/login?from=%2Ffantasy`.
- [ ] Étant donné `Authenticated` et chemin `/auth/login` alors redirection vers `/dashboard`.
- [ ] Étant donné `AuthUnknown` alors aucune redirection.
- [ ] Étant donné une route inconnue alors `NotFoundScreen` s'affiche.

## 🧪 Tests à écrire

- [ ] Test unitaire : fonction `redirect` – table de 10 cas.
- [ ] Test widget : GoRouter avec AuthBloc mock.
- [ ] Test unitaire : encodage de `from`.
- [ ] Test widget : 404.

## ♿ Accessibilité et i18n

- Clés ARB `route_not_found_title`, `route_not_found_body`.

## 🔗 Dépendances

À réaliser après : `MOB-FND-14` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §6.1
- CDC Flutter §6.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
