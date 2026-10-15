# Architecture de l'application mobile

## Vue d'ensemble

```mermaid
flowchart LR
  subgraph App[Application Flutter]
    UI[Pages / Widgets] --> BLOC[BLoC]
    BLOC --> UC[Use cases]
    UC --> REPO[Repository - contrat]
    REPO -.implémenté par.-> RI[RepositoryImpl]
    RI --> REM[Datasource distante Chopper]
    RI --> LOC[Datasource locale Drift / SecureStorage]
  end
  REM -->|HTTPS /api/v1| API[(API Express)]
  App --> FCM[Firebase Messaging / Crashlytics]
```

## Couches (par feature)

```mermaid
flowchart TB
  P[presentation: pages, widgets, bloc] --> D[domain: entities, repositories, usecases]
  DA[data: models, datasources, repositories impl] --> D
  P -. DI GetIt .-> DA
```

Règle de dépendance : `presentation → domain ← data`. Le domaine est du Dart pur.

## Réseau

Pile d'intercepteurs Chopper : `AuthInterceptor` (Bearer) → `HttpLoggingInterceptor` ; `AppAuthenticator` rafraîchit le jeton sur 401 (refresh token à rotation côté API). Format de réponse : `{ success, data }` ; listes `{ items, total, page, totalPages, hasMore }`.

## Navigation

`go_router` : splash → onboarding/auth → `ShellRoute` à onglets (Accueil, Jeux, Fantasy, Communauté, Profil). Les gardes d'authentification consomment l'état de l'`AuthBloc`.

## Stockage

- Jetons : `flutter_secure_storage`.
- Préférences : `shared_preferences`.
- Cache hors-ligne : Drift (SQLite), chiffrement SQLCipher prévu.

## Thème & i18n

Tokens de couleur, rayons, espacements et typographies dans `core/theme`. Langues FR (modèle), EN, ES via ARB ; le français est la langue par défaut.

## Environnements

`APP_ENV` (`development` · `staging` · `production`) + `.env`. Les identifiants Firebase par environnement sont fournis par les secrets CI.
