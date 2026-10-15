> **MOB-FND** · Épopée · Phase 0 — Socle technique

## 🎯 Objectif

Livrer le socle technique de l'application mobile (phase 0) : configuration par environnement, réseau sécurisé (jetons, refresh, intercepteurs), persistance et hors-ligne, session et navigation, i18n FR/EN/ES, thèmes, Firebase, notifications, télémétrie, qualité (tests, CI/CD, performance, accessibilité) afin que les modules fonctionnels des phases 1+ se branchent sans retravailler les fondations.

## 📦 Périmètre

- Flavors dev/staging/prod, AppConfig, bootstrap, logger, gestion d'erreurs globale
- Chaîne d'intercepteurs Chopper dans l'ordre du CDC, Authenticator avec rotation, stockage sécurisé
- Drift (schémas, migrations, cache, file de synchronisation) et connectivité
- AuthBloc, go_router (gardes), shell à 5 onglets, deep links
- i18n ARB complets FR/EN/ES, LocaleCubit, ThemeCubit
- Firebase Core/Messaging/Crashlytics/Performance/Analytics, notifications locales, permissions, OpenTelemetry
- Mise à jour forcée, accessibilité, performance, cache d'images
- Tests (helpers, golden, E2E), CI/CD, Fastlane, checklist stores, durcissement sécurité, lint, ADR

## 🚫 Hors périmètre

- Écrans de connexion/inscription/onboarding (groupe Auth)
- Composants visuels du design system (groupes ZA à ZE)
- Écrans métier (accueil, jeux, fantasy, etc.)
- Endpoints API (dépôt api)

## 📚 Références

- CDC Flutter §1 à §14
- CDC Global §3.1-3.8, §4.2, §5.1
- Dépôt univers_barca_mobile (docs/ARCHITECTURE.md, CONTRIBUTING.md)

## 🧩 Issues de l'épopée (47)

{{CHILDREN}}
