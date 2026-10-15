> **MOB-FND-42** · Infrastructure · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

La CI impose aujourd'hui ≥ 60 % global (CONTRIBUTING). Le CDC §10.2 vise Domain 90 %, Presentation (Blocs) 85 %, Data 70 %, widgets critiques en qualitatif ; §11.1 : analyse, tests avec seuils bloquants, build debug des 2 plateformes.

## ✅ Objectif

Rendre les seuils par couche bloquants et visibles dans les PR.

## 📐 Règles de gestion

- Seuils : `lib/features/*/domain` ≥ 90 %, `*/presentation/bloc` ≥ 85 %, `*/data` ≥ 70 % ; global ≥ 60 % jusqu'à la phase 1 puis 75 %.
- Exclusions : `*.g.dart`, `injection.config.dart`, `l10n/**`, `firebase_options*.dart`.
- Script `scripts/check_coverage.dart` lisant `lcov.info` et vérifiant chaque couche.
- Étapes : `dart format --set-exit-if-changed`, `flutter analyze --fatal-warnings`, `check_arb`, tests+couverture, goldens, builds debug Android/iOS.
- Commentaire de PR avec la couverture (Codecov déjà présent : `codecov.yml`).

## 🛠️ Tâches

- [ ] Créer `scripts/check_coverage.dart` et l'intégrer à `mobile-ci.yml`.
- [ ] Mettre à jour `codecov.yml` (flags par couche).
- [ ] Ajouter le job `check-l10n` et `goldens`.
- [ ] Mettre à jour `CONTRIBUTING.md` (seuils).
- [ ] Ajouter un badge de couverture au README.

## ✔️ Critères d'acceptation

- [ ] Étant donné une PR faisant passer le domain à 85 % alors la CI échoue en nommant la couche.
- [ ] Étant donné un fichier `.g.dart` alors il n'est pas compté.
- [ ] Étant donné la PR alors un commentaire Codecov est posté.

## 🧪 Tests à écrire

- [ ] Test unitaire : parseur lcov.
- [ ] Test unitaire : agrégation par couche.
- [ ] Test CI : PR de démonstration sous le seuil.
- [ ] Test unitaire : exclusions glob.

## 🔗 Dépendances

À réaliser après : `MOB-FND-39` · `MOB-FND-40` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §10.2
- CDC Flutter §11.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
