# 06 — Glossaire et conventions

> Ce document réunit le **vocabulaire** du projet (métier et technique), les **conventions** de chaque dépôt, le **format des réponses et des erreurs** de l'API, les règles Git, d'internationalisation et d'accessibilité, et un **mode d'emploi du backlog** pour retrouver n'importe quelle information. À lire juste après `01-vue-ensemble.md`.

## Sommaire

1. [Glossaire métier](#1-glossaire-métier)
2. [Glossaire technique](#2-glossaire-technique)
3. [Conventions communes aux trois dépôts](#3-conventions-communes-aux-trois-dépôts)
4. [Conventions de l'API](#4-conventions-de-lapi)
5. [Format des réponses et des erreurs](#5-format-des-réponses-et-des-erreurs)
6. [Conventions du mobile Flutter](#6-conventions-du-mobile-flutter)
7. [Conventions du back-office React](#7-conventions-du-back-office-react)
8. [Git, commits et pull requests](#8-git-commits-et-pull-requests)
9. [Internationalisation](#9-internationalisation)
10. [Accessibilité](#10-accessibilité)
11. [Design system et tokens](#11-design-system-et-tokens)
12. [Retrouver l'information dans le backlog](#12-retrouver-linformation-dans-le-backlog)
13. [Questions fréquentes de nouveau développeur](#13-questions-fréquentes-de-nouveau-développeur)

---

## 1. Glossaire métier

| Terme | Définition |
| --- | --- |
| **Culé** (pl. *culés*) | Surnom des supporters du FC Barcelone. Désigne l'utilisateur type du produit |
| **Barça AI** | Nom de l'assistant conversationnel (F18), accessible par une bulle flottante sur tous les écrans principaux |
| **Culé Passport** | Profil de gamification transverse : niveau, points, série, badges, statistiques (F12) |
| **Guess the Player** | Jeu quotidien de devinette d'un joueur mystère, **identique pour tous**, 6 essais, indices vert/jaune/rouge avec flèches ▲▼ (F09) |
| **Quiz adaptatif** | Quiz à 5 paliers de difficulté, 10 questions par session du jour, mode entraînement libre (F10) |
| **Palier** (de quiz) | Niveau de difficulté de 1 (« Supporter occasionnel ») à 5 (« La Masia ») ; ajusté sur une fenêtre glissante de 10 réponses |
| **Défi du jour** (`DailyChallenge`) | Un enregistrement par jour et par type, commun à tous les utilisateurs, généré à l'avance par un cron (fuseau `Europe/Madrid`) |
| **Streak / série** | Nombre de jours consécutifs d'activité comptant pour la série (parties de Guess et sessions de quiz du jour) ; « en péril » avant minuit si non joué |
| **XP / points** | Points gagnés selon le barème transverse `PassportPointRule`, attribués par le point d'entrée unique `recordActivity` |
| **Badge** | Récompense déclarative (24 prévus) débloquée par un événement d'activité ; états, progression, « vu / non vu » |
| **GOAT** | « Greatest Of All Time » : comparateur de deux joueurs avec **vote communautaire** ; l'app n'affiche qu'un pourcentage, jamais un verdict |
| **Fantasy** | Composition hebdomadaire d'un XI (formation, capitaine) ; points calculés sur les performances réelles via un barème `ScoringRule` versionné (F13) |
| **Journée / Gameweek** | Période de Fantasy ; verrouillage des compositions au coup d'envoi du premier match |
| **La Masia Academy** | Simulation de progression d'un jeune joueur virtuel : une décision par semaine (entraînement, tactique, repos, nutrition) (F14) |
| **Carte communautaire / Culés Map** | Carte des supporters par pays et ville, en **agrégats** uniquement (F15) |
| **Groupe local** | Communauté géographique (ex. « Culés Cameroun ») avec fil de discussion et événements (F16) |
| **Watch party** | Événement de visionnage collectif déclaré par un membre d'un groupe |
| **Zone approximative** | Pays + ville la plus proche d'un point GPS ; seule donnée de localisation stockée |
| **Visibilité carte** | Choix de l'utilisateur : `hidden`, `country` ou `city` |
| **Flux ICS / webcal** | Calendrier iCalendar (RFC 5545) : fichier `.ics` ponctuel ou abonnement dynamique `webcal://` par jeton personnel et révocable (F08) |
| **Anecdote** | Texte « Aujourd'hui dans l'histoire » trilingue, planifié par date de diffusion |
| **Signalement** | Report d'un contenu ou d'un utilisateur par un autre utilisateur (F17) |
| **Sanction** | Action de modération : avertir, masquer, suspendre, bannir |
| **Contestation / appel** | Recours d'un utilisateur sanctionné |
| **Kill switch** | Interrupteur qui désactive un module (assistant, wallpapers, Fantasy/Academy) à distance sans redéploiement |
| **Wallpaper** | Fond d'écran généré par IA à partir d'un formulaire guidé (joueur, style, occasion) (F19) |
| **Persona** | Profil type d'utilisateur (passionné, diaspora, occasionnel) |
| **Persona 2 / Diaspora** | Supporter hors d'Espagne qui cherche une communauté locale |
| **Campagne** | Notification manuelle envoyée par un super-admin à un segment d'audience |
| **Content-manager / Moderator / Super-admin** | Rôles du back-office (voir `03-securite-et-rgpd.md`) |
| **Phase 0 / 1 / 2 / 3** | Jalons du plan : socle, MVP, communautaire et compétitif, avancé |
| **MVP** | Version minimale mais cohérente du produit, testable par un cercle restreint (fin de phase 1) |
| **P0 / P1 / P2** | Priorités d'une issue : P0 indispensable, P1 important, P2 souhaitable |
| **Planche ZA…ZE** | Planches de design du design system (ZA fondations, ZB composants, ZC retours, ZD composants métier, ZE mouvement) |

---

## 2. Glossaire technique

| Terme | Définition |
| --- | --- |
| **Clean Architecture** | Séparation en couches indépendantes (domaine, application/data, présentation) ; la dépendance va toujours vers le domaine |
| **Feature-first** | Organisation du code par fonctionnalité (`lib/features/<nom>/`) puis par couche |
| **BLoC** | *Business Logic Component* : composant d'état qui transforme des **events** en **states** immuables (`flutter_bloc`) |
| **Cubit** | BLoC simplifié sans events (méthodes qui émettent des états) : `LocaleCubit`, `ThemeCubit`, `ConnectivityCubit` |
| **Use case** | Une action métier unique, exposée par une classe du domaine |
| **Failure** | Type d'erreur du domaine mobile ; les fonctions retournent `Either<Failure, T>` |
| **`Either`** (fpdart) | Type somme : `Left(Failure)` ou `Right(valeur)` |
| **Equatable** | Mixin qui donne l'égalité par valeur aux états et entités |
| **GetIt / Injectable** | Localisateur de services + génération des enregistrements par annotations |
| **Chopper** | Client HTTP Dart généré à partir d'interfaces annotées ; supporte intercepteurs et `Authenticator` |
| **Drift** | ORM SQLite pour Dart ; sert de cache hors-ligne |
| **go_router** | Routage déclaratif Flutter avec deep links et `ShellRoute` |
| **ARB** | *Application Resource Bundle* : fichiers de traductions Flutter (`app_fr.arb`, `app_en.arb`, `app_es.arb`) |
| **Express / Mongoose** | Framework HTTP Node et ODM MongoDB de l'API |
| **Replica set** | Ensemble MongoDB répliqué (ici `rs0`), requis pour les transactions |
| **TTL index** | Index MongoDB qui supprime automatiquement les documents après une date (`expireAfterSeconds`) |
| **2dsphere** | Index géospatial MongoDB (carte, groupes proches) |
| **BullMQ** | Système de files de jobs basé sur Redis (retries, backoff, délais) |
| **Dead-letter** | File des jobs ayant épuisé leurs tentatives, pour analyse manuelle |
| **Idempotence** | Propriété d'une opération qui, rejouée, ne produit pas d'effet en double (clé d'idempotence, `jobId` déterministe) |
| **Cache-aside** | Lecture : cache d'abord, base en cas d'absence, puis remplissage du cache |
| **Anti-stampede** | Mécanisme (verrou) qui évite que de nombreux clients rechargent la même donnée expirée en même temps |
| **JWT** | *JSON Web Token* signé (HS256) ; ici l'**access token** de 15 minutes |
| **Refresh token** | Jeton opaque long à **rotation** : chaque usage en émet un nouveau et révoque l'ancien |
| **Famille de tokens** (`familyId`) | Chaîne de refresh tokens issus d'une même connexion ; révoquée en bloc en cas de rejeu |
| **jti** | Identifiant unique d'un JWT, utilisé pour la liste noire Redis |
| **Argon2id** | Algorithme de hachage de mots de passe résistant au matériel dédié |
| **TOTP** | Mot de passe à usage unique basé sur le temps (2FA du back-office) |
| **RBAC** | *Role-Based Access Control* : permissions par rôle |
| **IDOR** | Accès à la ressource d'autrui en changeant un identifiant ; combattu par le filtrage par propriétaire |
| **SSRF** | Faire émettre au serveur une requête vers une cible interne ; combattu par la liste blanche sortante |
| **STRIDE** | Méthode de modélisation des menaces (usurpation, altération, répudiation, divulgation, déni de service, élévation) |
| **RAG** | *Retrieval-Augmented Generation* : le modèle de langage répond à partir de données internes récupérées avant l'appel |
| **SSE** | *Server-Sent Events* : flux HTTP unidirectionnel (streaming des réponses de l'assistant) |
| **FCM** | Firebase Cloud Messaging (notifications push) |
| **OTLP / OpenTelemetry** | Protocole et standard de télémétrie (traces, métriques) |
| **RED** | Méthode de métriques : Rate, Errors, Duration |
| **p95 / p99** | 95e / 99e centile de latence |
| **RPO / RTO** | Perte de données maximale acceptée / durée maximale de remise en service |
| **GHCR** | GitHub Container Registry |
| **VPS** | Serveur privé virtuel qui héberge les conteneurs Docker Compose |
| **ADR** | *Architecture Decision Record* : note courte consignant une décision (contexte, décision, conséquences) |
| **CDC** | Cahier des charges (Global, Backend, Flutter, Admin) |
| **Épopée** | Groupe d'issues d'un même thème, identifié par un code (`API-JEUX`, `MOB-D`, `ADM-WF`) |
| **k6** | Outil de tests de charge scriptés en JavaScript |
| **Golden test** | Test qui compare le rendu d'un widget à une image de référence |
| **Smoke test** | Test minimal vérifiant que l'application démarre et répond |
| **(proposé)** | Marque, dans cette documentation, une information absente des CDC et des specs et donc à confirmer |

---

## 3. Conventions communes aux trois dépôts

| Sujet | Règle |
| --- | --- |
| Langue | **Français** pour issues, PR, commentaires de revue et messages utilisateur ; **code en anglais** (identifiants, noms de fichiers) |
| Backlog d'abord | Les issues **font foi** ; en cas de doute, ne pas inventer : poser la question ou lister l'hypothèse dans la PR. Si l'issue contredit le code existant ou un autre dépôt, le **dire explicitement** |
| Secrets | Aucune valeur de secret dans le dépôt (jamais de jeton, mot de passe, clé) ; `.env.example` sans valeur réelle |
| Routes API | Toute nouvelle route met à jour **Swagger** (`npm run export:swagger`) **et** le scénario **k6** (`tests/load`) |
| Documentation | README par dépôt, `docs/ARCHITECTURE.md`, ADR pour toute décision structurante, changelog |
| Un changement = une issue = une branche = une PR | Voir §8 |
| Qualité | CI verte obligatoire ; pas de `any` injustifié (TypeScript) ; pas de valeur ni de texte codé en dur (mobile) |
| Données personnelles | Case dédiée dans le modèle de PR ; consentements historisés ; géolocalisation approximative |

---

## 4. Conventions de l'API

### 4.1 Structure et nommage

| Élément | Convention | Exemple |
| --- | --- | --- |
| Architecture | `routes → middleware → controller → service → model` ; **pas de DI, pas de Repository** | — |
| Dossiers | `kebab-case` | `src/middleware/` |
| Fichiers | `xxx.service.ts`, `xxx.controller.ts`, `xxx.model.ts`, `xxx.validator.ts` | `token.service.ts` |
| Variables / fonctions | `camelCase` | `verifyAccessToken` |
| Modèles / types | `PascalCase` | `RefreshToken` |
| Contrôleurs | Minces, enveloppés par `catchAsync` ; aucune logique métier | — |
| Services | Toute la logique métier ; ne dépendent pas de `req`/`res` | `auth.service.ts` |
| Modèles | Aucune logique HTTP ; index déclarés dans le schéma | — |
| Validation | `validate(schémaJoi, 'body'|'query'|'params')` sur **toute** entrée | `validate(v.loginSchema)` |
| Erreurs | `AppError.badRequest|unauthorized|forbidden|notFound|conflict|unprocessable|tooManyRequests|internal` | `throw AppError.conflict('…','EMAIL_TAKEN')` |
| Documentation de route | JSDoc `@swagger` au-dessus de chaque route | — |
| Migrations | `scripts/migrations/` (migrate-mongo), `up` idempotent, `npm run migrate:create <nom>` | — |
| Seed | `npm run seed` (`scripts/seed-data.ts`) | — |
| Versionnement d'API | Préfixe `/api/v1` ; une rupture crée un nouveau préfixe et le label `breaking-change`. Une route est dépréciée avec l'en-tête `Deprecation: true` après une période de compatibilité | — |

### 4.2 Contenus localisés et pagination

- Contenus éditoriaux : champ `{ fr, en, es }` ; le **français est obligatoire**, EN/ES requis avant publication (statut `awaiting-translation`). La langue est négociée par `Accept-Language` (`API-FOOT-08`).
- Pagination par page : `?page=1&limit=20` (limite par défaut 20, **max 100**) → `{ items, total, page, totalPages, hasMore, nextCursor }`.
- Pagination par **curseur opaque** pour les flux longs ou temps réel (`nextCursor`, `API-FOOT-06`) : fil de groupe, notifications, journal d'audit.

### 4.3 Clés Redis (convention)

| Préfixe | Usage |
| --- | --- |
| `jwt:bl:<jti>` | Liste noire d'access tokens (TTL = durée restante) |
| `rl:<limiteur>:` | Compteurs de rate limit |
| `login:fail:<emailHash>` / `login:lock:<emailHash>` | Échecs et verrous de connexion |
| `totp:used:<adminId>:<compteur>` | Anti-rejeu TOTP (90 s) |
| `cache:v1:<domaine>:<hash>` | Cache-aside (`getOrSet`, tags) |
| `dedupe:<userId>:<type>:<refId>` | Déduplication de notifications (24 h) |
| `ub:` | Préfixe global cible de toutes les clés (proposé) |

---

## 5. Format des réponses et des erreurs

### 5.1 Succès

```json
{ "success": true, "data": { "…": "…" } }
```

Créations : `201` ; suppression sans contenu : `204` sans corps. Helpers : `ok(res, data)`, `created(res, data)`, `noContent(res)`.

Page de liste :

```json
{ "success": true, "data": { "items": [], "total": 0, "page": 1, "totalPages": 1, "hasMore": false, "nextCursor": null } }
```

### 5.2 Erreur

```json
{
  "success": false,
  "error": {
    "code": "RATE_LIMITED",
    "message": "Trop de tentatives, réessayez dans 15 minutes",
    "details": { "retryAfterSeconds": 540, "scope": "ip" },
    "traceId": "3f2c9d1e-0b6a-4d77-9c4a-7a1e5b2f8c10"
  }
}
```

`details` est facultatif ; la pile d'appels n'apparaît **jamais en production**. En-têtes utiles : `X-Request-Id` (et `X-Trace-Id`), `Retry-After`, `RateLimit-*`.

### 5.3 Codes HTTP

| Statut | Usage | Code d'erreur typique |
| --- | --- | --- |
| 200 / 201 / 202 / 204 | Succès / création / accepté (traitement asynchrone) / sans contenu | — |
| 400 | Requête malformée | `BAD_REQUEST` |
| 401 | Authentification absente, invalide ou expirée | `UNAUTHORIZED`, `TOKEN_EXPIRED`, `TOKEN_INVALID`, `TOKEN_REVOKED`, `REFRESH_INVALID`, `REFRESH_EXPIRED`, `REFRESH_REUSED`, `BAD_CREDENTIALS`, `TOTP_REQUIRED`, `TOTP_INVALID`, `SESSION_EXPIRED_INACTIVITY` |
| 403 | Authentifié mais non autorisé | `FORBIDDEN`, `FORBIDDEN_ROLE`, `CORS`, `REACCEPT_REQUIRED`, `MODULE_DISABLED`, `ACCOUNT_RESTRICTED` |
| 404 | Ressource inexistante | `NOT_FOUND`, `ROUTE_NOT_FOUND` |
| 409 | Conflit métier | `CONFLICT`, `DUPLICATE`, `EMAIL_TAKEN`, `LEGAL_VERSION_OUTDATED`, `MESSAGE_IN_PROGRESS` |
| 410 | Jeton à usage unique invalide | `INVITE_INVALID` |
| 413 | Corps trop volumineux | `PAYLOAD_TOO_LARGE` |
| 422 | Validation métier échouée | `VALIDATION_ERROR`, `CONTENT_MODERATED`, `LOCATION_UNRESOLVED` |
| 426 | Version d'application trop ancienne | `UPGRADE_REQUIRED` |
| 429 | Limite ou quota dépassé | `RATE_LIMITED`, `QUOTA_EXCEEDED`, `ACCOUNT_LOCKED`, `EXPORT_TOO_SOON`, `COMMUNITY_RATE_LIMIT`, `TOO_MANY_STREAMS` |
| 500 | Erreur inattendue (toujours journalisée avec `traceId`) | `INTERNAL_ERROR` |
| 501 | Non implémenté | `NOT_IMPLEMENTED` |
| 503 | Maintenance, dépendance externe indisponible | `MAINTENANCE`, `SERVICE_UNAVAILABLE`, `AI_UNAVAILABLE` |

Les codes sont **stables** : le mobile et l'admin branchent leur comportement dessus (écrans système A-03 à A-10, redirection vers la connexion, compte à rebours de 429). Le catalogue complet à jour est l'objet de `API-PLAT-07`.

### 5.4 Distinction 429

- `RATE_LIMITED` : fenêtre glissante (120/min en lecture, 10/15 min sur l'authentification…).
- `QUOTA_EXCEEDED` : quota métier journalier (assistant, wallpapers) avec `{ limit, used, resetsAt }`.
- `ACCOUNT_LOCKED` : verrouillage progressif de connexion avec `retryAfterSeconds`.

---

## 6. Conventions du mobile Flutter

### 6.1 Structure

```
lib/
  core/        constants, error (Failure), network (Chopper), services, theme, utils, widgets
  di/          injection.dart, register_module.dart, injection.config.dart (généré)
  features/<nom>/
    domain/        entities, repositories (contrats), usecases
    data/          models (JSON), datasources (remote, local), repositories (impl)
    presentation/  bloc (event, state, bloc), pages, widgets
  l10n/        ARB + code généré
  routes/      app_router.dart (go_router)
  main.dart
```

### 6.2 Règles

| Règle | Détail |
| --- | --- |
| Dépendances | `presentation → domain ← data`; le domaine est du Dart pur |
| Erreurs | `Either<Failure, T>` (fpdart) ; jamais d'exception brute vers l'UI |
| BLoC | États **immuables** (`Equatable`) ; événements nommés au passé (`PlayersRequested`) ; un use case = une action métier |
| Textes | **Uniquement via les ARB** (`app_fr.arb` modèle) ; lint contre les chaînes en dur |
| Couleurs, espacements, typographies | **Uniquement via `core/theme`** (`app_colors`, `app_spacing`, `app_typography`) |
| Widgets partagés | Dans `core/widgets` |
| Formatage | `dart format --line-length 100` (hors `lib/l10n`) ; `flutter analyze --fatal-warnings` |
| Codegen | `make codegen` (build_runner : injectable, json_serializable, chopper, drift) |
| Contrôle local | `make check` = analyse + formatage + tests |
| Environnements | `--dart-define=APP_ENV=development|staging|production` ; `make run-dev` |
| Vérifications UI | Clair **et** sombre, mobile **et** tablette ; zones tactiles ≥ **48 dp** ; respecter les animations des planches ZE |
| Tests | `bloc_test` + `mocktail` ; mocks centralisés `test/helpers/mocks.dart` ; nommage `should … when …` |
| Modèle de référence | `lib/features/players` : copier sa structure pour toute nouvelle fonctionnalité |

### 6.3 Les quatre états d'écran

Chaque écran gère `chargement`, `contenu`, `vide`, `erreur` (`MOB-FND-26`), en plus des états système globaux (hors-ligne, 5xx, 429, maintenance, mise à jour forcée).

---

## 7. Conventions du back-office React

| Règle | Détail |
| --- | --- |
| Pages | `XxxPage` en `export default`, chargées en `lazy` |
| Composants | Export **nommé** ; styles par tokens Tailwind (`bg-surface`, `text-primary`…), **jamais de couleur en dur** |
| Appels HTTP | Uniquement dans `src/api/*.api.ts` ; alias `@/` pour `src/` |
| Données serveur | TanStack Query (clés `['players', { q, page }]`, `staleTime` 30 s, pas de retry sur 4xx) |
| État global | Zustand (`authStore`, `uiStore`) |
| Formulaires | React Hook Form + Zod, messages en français |
| Rôles | `ProtectedRoute allowedRoles` en plus du RBAC de l'API ; `lib/navigation.ts` est la source unique du menu et des routes |
| Jeton d'accès | **Jamais persisté** (mémoire) |
| Interface | **Français uniquement** ; catalogue de textes figé ; formats Intl français |
| Thème | Clair **et** sombre (`[data-theme="dark"]`), sans flash |
| Accessibilité | Labels, focus visible, ARIA ; axe en CI |
| Commandes | `npm run lint && npm run format:check && npm run typecheck && npm test` ; `npm run test:e2e` (Playwright) |

---

## 8. Git, commits et pull requests

### 8.1 Branches

| Branche | Rôle |
| --- | --- |
| `main` | Production (protégée) ; chaque merge déploie et reçoit un tag `vAAAAMMJJ.N` |
| `dev` | Intégration / staging (protégée) ; cible des PR et de Dependabot |
| `feat/<n°issue>-<slug>` | Fonctionnalité (ex. `feat/123-inscription-email`) |
| `fix/…`, `refactor/…`, `test/…`, `docs/…`, `chore/…`, `ci/…` | Autres natures |

Ne **jamais** pousser directement sur `dev` ou `main`.

### 8.2 Commits (Conventional Commits)

Format : `type(scope): sujet`

- Types : `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`, `revert`.
- Sujet **≤ 100 caractères**, à l'impératif, **sans majuscule initiale**, sans point final.
- Exemples : `feat(auth): ajoute la rotation du refresh token`, `fix(calendar): corrige le fuseau des matchs reportés`.
- Un hook `commit-msg` (Husky + commitlint) valide chaque commit ; la CI revalide tous les commits d'une PR et son titre.

### 8.3 Pull request

1. Branche créée **depuis `dev`**.
2. Implémenter en suivant la liste **Tâches** de l'issue, écrire les **Tests à écrire**, vérifier chaque **Critère d'acceptation**.
3. Contrôles locaux (voir les commandes de chaque dépôt).
4. PR **vers `dev`** avec le modèle fourni, `Closes #N`, **captures clair + sombre** pour toute UI.
5. Cocher les cases de l'issue au fur et à mesure ; **mentionner dans la PR tout écart** par rapport à l'issue.
6. Fusion en **squash** (le titre de la PR devient le commit).
7. Après fusion : vérifier que le pipeline `dev` (staging) est vert.

### 8.4 Labels du dépôt

`bug`, `enhancement`, `documentation`, `refactor`, `maintenance`, `performance`, `security`, `rgpd`, `i18n`, `ux-ui`, `tests`, `ci-cd`, `docker`, `backend`, `admin`, `flutter`, `dependencies`, `dependabot`, `breaking-change`, `release`, `wip`, `triage`, `high-priority`, ainsi que `module:*` (`module:auth`, `jeux`, `fantasy`, `communaute`, `calendrier`, `ia`, `notifications`, `wallpapers`, `passport`, `goat`, `moderation`, `plateforme`, `supervision`, `systeme`, `design-system`…). Les labels `priorite:*`, `taille:*` et `type:*` sont posés par la création du backlog.

---

## 9. Internationalisation

| Aspect | Règle |
| --- | --- |
| Langues | **FR, EN, ES** au lancement ; bascule dynamique **sans redémarrage** |
| Langue par défaut | Français (modèle `app_fr.arb`) |
| Mobile | ARB uniquement ; `LocaleCubit` : langue système, bascule manuelle persistée, synchronisation avec le compte ; contrôle CI des clés manquantes ; golden tests sur 3 langues |
| API | Contenus éditoriaux `{ fr, en, es }` ; négociation par `Accept-Language` ; messages d'erreur localisés (`API-AUTH-44`) ; e-mails et notifications dans la langue de l'utilisateur ; assistant IA : détection automatique de la langue de la question |
| Admin | **Français uniquement** pour l'interface ; édition **trilingue** des contenus (composant `TrilingualTextEditor`, indicateur de complétion) |
| Dates et heures | Stockées en **UTC** ; affichées dans le fuseau de l'utilisateur ; jour de défi dans le fuseau de référence `Europe/Madrid` (jour de quota en UTC) ; formats Intl localisés |
| Pluriels et genres | Gérés par les ARB (ICU) ; jamais de concaténation de phrases |
| Traductions manquantes | Statut `awaiting-translation` ; publication bloquée tant que EN/ES manquent (workflow de traduction `API-FOOT-55`) |

---

## 10. Accessibilité

| Exigence | Valeur |
| --- | --- |
| Contraste | Couples texte/fond conformes **WCAG AA** dans les deux thèmes |
| Zones tactiles | CDC : ≥ 44×44 px ; **règle du projet : ≥ 48 dp** |
| Texte dynamique | Respect de la taille de police système ; échelle testée (`MOB-FND-36`) |
| Mouvement réduit | Animations réduites ou supprimées si l'option système est active (tokens de mouvement, `MOB-ZE`) |
| Lecteurs d'écran | VoiceOver / TalkBack : sémantique sur les éléments clés ; labels explicites |
| Couleur seule | Jamais le seul vecteur d'information (Guess the Player : flèches ▲▼ et symboles en plus du vert/jaune/rouge) |
| Clavier (admin) | Navigation complète, focus visible, raccourcis (Ctrl K), ARIA ; axe automatisé en CI (`ADM-FND-19`) |
| Formulaires | Validation à la sortie du champ, claviers adaptés, prévention des erreurs |
| Zone du pouce | Actions principales accessibles à une main (planches ZE) |

---

## 11. Design system et tokens

| Token | Clair | Sombre | Usage |
| --- | --- | --- | --- |
| `primary` / garnet | `#A50044` | `#C4265E` | Marque, actions primaires |
| `secondary` / navy | `#004D98` | `#4C86C9` | Accents, liens |
| `accent` / gold | `#EDBB00` | `#EDBB00` | Badges, mises en avant |
| `background` | `#FFFFFF` | `#121218` | Fond général |
| `surface` | `#F7F7F9` | `#1E1E27` | Cartes et composants |
| `text-primary` | `#1A1A2E` | `#F2F2F5` | Texte principal |
| `text-secondary` | `#595959` | `#A0A0AE` | Légendes |
| `success` / `error` / `warning` | `#1E8E5A` / `#D64545` / `#E0A400` | `#3CBE82` / `#E86C6C` / `#F0C24B` | États fonctionnels |

- Typographie : **Barlow Condensed** (titres, scores) et **Inter** (texte), échelle ~1,25 (display, h1, h2, h3, body-large, body, caption).
- Espacements sur grille **4/8 px** ; rayons 12-16 px sur les cartes ; ombres douces en clair, bordures subtiles en sombre.
- Les tokens sont **partagés** entre le mobile (`core/theme`) et l'admin (`src/index.css` + Tailwind).
- Aucune reprise de logo, écusson ou maillot officiel.

---

## 12. Retrouver l'information dans le backlog

### 12.1 Anatomie d'une issue

Titre `[CODE] …`, jalon = phase, labels `priorite:*`, `taille:*`, `type:*`, `module:*`. Chaque issue contient :

| Section | Contenu |
| --- | --- |
| Contexte / objectif | Pourquoi, valeur utilisateur |
| Maquettes | Liens vers les captures clair/sombre (écrans concernés) |
| Règles de gestion | Valeurs chiffrées, seuils, formules |
| Contrats d'API / données | Routes, schémas, collections, index |
| Tâches | Cases à cocher à suivre |
| Critères d'acceptation | Ce qui doit être vrai pour clore |
| Tests à écrire | Cas unitaires, intégration, sécurité |
| Dépendances | Issues à fermer avant (peuvent être dans un autre dépôt) |
| Références | Sections de CDC |

Types d'issues : `ecran`, `fonctionnel`, `api`, `donnees`, `tests`, `infra`, `securite`, `ux`, `performance`, `rgpd`, `i18n`, `doc`. Tailles : `XS` 0,25 j, `S` 0,5 j, `M` 1 j, `L` 2 j, `XL` 3,5 j.

### 12.2 Lire un code d'issue

```
API-JEUX-05      →  dépôt API · épopée JEUX (Guess the Player & Quiz) · 5e issue
MOB-D-12         →  dépôt mobile · épopée D (Guess the Player) · 12e issue
ADM-WF-03        →  dépôt admin · épopée WF (Questions de quiz) · 3e issue
```

### 12.3 Table des épopées

| Dépôt | Épopées |
| --- | --- |
| **API** (471 issues) | `AUTH` identité et RGPD · `CAL` calendrier · `COMM` carte et groupes · `FANT` Fantasy et Masia · `FOOT` données football et contenu · `GOAT` comparateur · `IA` assistant · `JEUX` Guess + Quiz + streaks + points · `MODER` modération · `NOTIF` notifications · `PASS` Passport · `PLAT` plateforme, qualité, exploitation · `WALL` wallpapers |
| **Mobile** (599) | `FND` socle · `A` lancement et système · `B` onboarding et auth · `C` accueil · `D` Guess the Player · `E` Quiz · `F` historique · `G` GOAT · `H` Fantasy · `I` Masia · `J` carte · `K` groupes · `L` calendrier · `M` wallpapers · `N` assistant · `O` notifications · `P` Passport · `Q` paramètres · `ZA` à `ZE` design system |
| **Admin** (252) | `FND` socle · `ADS` design system · `WA` authentification · `WB` tableau de bord et recherche · `WC` joueurs · `WD` matchs · `WE` anecdotes · `WF` questions de quiz · `WG` modération · `WH` supervision · `WI` comptes, config, notifications · `WJ` utilisateurs et évolutions |

### 12.4 Correspondance fonctionnalités ↔ épopées

Voir le tableau de la section 10 de `01-vue-ensemble.md` (F01 à F24 → épopées API, mobile, admin).

### 12.5 Où est quoi, par question

| Je cherche… | Je regarde… |
| --- | --- |
| La prochaine issue à prendre | Jalon le plus ancien non terminé → P0 → P1 → P2 → ordre des codes, en vérifiant les **Dépendances** |
| Une règle chiffrée | La section « Règles de gestion » de l'issue ou le document `features/Fxx` |
| Une route et son contrat | `swagger.json` (dépôt API) + document `Fxx` (tableau « Contrats d'API ») |
| Un modèle de données | `src/models/*.ts`, `docs/DATABASE.md`, section « Modèle de données » du document `Fxx` |
| Un écran | `docs/maquettes/ecrans/<lettre>/` (mobile) ou `<WA…>` (admin) ; codes `C-01`, `WA-04`… |
| Une décision d'architecture | `docs/adr/` du dépôt concerné |
| Le plan et les dates | `docs/pilotage/PLAN_REALISATION.md` et le classeur Excel de suivi |
| Une décision ou un risque à trancher | Feuille « Décisions et risques » du classeur ; les issues avec « à confirmer » |
| Comment lancer un contrôle local | Section « Commandes » du `CLAUDE.md` de chaque dépôt |
| Ce qui est déjà codé | Le code du dépôt ; sinon c'est spécifié mais non implémenté |

### 12.6 Cas de conflit

- Issue ≠ code existant → **l'issue fait foi**, mais le dire dans la PR.
- Issue ≠ autre dépôt (par exemple un contrat d'API différent entre `MOB-…` et `API-…`) → le signaler explicitement plutôt que de contourner.
- Issue ≠ CDC → l'issue fait foi (elle intègre les arbitrages), sauf pour les exigences non fonctionnelles où le CDC reste la référence.
- Information absente → ne pas inventer : poser la question ou lister l'hypothèse dans la PR.

---

## 13. Questions fréquentes de nouveau développeur

**Quelle pile exacte pour l'API ?** Express 4 + TypeScript strict + Mongoose/MongoDB (replica set) + Redis + BullMQ + node-cron + PM2. Les mentions NestJS/Prisma/PostgreSQL des CDC sont périmées.

**Où ajouter une route ?** Dans `src/routes/index.ts` (avec JSDoc `@swagger`), un validateur Joi dans `src/validators`, un contrôleur mince, un service, puis `npm run export:swagger` et un parcours k6 dans `tests/load/lib.js`.

**Comment ajouter une fonctionnalité mobile ?** Copier `lib/features/players` (domain/data/presentation), enregistrer les dépendances avec les annotations Injectable, lancer `make codegen`, ajouter la route dans `app_router.dart`, les textes dans les trois ARB et les tests (`bloc_test`, `mocktail`).

**Comment ajouter un écran d'administration ?** Page `XxxPage` lazy, entrée dans `lib/navigation.ts` avec ses rôles, appels dans `src/api/xxx.api.ts`, données via TanStack Query, formulaires RHF + Zod.

**Pourquoi mon commit est-il refusé ?** Le sujet commence par une majuscule, dépasse 100 caractères ou n'utilise pas un type autorisé.

**Pourquoi la CI échoue sur le contrat OpenAPI ?** `swagger.json` n'est pas à jour : lancer `npm run export:swagger` et committer le résultat.

**Puis-je lancer un test de charge `stress` en production ?** Non : uniquement en local ou sur staging.

**Où mettre un secret ?** Jamais dans Git : `.env.<env>` sur le VPS (droits 600) ou secret d'environnement GitHub ; voir `04-deploiement-et-cicd.md` et `03-securite-et-rgpd.md`.

**Que faire si une règle manque dans l'issue ?** Ne pas inventer : poser la question, ou lister l'hypothèse dans la PR et la marquer « (proposé) » dans la documentation.
