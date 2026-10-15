> **MOB-FND-39** · Tests · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

`test/helpers/mocks.dart` et `test_data.dart` ne couvrent que `players`. Le CDC §10.1 exige une pile complète (flutter_test, bloc_test, mocktail) et §10.2 des seuils de couverture par couche.

## ✅ Objectif

Réduire le boilerplate pour que chaque issue écran/BLoC écrive ses tests en quelques lignes.

## 📐 Règles de gestion

- `pumpApp(tester, widget, {locale, themeMode, size, textScale, authState})` enveloppant `MaterialApp` + localisations + thème + GoRouter factice + BlocProviders mockés.
- Mocks mocktail centralisés (`MockAuthBloc`, `MockTokenStorage`, `MockAppDatabase`, `FakeConnectivityCubit`) ; `registerFallbackValue` dans `flutter_test_config.dart`.
- `FakeClock` / `fakeAsync` pour TTL et timers.
- Fixtures JSON versionnées dans `test/fixtures/`.
- Base Drift mémoire : `createTestDatabase()`.
- Réseau : `MockClient` + builder `ChopperClient` de test.

## 🛠️ Tâches

- [ ] Créer `test/helpers/pump_app.dart`, `fakes.dart`, `fixtures.dart`, `test_database.dart`.
- [ ] Étendre `test/flutter_test_config.dart` (fonts de test, `GoogleFonts.config.allowRuntimeFetching=false`).
- [ ] Mettre à jour `test/TESTING_POLICY.md` (autoriser les tests de widgets/goldens, aujourd'hui exclus).
- [ ] Migrer les tests `players`.
- [ ] Ajouter `make test` / `make coverage`.

## ✔️ Critères d'acceptation

- [ ] Étant donné `pumpApp` avec locale `es` alors les textes sont espagnols.
- [ ] Étant donné `size: Size(390,844)` alors le viewport est 390×844.
- [ ] Étant donné `createTestDatabase()` alors la base est vide et isolée par test.

## 🧪 Tests à écrire

- [ ] Test unitaire des helpers eux-mêmes (pumpApp thème sombre).
- [ ] Test widget : `authState` injecté.
- [ ] Test : fixtures chargées.
- [ ] Test : `FakeClock`.

## 🔗 Dépendances

À réaliser après : `MOB-FND-23` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §10.1
- CDC Flutter §10.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
