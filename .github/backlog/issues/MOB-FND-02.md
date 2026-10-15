> **MOB-FND-02** · Infrastructure · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Plusieurs services (réseau, télémétrie, Firebase, analytics) ont besoin de la configuration d'exécution. Aujourd'hui `AppApiClient` lit directement `dotenv.env['API_BASE_URL']`, ce qui disperse la lecture et rend les tests difficiles.

## ✅ Objectif

Centraliser la configuration dans un objet immuable injecté par GetIt, validé au démarrage.

## 📐 Règles de gestion

- `AppConfig` (Equatable) : `env` (`AppEnv.dev|staging|prod`), `apiBaseUrl`, `otelEndpoint?`, `enableAnalytics`, `enableCrashlytics`, `logLevel`, `minLogLevelRemote`, `universalLinkHost`.
- Source unique : `String.fromEnvironment` (dart-define) ; `flutter_dotenv` reste utilisé uniquement en debug local.
- Validation fail-fast : si `apiBaseUrl` n'est pas une URL https (sauf dev), l'app affiche un écran d'erreur de configuration au lieu de planter.
- Valeurs par défaut sûres : analytics et crashlytics désactivés en dev ; `logLevel=debug` en dev, `info` en staging, `warning` en prod.

## 🛠️ Tâches

- [ ] Créer `lib/core/config/app_config.dart` et `app_env.dart`.
- [ ] Enregistrer `AppConfig` via `@module` dans `lib/di/register_module.dart` (`@preResolve` non requis).
- [ ] Remplacer la lecture `dotenv` dans `lib/core/network/api_client.dart` par `getIt<AppConfig>().apiBaseUrl`.
- [ ] Ajouter `ConfigErrorScreen` minimal (texte localisé) affiché par `bootstrap` si la validation échoue.
- [ ] Mettre à jour `.env.example` et `scripts/gen_env.sh`.
- [ ] Documenter chaque clé dans `docs/ARCHITECTURE.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné `API_BASE_URL=http://x` en prod quand l'app démarre alors l'écran d'erreur de configuration s'affiche.
- [ ] Étant donné le flavor dev quand l'app démarre alors `enableCrashlytics == false`.
- [ ] Étant donné un test quand `getIt<AppConfig>` est surchargé alors aucun accès à dotenv n'a lieu.

## 🧪 Tests à écrire

- [ ] Test unitaire : parsing de toutes les clés avec valeurs par défaut.
- [ ] Test unitaire : rejet d'une URL http en prod.
- [ ] Test unitaire : égalité Equatable de deux configs identiques.
- [ ] Test widget : `ConfigErrorScreen` affiche le message FR/EN/ES.

## ♿ Accessibilité et i18n

- Clés ARB `config_error_title`, `config_error_body`.

## 🔗 Dépendances

À réaliser après : `MOB-FND-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §4.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
