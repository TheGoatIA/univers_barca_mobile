> **MOB-FND-30** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC Flutter cite Sentry « ou équivalent » ; le dépôt a retenu Firebase Crashlytics + Performance (pubspec). L'analytics produit doit respecter le consentement RGPD.

## ✅ Objectif

Brancher crash reporting, traces de performance et événements analytics derrière des interfaces, avec consentement.

## 📐 Règles de gestion

- Crashlytics : custom keys `env`, `locale`, `flavor`, `userId` technique ; `recordFlutterFatalError` + `recordError` (cf. gestion globale) ; breadcrumbs depuis AppLogger.
- Performance : traces `app_start_cold`, `dashboard_load`, `api_<endpoint>` (HTTP métrique auto), `frame_jank` (issue performance).
- Analytics : `AnalyticsService.log(name, params)` ; nom d'événement snake_case ≤ 40 car. ; `screen_view` par route ; aucune donnée personnelle (pas d'e-mail, pas de position).
- Consentement : analytics et Performance désactivés tant que le consentement « statistiques » n'est pas `granted` (historisé via `POST /auth/consents`) ; avant connexion → désactivés.
- Crashlytics reste actif sans consentement uniquement si les données sont strictement techniques (à valider RGPD).

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `POST` | `/api/v1/auth/consents` | Historise le consentement statistiques | {"type":"analytics","granted":true} | {"success":true} |

## 🛠️ Tâches

- [ ] Créer `lib/core/observability/analytics_service.dart` (+ `FirebaseAnalyticsService`, `NoopAnalyticsService`).
- [ ] Créer `lib/core/observability/perf_tracer.dart`.
- [ ] Créer `ConsentGate` écoutant les consentements locaux.
- [ ] Ajouter `AnalyticsRouteObserver` au `GoRouter`.
- [ ] Documenter le catalogue d'événements dans `docs/ANALYTICS.md`.
- [ ] Mise à jour déclaration confidentialité stores (App Privacy / Data safety).

## ✔️ Critères d'acceptation

- [ ] Étant donné aucun consentement quand un événement est loggué alors rien n'est envoyé.
- [ ] Étant donné le consentement accordé alors `screen_view` est envoyé à chaque changement de route.
- [ ] Étant donné le retrait du consentement alors la collecte est stoppée immédiatement.
- [ ] Étant donné une erreur non fatale alors elle apparaît dans Crashlytics avec `env` et `locale`.

## 🧪 Tests à écrire

- [ ] Test unitaire : `ConsentGate` (3 états).
- [ ] Test unitaire : format des noms d'événements.
- [ ] Test widget : observer de route.
- [ ] Test unitaire : pas de PII dans les paramètres (liste noire).

## 🔗 Dépendances

À réaliser après : `MOB-FND-29` · `MOB-FND-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §12.3
- CDC Global §10.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
