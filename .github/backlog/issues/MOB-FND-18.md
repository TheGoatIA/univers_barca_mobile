> **MOB-FND-18** · Données · Priorité **P0** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC §5 prévoit `AppDatabase` avec `CachedMatches`, `CachedQuizQuestions`, `PendingActions`. Aucun fichier `lib/core/local_storage` n'existe encore (le cache vit dans SharedPreferences/rien).

## ✅ Objectif

Poser la base SQLite typée, réactive (Streams), prête à recevoir les caches des modules.

## 📐 Règles de gestion

- Tables socle v1 : `CachedMatches` (id, homeTeam, awayTeam, kickoffAt, payloadJson, cachedAt), `CachedQuizQuestions`, `CachedPlayers` (id, payloadJson, cachedAt), `CachedProfile` (userId, payloadJson, cachedAt), `PendingActions` (id uuid, type, payloadJson, idempotencyKey, createdAt, attempts, lastError, status), `LocalPrefs` (key, value, updatedAt).
- Un DAO par table avec `watch…()` (Stream) ; `insertOnConflictUpdate` pour l'upsert.
- Dates stockées en UTC (`DateTimeColumn` en epoch) ; JSON dans `payloadJson` pour l'affichage hors-ligne (snapshot complet).
- Base ouverte via `drift_flutter` en isolate (`NativeDatabase.createInBackground`) ; `AppDatabase.forTesting(NativeDatabase.memory())`.
- Chiffrement SQLCipher prévu mais bloqué (Dart ≥ 3.10) : ligne `TODO` tracée dans l'issue sécurité.

## 🛠️ Tâches

- [ ] Créer `lib/core/local_storage/app_database.dart` + `tables/*.dart` + `daos/*.dart`.
- [ ] Générer le code (`dart run build_runner build`) et committer les `*.g.dart`.
- [ ] Enregistrer `AppDatabase` en `@lazySingleton` dans `register_module.dart`.
- [ ] Créer `LocalDataCleaner` (vide toutes les tables sauf préférences d'appareil).
- [ ] Écrire un test par DAO sur base mémoire.
- [ ] Ajouter `docs/DATABASE.md` (schéma, TTL, volumétrie).

## ✔️ Critères d'acceptation

- [ ] Étant donné un match inséré deux fois alors une seule ligne subsiste (upsert).
- [ ] Étant donné `watchUpcomingMatches()` quand un match futur est inséré alors le Stream émet la nouvelle liste.
- [ ] Étant donné `LocalDataCleaner.clearUserData()` alors `CachedProfile` et `PendingActions` sont vides.
- [ ] Étant donné l'app hors-ligne alors la base s'ouvre sans erreur.

## 🧪 Tests à écrire

- [ ] Test DAO : upsert/ordre/watch pour chaque table.
- [ ] Test unitaire : `LocalDataCleaner`.
- [ ] Test unitaire : conversion UTC.
- [ ] Test de génération : `build_runner` sans diff dans la CI.

## 🔗 Dépendances

À réaliser après : `MOB-FND-02` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §5.1
- CDC Flutter §5.2
- CDC Flutter §5.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
