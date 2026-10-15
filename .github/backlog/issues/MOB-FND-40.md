> **MOB-FND-40** · Tests · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC §9.4/§10.1 exige des golden tests a minima sur deux tailles d'écran (petit/grand smartphone) et dans les deux thèmes ; `golden_toolkit` étant déprécié, on s'appuie sur `flutter_test` ou `alchemist`.

## ✅ Objectif

Un `goldenTest()` unique générant les variantes et stables entre machines.

## 📐 Règles de gestion

- Tailles : 360×640 (petit), 390×844 (grand), 834×1194 (tablette) ; thèmes clair/sombre ; locales fr/en/es sur les composants textuels.
- Polices chargées explicitement (Inter, Barlow Condensed en assets de test) pour éviter les écarts de rendu.
- Rendu stable : animations figées (`pump(Duration)`), `timeDilation=1`, pas d'images réseau.
- Goldens générés/mis à jour sous Linux CI ; fichiers dans `test/goldens/` ; seuil de tolérance 0,1 %.
- Commande `make goldens-update` ; PR qui change un golden doit joindre la capture.

## 🛠️ Tâches

- [ ] Créer `test/helpers/golden_test.dart` (`goldenTest(name, builder, variants)`).
- [ ] Ajouter assets de polices de test dans `test/fonts/`.
- [ ] Configurer un `LocalFileComparator` avec tolérance.
- [ ] Ajouter un job CI « goldens » (Ubuntu) et artefact des diffs.
- [ ] Documenter la procédure dans `docs/TESTING.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné un composant alors 6 images (2 thèmes × 3 tailles) sont générées.
- [ ] Étant donné un changement de rayon de 12 à 8 px alors le golden échoue.
- [ ] Étant donné la CI alors les goldens sont reproductibles bit à bit sur Linux.

## 🧪 Tests à écrire

- [ ] Test méta : `goldenTest` produit les noms attendus.
- [ ] Golden exemple : `BarcaButton.primary`.
- [ ] Test CI : échec si diff non committé.
- [ ] Test unitaire : tolérance.

## 🔗 Dépendances

À réaliser après : `MOB-FND-39` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.4
- CDC Flutter §10.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
