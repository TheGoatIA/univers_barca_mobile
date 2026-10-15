> **MOB-FND-13** · Données · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

L'API répond `{success:true,data}` et, pour les listes, `{items,total,page,totalPages,hasMore,nextCursor}`. `JsonToTypeConverter` actuel ne déballe pas `data` et sa map `factories` est vide.

## ✅ Objectif

Décoder une seule fois l'enveloppe et exposer des types `ApiPage<T>`.

## 📐 Règles de gestion

- `data` est extrait avant la fabrique du modèle ; `success:false` est routé vers ErrorMapping.
- `ApiPage<T>` : `items`, `total`, `page`, `totalPages`, `hasMore`, `nextCursor?`.
- Dates ISO 8601 UTC converties en `DateTime` local à l'affichage uniquement.
- Champs inconnus ignorés ; champ requis absent → `ServerException('contrat invalide')` journalisée.

## 🛠️ Tâches

- [ ] Refactorer `lib/core/network/json_type_converter.dart`.
- [ ] Créer `lib/core/network/api_page.dart` (freezed + `fromJson` générique).
- [ ] Créer un registre `ModelRegistry` alimenté par `@injectable`.
- [ ] Migrer `PlayerModel` et `players_remote_datasource.dart`.
- [ ] Écrire des jeux de réponses JSON dans `test/fixtures/api/`.

## ✔️ Critères d'acceptation

- [ ] Étant donné `{success:true,data:{…}}` alors le modèle est construit depuis `data`.
- [ ] Étant donné une page alors `hasMore` et `nextCursor` sont exposés.
- [ ] Étant donné un champ requis manquant alors `ServerException` est levée.
- [ ] Étant donné une liste vide alors `ApiPage.items` est vide sans erreur.

## 🧪 Tests à écrire

- [ ] Test unitaire : déballage objet.
- [ ] Test unitaire : déballage liste paginée.
- [ ] Test unitaire : champ manquant.
- [ ] Test unitaire : fixtures players.

## 🔗 Dépendances

À réaliser après : `MOB-FND-11` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend (enveloppe)
- CDC Flutter §2.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
