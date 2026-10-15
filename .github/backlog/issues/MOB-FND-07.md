> **MOB-FND-07** · Fonctionnel · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Premier intercepteur de la chaîne (ordre du CDC §4.2 : Auth, Locale, Logging, Retry, ErrorMapping). L'implémentation actuelle lit le jeton dans le stockage à chaque requête mais ne gère pas les routes publiques.

## ✅ Objectif

Ajouter l'en-tête `Authorization: Bearer` aux seules routes protégées, de façon performante et testable.

## 📐 Règles de gestion

- Routes publiques sans jeton : `POST /auth/{register,login,refresh,forgot-password,reset-password,verify-email}`, `/health`.
- Lecture du jeton depuis un cache mémoire (rafraîchi par `TokenStorage`), pas de lecture disque à chaque requête.
- Si `access_expires_at` < 30 s : déclenchement proactif du refresh (single-flight, voir issue Authenticator) avant l'envoi.
- Ne jamais ajouter l'en-tête vers un hôte différent de `apiBaseUrl` (anti-fuite).

## 🛠️ Tâches

- [ ] Refactorer `lib/core/network/interceptors.dart` : un fichier par intercepteur dans `lib/core/network/interceptors/auth_interceptor.dart`.
- [ ] Injecter `TokenStorage` et `AppConfig` par constructeur (`@injectable`).
- [ ] Implémenter la liste `publicPaths` (RegExp) dans `lib/core/network/public_routes.dart`.
- [ ] Ajouter la vérification d'hôte.
- [ ] Brancher dans `AppApiClient.create` en première position.
- [ ] Documenter l'ordre dans le fichier de client.

## ✔️ Critères d'acceptation

- [ ] Étant donné `POST /auth/login` quand la requête part alors aucun en-tête Authorization n'est ajouté.
- [ ] Étant donné `GET /users/me` avec jeton valide quand la requête part alors `Authorization: Bearer <jeton>` est présent.
- [ ] Étant donné un jeton expirant dans 10 s quand une requête part alors un refresh est effectué avant l'envoi.
- [ ] Étant donné une URL absolue vers un autre hôte quand elle passe l'intercepteur alors aucun jeton n'est ajouté.

## 🧪 Tests à écrire

- [ ] Test unitaire : routes publiques vs protégées (table de cas).
- [ ] Test unitaire : en-tête ajouté avec jeton.
- [ ] Test unitaire : pas d'en-tête hôte étranger.
- [ ] Test unitaire : refresh proactif déclenché une seule fois pour 5 requêtes parallèles.

## 🔗 Dépendances

À réaliser après : `MOB-FND-06` · `MOB-FND-02` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §4.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
