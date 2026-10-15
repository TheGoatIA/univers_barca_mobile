# Déploiement mobile

## Règle

| Push sur | Déclenche                                            | Résultat                                                                                                        |
| -------- | ---------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `dev`    | `mobile-deploy.yml` (environnement GitHub `staging`) | APK/IPA staging, Firebase App Distribution (groupes `android-staging`, `ios-staging`), tag `staging-AAAAMMJJ.N` |
| `main`   | `mobile-deploy.yml` (environnement `production`)     | APK/IPA production, TestFlight, tag `vAAAAMMJJ.N`                                                               |

Version d'app : `version:` de `pubspec.yaml` (`--build-name`) ; numéro de build = `github.run_number` (`--build-number`). Version de déploiement : `AAAAMMJJ.N` (N = 1 + plus grand compteur déjà tagué le jour même).

## Pipeline

1. **verify** : format, `build_runner`, analyse, tests, calcul de version.
2. **android** : APK release (signé si keystore fourni, sinon clé debug), artefact 14 j, Firebase App Distribution si configuré.
3. **ios** : build sans signature (vérification) ; si certificat fourni : IPA signée + TestFlight.
4. **tag** puis **notify** (Slack optionnel).

Sans les secrets ci-dessous, le pipeline reste **vert** : il construit et publie les artefacts sans distribuer.

## Secrets (par environnement GitHub)

| Secret                                                                                                       | Usage                              |
| ------------------------------------------------------------------------------------------------------------ | ---------------------------------- |
| `API_BASE_URL_STAGING` · `API_BASE_URL_PROD`                                                                 | URL de l'API injectée dans `.env`  |
| `ANDROID_KEYSTORE_BASE64` · `ANDROID_KEYSTORE_PASSWORD` · `ANDROID_KEY_ALIAS` · `ANDROID_KEY_PASSWORD`       | Signature Android                  |
| `GOOGLE_SERVICES_JSON_BASE64`                                                                                | `android/app/google-services.json` |
| `FIREBASE_APP_ID_ANDROID` · `FIREBASE_SERVICE_ACCOUNT_JSON`                                                  | Firebase App Distribution          |
| `IOS_CERTIFICATE_BASE64` · `IOS_CERTIFICATE_PASSWORD` · `IOS_PROVISIONING_PROFILE` · `IOS_KEYCHAIN_PASSWORD` | Signature iOS                      |
| `APP_STORE_CONNECT_API_KEY_ID` · `APP_STORE_CONNECT_API_ISSUER_ID` · `APP_STORE_CONNECT_API_KEY_CONTENT`     | Envoi TestFlight                   |
| `SLACK_WEBHOOK_URL`                                                                                          | Notification (optionnel)           |

Les fichiers déchiffrés sont supprimés en fin de job (`if: always()`).

## Configuration Firebase (à faire une fois)

1. Créer les projets Firebase (staging / production), enregistrer `app.universbarca.mobile` (Android) et l'identifiant iOS.
2. `flutterfire configure` → `lib/firebase_options.dart` (non versionné), décommenter l'initialisation dans `main.dart`.
3. Décommenter les plugins Gradle `google-services`, `crashlytics`, `firebase-perf` (`android/`).
4. Stocker les fichiers en secrets base64 (tableau ci-dessus).

## Publication sur les stores

Release manuelle depuis les artefacts de la CD (AAB : `make build-aab-prod`) ; fiche, captures et textes dans les issues « Publication ».
