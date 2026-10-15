# Univers Barça — Application mobile

Application Flutter (iOS & Android) des supporters du FC Barcelone : jeux, quiz, fantasy, communauté, calendrier, assistant IA.
Structure inspirée du [gabarit Flutter de l'équipe](https://github.com/BorisGautier/flutter_template_app) : **Clean Architecture « feature-first » · BLoC · GetIt/Injectable · Chopper · Drift · go_router · Firebase**.

> Dépôts frères : [`univers_barca_api`](https://github.com/TheGoatIA/univers_barca_api) · [`univers_barca_admin`](https://github.com/TheGoatIA/univers_barca_admin)

## Démarrage rapide

```bash
# Prérequis : Flutter stable (Dart ≥ 3.9), Android Studio / Xcode
make setup                 # flutter pub get + génération de code + hooks git
cp .env.example .env       # puis adapter API_BASE_URL
make run-dev               # flutter run --dart-define=APP_ENV=development
```

| Commande                                      | Rôle                                                            |
| --------------------------------------------- | --------------------------------------------------------------- |
| `make codegen` / `make codegen-watch`         | `build_runner` (injectable, json_serializable, chopper, drift)  |
| `make analyze` · `make format` · `make lint`  | Analyse statique et formatage (`dart format --line-length 100`) |
| `make test` · `make coverage`                 | Tests unitaires + widgets, couverture (seuil CI : 60 %)         |
| `make check`                                  | Pipeline CI local complet                                       |
| `make build-apk-prod` · `make build-aab-prod` | Builds release obfusqués                                        |

## Environnements

Un seul code, trois environnements via `--dart-define=APP_ENV=development|staging|production` et le fichier `.env` (non versionné ; modèle : `.env.example`).

| Branche | Environnement | Pipeline                                                                                       |
| ------- | ------------- | ---------------------------------------------------------------------------------------------- |
| `dev`   | staging       | `mobile-deploy.yml` → APK/IPA « staging », Firebase App Distribution, tag `staging-AAAAMMJJ.N` |
| `main`  | production    | `mobile-deploy.yml` → APK/IPA « production », TestFlight / Play, tag `vAAAAMMJJ.N`             |

## Structure

```
lib/
  core/        constants, error (Failure), network (Chopper, intercepteurs), services, theme (design system), utils, widgets
  di/          GetIt + Injectable
  features/    <feature>/{domain,data,presentation}   ← exemple complet : players
  l10n/        ARB FR (modèle), EN, ES
  routes/      go_router
test/ · integration_test/
```

Détails : [Architecture](docs/ARCHITECTURE.md) · [Déploiement](docs/DEPLOYMENT.md) · [Tests](docs/TESTING.md) · [ADR](docs/adr/) · [Contribuer](CONTRIBUTING.md).

## Design system

Palette et typographies (Barlow Condensed + Inter) définies dans `lib/core/theme/` — identiques au back-office et aux maquettes (mode clair/sombre, mobile/tablette).

## Licence

Logiciel propriétaire — voir [`LICENSE`](LICENSE) et [`NOTICE.md`](NOTICE.md).
