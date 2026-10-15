> **MOB-FND-06** · Sécurité · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Les jetons sont lus directement via `FlutterSecureStorage` dans `AuthInterceptor` et `AppAuthenticator` avec des clés en dur. Le CDC §13 impose Keychain/Keystore, jamais SharedPreferences.

## ✅ Objectif

Encapsuler l'accès aux jetons derrière une interface testable et durcir les options plateforme.

## 📐 Règles de gestion

- Clés : `access_token`, `refresh_token`, `access_expires_at` ; JWT d'accès 15 min, refresh à rotation (API).
- iOS : `KeychainAccessibility.first_unlock_this_device` (pas de sauvegarde iCloud) ; Android : `encryptedSharedPreferences: true`, exclusion de la sauvegarde auto (`android:allowBackup=false` ou `fullBackupContent` excluant le fichier).
- Au `logout`/`logout-all`/401 définitif : suppression des trois clés en une opération.
- À la première ouverture après réinstallation iOS : purge des jetons orphelins (flag `first_run_done` dans SharedPreferences).

## 🛠️ Tâches

- [ ] Créer `lib/core/storage/token_storage.dart` (interface) et `secure_token_storage.dart`.
- [ ] Créer `TokenPair` (accessToken, refreshToken, accessExpiresAt) immuable.
- [ ] Enregistrer en `@LazySingleton(as: TokenStorage)`.
- [ ] Retirer `FlutterSecureStorage` des intercepteurs/authenticator au profit de `TokenStorage`.
- [ ] Configurer les options Android/iOS dans `register_module.dart`.
- [ ] Ajouter `InMemoryTokenStorage` pour les tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné un login réussi quand `save(pair)` est appelé alors `read()` renvoie la même paire.
- [ ] Étant donné `clear()` quand `read()` est appelé alors le résultat est `null`.
- [ ] Étant donné une réinstallation iOS quand l'app démarre alors aucun jeton ancien n'est lisible.
- [ ] Étant donné une inspection du code quand on cherche `FlutterSecureStorage` alors il n'apparaît que dans `secure_token_storage.dart`.

## 🧪 Tests à écrire

- [ ] Test unitaire avec `InMemoryTokenStorage` : save/read/clear.
- [ ] Test unitaire : `isAccessExpired(now)` avec marge de 30 s.
- [ ] Test unitaire : `clear()` idempotent.
- [ ] Test d'intégration manuel iOS/Android : redémarrage de l'app conserve la session.

## 🔗 Dépendances

À réaliser après : `MOB-FND-02` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §13
- CDC Global §3.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
