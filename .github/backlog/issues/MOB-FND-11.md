> **MOB-FND-11** · Fonctionnel · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Dernier intercepteur (le plus proche de la réponse brute). Il transforme les statuts HTTP et le format `{success:false,error:{code,message,details,traceId}}` en exceptions métier consommées de façon homogène par les datasources.

## ✅ Objectif

Plus aucun code de statut manipulé en dehors de cet intercepteur.

## 📐 Règles de gestion

- 400/422 → `ValidationException` (`details` Joi → `fieldErrors`) ; 401 → `UnauthorizedException` ; 403 → `ForbiddenException` ; 404 → `NotFoundException` ; 409 → `ConflictException` ; 429 → `RateLimitedException` (en-tête `Retry-After`) ; ≥500 → `ServerException`.
- Erreurs de transport → `NetworkUnavailableException`.
- Corps non JSON (proxy, HTML) → `ServerException` générique, jamais d'affichage du corps.
- Le 401 n'est mappé qu'après échec de l'Authenticator.

## 🛠️ Tâches

- [ ] Créer `lib/core/network/interceptors/error_mapping_interceptor.dart`.
- [ ] Ajouter `ForbiddenException` et `NotFoundException` à `exceptions.dart`.
- [ ] Parser l'enveloppe via `ApiErrorDto`.
- [ ] Brancher en 5e position.
- [ ] Mettre à jour `players_remote_datasource.dart` pour ne plus tester `response.isSuccessful`.

## ✔️ Critères d'acceptation

- [ ] Étant donné un 409 `{code:'LINEUP_LOCKED'}` alors `ConflictException(code:'LINEUP_LOCKED')`.
- [ ] Étant donné une page HTML 502 alors `ServerException` sans le HTML.
- [ ] Étant donné un 401 après refresh échoué alors `UnauthorizedException`.
- [ ] Étant donné un 200 alors la réponse passe inchangée.

## 🧪 Tests à écrire

- [ ] Test unitaire par statut (400,401,403,404,409,422,429,500,503).
- [ ] Test unitaire : corps non JSON.
- [ ] Test unitaire : `details` → `fieldErrors`.
- [ ] Test unitaire : ordre de la chaîne complète (golden de la liste).

## 🔗 Dépendances

À réaliser après : `MOB-FND-10` · `MOB-FND-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §4.2
- CDC Flutter §13.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
