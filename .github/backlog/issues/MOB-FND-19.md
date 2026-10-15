> **MOB-FND-19** · Données · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC §5.2 impose des migrations versionnées. `schemaVersion = 1` au départ ; chaque feature ajoutera des tables, une mauvaise migration détruirait le cache et la file d'actions de l'utilisateur.

## ✅ Objectif

Mettre en place l'outillage (étapes, export de schéma, tests) avant la première évolution.

## 📐 Règles de gestion

- `MigrationStrategy` : `onCreate` = `createAll`, `onUpgrade` = `stepByStep` (drift) ; interdiction de `deleteAll` en prod.
- Schémas exportés dans `drift_schemas/drift_schema_v<N>.json` via `dart run drift_dev schema dump`.
- Tests générés `drift_dev schema generate` : migration de chaque version vers la dernière.
- `PendingActions` ne doit jamais perdre de lignes lors d'une migration.
- Sauvegarde défensive : en cas d'échec de migration, base renommée `.bak` et recréée (cache sans valeur), file d'actions exportée dans un log.

## 🛠️ Tâches

- [ ] Ajouter `drift_dev` build options (`databases`, `schema_dir`).
- [ ] Implémenter `AppMigrations` dans `lib/core/local_storage/migrations.dart`.
- [ ] Générer `test/generated_migrations/`.
- [ ] Écrire `test/core/local_storage/migration_test.dart` (v1 → v2 de démonstration).
- [ ] Ajouter une étape CI qui échoue si le schéma exporté diffère.
- [ ] Documenter la procédure « ajouter une colonne ».

## ✔️ Critères d'acceptation

- [ ] Étant donné une base v1 avec 3 actions en attente quand on migre vers v2 alors les 3 actions sont conservées.
- [ ] Étant donné un échec de migration alors la base est recréée et l'app démarre.
- [ ] Étant donné une PR modifiant une table sans nouveau schéma alors la CI échoue.

## 🧪 Tests à écrire

- [ ] Test de migration v1→vN générés.
- [ ] Test unitaire : fallback `.bak`.
- [ ] Test CI : diff de schéma.

## 🔗 Dépendances

À réaliser après : `MOB-FND-18` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §5.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
