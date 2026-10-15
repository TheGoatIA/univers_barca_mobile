> **MOB-FND-26** · Fonctionnel · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC §9.5 exige que chaque écran alimenté par le réseau gère systématiquement 4 états avec les composants du design system, et que l'erreur distingue réseau et serveur.

## ✅ Objectif

Offrir un widget générique pour éviter de dupliquer le `switch` d'états dans chaque écran.

## 📐 Règles de gestion

- `ScreenStateView<T>` : `loading` → squelette (ZC-02), `data` → builder, `empty` → `BarcaEmptyState`, `error` → `BarcaErrorState` (variantes `offline`, `server`, `rateLimited`).
- `ViewStatus` : `initial|loading|success|empty|failure` + `Failure?` ; mapping Failure → variante d'erreur.
- Affichage du contenu en cache avec bandeau « derniers contenus » plutôt que l'erreur quand une valeur cache existe.
- Pull-to-refresh intégré optionnel.

## 🛠️ Tâches

- [ ] Créer `lib/core/widgets/screen_state_view.dart` et `view_status.dart`.
- [ ] Brancher sur `BarcaEmptyState`/`BarcaErrorState`/skeletons (groupe ZC).
- [ ] Migrer `players_page.dart`.
- [ ] Documenter dans `CONTRIBUTING.md` (Definition of Done §10.4).
- [ ] Ajouter des clés ARB `state_empty_default`, `state_error_default` (3 langues).

## ✔️ Critères d'acceptation

- [ ] Étant donné `failure` de type `NetworkFailure` alors l'état erreur hors-ligne s'affiche avec « Réessayer ».
- [ ] Étant donné `success` avec liste vide alors `BarcaEmptyState`.
- [ ] Étant donné un cache existant et le réseau KO alors le contenu et le bandeau s'affichent.

## 🧪 Tests à écrire

- [ ] Test widget : 5 statuts.
- [ ] Test widget : mapping Failure → variante.
- [ ] Golden : 4 états clair/sombre.
- [ ] Test widget : retry appelle le callback.

## 🔗 Dépendances

À réaliser après : `MOB-FND-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.5
- CDC Flutter §10.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
