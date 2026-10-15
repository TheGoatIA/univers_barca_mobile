> **MOB-FND-01** · Infrastructure · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC Flutter §11.2 impose trois flavors partageant le même code mais des configurations, icônes et identifiants d'application différents, pour qu'un build de développement ne soit jamais publié en production. Le dépôt n'a aujourd'hui qu'un seul `lib/main.dart` et un `.env`.

## ✅ Objectif

Pouvoir lancer et construire `dev`, `staging` et `prod` côte à côte sur un même appareil, avec nom, icône et identifiants propres.

## 📐 Règles de gestion

- Points d'entrée : `lib/main_dev.dart`, `lib/main_staging.dart`, `lib/main_prod.dart`, tous délégant à `bootstrap(AppConfig)` (voir issue bootstrap).
- Noms affichés : « Univers Barça Dev », « Univers Barça Staging », « Univers Barça » ; identifiants distincts `app.universbarca.mobile.dev` / `.staging` / `.mobile` (suffixe `applicationIdSuffix` Android, `PRODUCT_BUNDLE_IDENTIFIER` iOS via xcconfig).
- URL API : dev = machine locale/staging selon configuration, staging = `https://api-staging.univers-barca.app/api/v1`, prod = `https://api.univers-barca.app/api/v1`.
- Icônes : prod = dégradé garnet→navy, dev = vert, staging = or (voir maquette ZA-01 « Icône d'application »), générées par `flutter_launcher_icons` avec 3 configs (`flutter_launcher_icons-dev.yaml`, etc.).
- Aucun secret en dur : valeurs injectées par `--dart-define-from-file=config/<flavor>.json` (cf. ADR 0002).

## 🛠️ Tâches

- [ ] Créer `config/dev.json`, `config/staging.json`, `config/prod.json` (+ `config/*.example.json` versionnés, vrais fichiers ignorés par git).
- [ ] Ajouter les `productFlavors` dans `android/app/build.gradle(.kts)` (dimension `env`, `resValue app_name`, `applicationIdSuffix`).
- [ ] Créer les schémas Xcode `dev`/`staging`/`prod` et configurations `Debug-dev`, `Release-staging`… avec `ios/Flutter/*.xcconfig`.
- [ ] Créer les 3 jeux d'icônes (`assets/icons/{dev,staging,prod}/`) et les configs launcher.
- [ ] Ajouter des cibles `make run-dev`, `make build-staging-apk`, `make build-prod-aab` dans le Makefile.
- [ ] Mettre à jour `.github/workflows/mobile-ci.yml` et `mobile-deploy.yml` pour passer `--flavor` et `--dart-define-from-file`.
- [ ] Documenter dans `docs/DEPLOYMENT.md` et compléter l'ADR 0002.

## ✔️ Critères d'acceptation

- [ ] Étant donné les trois flavors installés quand l'utilisateur ouvre le lanceur alors trois icônes et trois noms distincts apparaissent.
- [ ] Étant donné `flutter run --flavor staging -t lib/main_staging.dart` quand l'app démarre alors `AppConfig.current.env == AppEnv.staging` et l'URL API staging est utilisée.
- [ ] Étant donné un build `prod` quand on inspecte le binaire alors aucun bandeau debug ni URL de dev n'est présent.
- [ ] Étant donné la CI quand une PR est ouverte alors le build de vérification compile au moins `dev` sur Android et iOS.

## 🧪 Tests à écrire

- [ ] Test unitaire : `AppConfig.fromEnvironment` lève une erreur claire si `API_BASE_URL` est absent.
- [ ] Test unitaire : chaque flavor expose une `apiBaseUrl` finissant par `/api/v1` sans slash final doublé.
- [ ] Test CI : script `scripts/check_flavors.sh` vérifie la présence des 3 fichiers `config/*.example.json`.
- [ ] Test manuel documenté : installer dev + prod simultanément sur un émulateur.

## ♿ Accessibilité et i18n

- Nom d'app localisé non requis (nom de marque identique FR/EN/ES).

## 📚 Références

- CDC Flutter §4.3
- CDC Flutter §11.2
- CDC Global §4.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
