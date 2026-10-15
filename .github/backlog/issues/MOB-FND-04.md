> **MOB-FND-04** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Les crashs et exceptions non gérées doivent être capturés, enrichis (flavor, version, identifiant pseudonymisé) et remontés (CDC Flutter §12.3), sans jamais montrer de message technique brut à l'utilisateur (§9.5). `main.dart` contient seulement un bloc Crashlytics commenté.

## ✅ Objectif

Installer un filet de sécurité unique : plus aucune erreur silencieuse ni écran rouge en production.

## 📐 Règles de gestion

- `runZonedGuarded` autour de `runApp` ; `FlutterError.onError` et `PlatformDispatcher.instance.onError` branchés sur `ErrorReporter`.
- `ErrorWidget.builder` remplacé en release par `BarcaErrorState` générique (« Petit souci de notre côté », voir ZC-03) ; la pile reste visible en debug.
- `AppBlocObserver` : en debug journalise les transitions ; en tous modes envoie `onError` à `ErrorReporter` avec le nom du Bloc.
- `ErrorReporter` : fatal = crash, non fatal = `recordError(fatal:false)` ; erreurs `ServerException` 5xx toujours reportées, `ValidationException` jamais.
- Contexte attaché : `env`, `appVersion+build`, `userId` technique (jamais e-mail), `locale`, `traceId` de la dernière requête.

## 🛠️ Tâches

- [ ] Créer `lib/core/observability/error_reporter.dart` (interface) + `crashlytics_error_reporter.dart` + `noop_error_reporter.dart` (dev/tests).
- [ ] Créer `lib/bootstrap.dart` exposant `Future<void> bootstrap(AppConfig)` qui installe les handlers avant `runApp`.
- [ ] Déplacer `_AppBlocObserver` dans `lib/core/observability/app_bloc_observer.dart`.
- [ ] Brancher `ErrorWidget.builder` conditionnel (`kReleaseMode`).
- [ ] Ajouter `userId` aux custom keys au login/logout (AuthBloc).
- [ ] Écrire `docs/adr/0004-gestion-erreurs-globale.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné une exception dans un `Future` non attendu quand elle survient alors `ErrorReporter.report` est appelé une fois avec `fatal:false`.
- [ ] Étant donné un widget qui jette à la construction en release quand il est affiché alors `BarcaErrorState` remplace l'écran rouge.
- [ ] Étant donné `ValidationException` quand un Bloc la capte alors rien n'est envoyé à Crashlytics.
- [ ] Étant donné le flavor dev quand une erreur survient alors `NoopErrorReporter` est utilisé.

## 🧪 Tests à écrire

- [ ] Test unitaire : `ErrorReporter` ignore les exceptions listées « non reportables ».
- [ ] Test widget : `ErrorWidget.builder` en mode release simulé.
- [ ] Test unitaire : `AppBlocObserver.onError` délègue au reporter.
- [ ] Test unitaire : custom keys sans e-mail.

## ♿ Accessibilité et i18n

- Clés ARB `error_generic_title`, `error_generic_body`.

## 🔗 Dépendances

À réaliser après : `MOB-FND-03` · `MOB-FND-02` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §12.3
- CDC Flutter §13.1
- CDC Flutter §9.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
