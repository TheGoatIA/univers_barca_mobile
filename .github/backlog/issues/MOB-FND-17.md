> **MOB-FND-17** · Fonctionnel · Priorité **P1** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC §6.1 et §12.2 décrivent l'ouverture directe d'un écran depuis une notification push (match → dashboard avec détail) et les liens de partage (ex. invitation à un classement entre amis).

## ✅ Objectif

Router tout lien entrant vers la bonne route, y compris à froid, en respectant les gardes.

## 📐 Règles de gestion

- Hôte `universlinks` : `https://app.univers-barca.app/*` (iOS Associated Domains, Android App Links vérifiés) + schéma de repli `universbarca://`.
- Table : `/match/:id` → `/dashboard?match=:id`, `/invite/:code` → classement amis, `/quiz/daily` → quiz du jour, `/groups/:id` → groupe local.
- Lien reçu non authentifié : mémorisé (`pendingDeepLink`) puis rejoué après login.
- Payload FCM `data.route` validé contre une liste blanche de routes (pas de navigation arbitraire).
- Liens invalides → écran d'accueil + toast « Lien non reconnu ».

## 🛠️ Tâches

- [ ] Créer `lib/core/routing/deep_link_resolver.dart` (pur, testable).
- [ ] Configurer `AndroidManifest.xml` (intent-filter autoVerify) et `Runner.entitlements`.
- [ ] Publier `assetlinks.json` / `apple-app-site-association` (tâche côté domaine, documentée).
- [ ] Intégrer `pendingDeepLink` dans `AuthBloc`/`AppRouter`.
- [ ] Brancher `FirebaseMessaging.onMessageOpenedApp` et `getInitialMessage`.
- [ ] Documenter dans `docs/DEPLOYMENT.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné un lien `/match/123` app fermée alors l'app s'ouvre sur le dashboard avec le match 123.
- [ ] Étant donné un lien non authentifié alors après connexion l'utilisateur arrive sur la cible.
- [ ] Étant donné un `data.route` hors liste blanche alors il est ignoré et journalisé.
- [ ] Étant donné un lien malformé alors toast d'erreur sans plantage.

## 🧪 Tests à écrire

- [ ] Test unitaire : table de résolution (10 liens).
- [ ] Test unitaire : liste blanche.
- [ ] Test widget : pending deep link rejoué.
- [ ] Test d'intégration (Patrol) : lien à froid.

## ♿ Accessibilité et i18n

- Clé ARB `deeplink_invalid`.

## 🔗 Dépendances

À réaliser après : `MOB-FND-15` · `MOB-FND-31` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §6.1
- CDC Flutter §12.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
