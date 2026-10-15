> **MOB-FND-29** · Infrastructure · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

`main.dart` contient l'initialisation Firebase commentée et `firebase_options.dart` est généré par FlutterFire CLI mais non versionné. Les paquets `firebase_core/messaging/crashlytics/performance` sont déjà au `pubspec.yaml`.

## ✅ Objectif

Initialiser Firebase correctement pour chacun des trois flavors, sans secret dans le dépôt.

## 📐 Règles de gestion

- Trois applications Firebase (dev/staging/prod) par plateforme ; `firebase_options_<flavor>.dart` générés avec `flutterfire configure --out`.
- Secrets CI : `GOOGLE_SERVICES_JSON_<ENV>` et `GOOGLE_SERVICE_INFO_PLIST_<ENV>` restaurés au build (le dépôt ignore déjà ces fichiers).
- `Firebase.initializeApp` dans `bootstrap` avec timeout 5 s ; échec → mode dégradé (pas de push/analytics) mais l'app démarre.
- Collecte désactivée en dev (`setCrashlyticsCollectionEnabled(false)`, performance, analytics) ; en prod l'analytics n'est activé qu'après consentement (voir issue analytics).

## 🛠️ Tâches

- [ ] Générer et injecter les options par flavor ; sélection via `AppConfig.firebaseOptions`.
- [ ] Appliquer le plugin Google Services Gradle par flavor (`src/<flavor>/google-services.json`).
- [ ] Phases de build iOS copiant le bon `GoogleService-Info.plist`.
- [ ] Mettre à jour les workflows (restauration de secrets conditionnelle, déjà partiellement présente).
- [ ] Documenter dans `docs/DEPLOYMENT.md` la création des 3 projets.

## ✔️ Critères d'acceptation

- [ ] Étant donné flavor staging quand l'app démarre alors Firebase est initialisé avec le projet staging.
- [ ] Étant donné l'absence de fichier de config alors l'app démarre et journalise un avertissement.
- [ ] Étant donné le flavor dev alors aucune donnée n'est envoyée à Crashlytics.

## 🧪 Tests à écrire

- [ ] Test unitaire : sélection des options par flavor.
- [ ] Test unitaire : initialisation avec timeout (fake).
- [ ] Test CI : build sans secrets Firebase réussit en mode dégradé.

## 🔗 Dépendances

À réaliser après : `MOB-FND-01` · `MOB-FND-02` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §6.3
- CDC Flutter §1.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
