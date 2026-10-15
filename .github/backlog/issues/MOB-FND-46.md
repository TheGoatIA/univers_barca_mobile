> **MOB-FND-46** · Tests · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC §1.2/§10.4 : aucune couleur ou taille codée en dur, aucun texte sans ARB. Aujourd'hui seules `flutter_lints` et le revue manuelle protègent la règle (`app_theme.dart` contient encore `Color(0xFFF3F4F6)` et des `BorderRadius.circular(12)`).

## ✅ Objectif

Rendre la règle vérifiable automatiquement.

## 📐 Règles de gestion

- `analysis_options.yaml` : `strict-casts`, `strict-inference`, `strict-raw-types`, `avoid_print`, `prefer_const_constructors`, `always_use_package_imports`.
- Règle de test `test/architecture/design_tokens_test.dart` : parcourt `lib/**/presentation` et `lib/core/widgets` et échoue si `Color(0x` ou `Colors.` ou `fontSize:` littéral apparaît hors `lib/core/theme`.
- Règle `no_hardcoded_strings` : `Text('…')` littéral détecté par regex dans la présentation (hors tests).
- Test d'architecture : `domain` n'importe jamais `data`, `presentation` ni `package:flutter`.
- Fichier d'exceptions justifiées `test/architecture/allowlist.txt`.

## 🛠️ Tâches

- [ ] Mettre à jour `analysis_options.yaml`.
- [ ] Créer `test/architecture/*.dart` (tokens, chaînes, dépendances de couches).
- [ ] Corriger les violations existantes (`app_theme.dart`, `app_button.dart`, `app_error_view.dart`).
- [ ] Ajouter le job CI.
- [ ] Documenter dans CONTRIBUTING.

## ✔️ Critères d'acceptation

- [ ] Étant donné `Color(0xFF123456)` dans un widget alors le test d'architecture échoue.
- [ ] Étant donné `Text('Valider')` dans une page alors le test échoue.
- [ ] Étant donné un import `data` depuis `domain` alors le test échoue.

## 🧪 Tests à écrire

- [ ] Test d'architecture : tokens.
- [ ] Test d'architecture : chaînes.
- [ ] Test d'architecture : couches.
- [ ] Test : allowlist respectée.

## 🔗 Dépendances

À réaliser après : `MOB-FND-23` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §1.2
- CDC Flutter §10.4
- CDC Flutter §2.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
