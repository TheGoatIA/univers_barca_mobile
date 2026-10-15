> **MOB-FND-05** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC Flutter §13.1 définit six exceptions métier et le traitement UI attendu pour chacune. Le dépôt n'a qu'un `Failure` générique (`lib/core/error/failure.dart`). Les repositories retournent `Either<Failure,T>` (CONTRIBUTING).

## ✅ Objectif

Disposer d'une hiérarchie complète exceptions (couche data) → `Failure` (domaine) → message UI localisé.

## 📐 Règles de gestion

- Exceptions : `NetworkUnavailableException` (absence de connexion/timeout), `UnauthorizedException` (401 après échec du refresh), `ValidationException` (400/422, `fieldErrors: Map<String,String>`), `ConflictException` (409, `code`), `RateLimitedException` (429, `retryAfter: Duration?`), `ServerException` (5xx, `traceId`).
- Failures correspondantes : `NetworkFailure`, `UnauthorizedFailure`, `ValidationFailure`, `ConflictFailure`, `RateLimitedFailure`, `ServerFailure`, `UnknownFailure`.
- Format d'erreur API : `{success:false,error:{code,message,details,traceId}}` ; `traceId` conservé dans l'exception pour le support.
- Traitement UI : réseau → cache puis `BarcaErrorState` hors-ligne ; 401 → déconnexion + `/auth/login` ; validation → erreurs sous les champs ; 409 → message contextualisé (ex. « Composition déjà verrouillée pour cette semaine ») ; 429 → bouton « Réessayer » désactivé jusqu'à `retryAfter` (ex. 00:42, voir ZC-03) ; 5xx → écran erreur serveur + report.

## 🛠️ Tâches

- [ ] Créer `lib/core/error/exceptions.dart` (sealed class `AppException`).
- [ ] Étendre `lib/core/error/failure.dart` avec les sous-classes et `props`.
- [ ] Créer `lib/core/error/failure_mapper.dart` : `Failure fromException(Object e)`.
- [ ] Créer un `extension FailureL10n on Failure` produisant la clé ARB, dans `lib/core/error/failure_l10n.dart`.
- [ ] Créer un helper `Future<Either<Failure,T>> guard<T>(Future<T> Function())` utilisé par les repositories.
- [ ] Migrer `players_repository_impl.dart` vers `guard`.
- [ ] Ajouter ARB `errors_conflict`, `errors_rate_limited`, `errors_unauthorized` (3 langues).

## ✔️ Critères d'acceptation

- [ ] Étant donné une réponse 429 avec `Retry-After: 42` quand elle est mappée alors `RateLimitedFailure.retryAfter == 42 s`.
- [ ] Étant donné une réponse 422 avec `details` quand elle est mappée alors `ValidationFailure.fieldErrors` contient les champs.
- [ ] Étant donné une `SocketException` quand `guard` l'attrape alors le résultat est `Left(NetworkFailure)`.
- [ ] Étant donné le repository players quand l'API renvoie 500 alors `Left(ServerFailure)` avec `traceId`.

## 🧪 Tests à écrire

- [ ] Test unitaire : un cas par exception (6) dans `failure_mapper_test.dart`.
- [ ] Test unitaire : `guard` ne laisse jamais remonter d'exception.
- [ ] Test unitaire : égalité Equatable des Failures.
- [ ] Test unitaire : message ARB renvoyé pour chaque Failure.

## ♿ Accessibilité et i18n

- Messages jamais techniques : pas de stack ni de code HTTP affichés.

## 🔗 Dépendances

À réaliser après : `MOB-FND-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §13.1
- CDC Backend (format d'erreur)

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
