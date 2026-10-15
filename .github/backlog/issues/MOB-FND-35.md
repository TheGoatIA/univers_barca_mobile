> **MOB-FND-35** · Fonctionnel · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Une version trop ancienne peut devenir incompatible avec l'API. Aucun mécanisme n'existe ; le CDC ne précise pas la source du seuil de version, à trancher (décision d'architecture).

## ✅ Objectif

Bloquer proprement une version non supportée et inciter à mettre à jour une version dépassée.

## 📐 Règles de gestion

- Deux seuils : `min_supported_version` (blocage plein écran) et `recommended_version` (bandeau fermable 7 jours).
- Source proposée : Firebase Remote Config (`firebase_remote_config`) avec valeurs par défaut embarquées ; alternative : endpoint d'API dédié (à créer côté API). Décision à consigner en ADR.
- Comparaison semver sur `package_info_plus` ; vérification au démarrage et au `resumed` (max 1 fois / 6 h).
- Écran de blocage : `BarcaEmptyState`-like « Mise à jour requise » + bouton vers le store (`url_launcher`), non contournable (pas de retour).
- Un 426 ou code `APP_VERSION_UNSUPPORTED` de l'API déclenche aussi l'écran.

## 🛠️ Tâches

- [ ] Créer `lib/core/update/update_gate.dart`, `version_policy.dart`, `force_update_screen.dart`.
- [ ] Brancher dans `AppRouter` (redirection prioritaire).
- [ ] Ajouter `firebase_remote_config` ou client endpoint selon l'ADR.
- [ ] ARB FR/EN/ES.
- [ ] Liens stores par flavor/plateforme dans `AppConfig`.
- [ ] Écrire l'ADR `0005-mise-a-jour-forcee.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné version 1.0.0 et minimum 1.2.0 alors l'écran de blocage s'affiche et la navigation est impossible.
- [ ] Étant donné version 1.2.0 et recommandée 1.3.0 alors un bandeau fermable apparaît puis revient après 7 jours.
- [ ] Étant donné Remote Config indisponible alors les valeurs par défaut sont utilisées sans blocage.
- [ ] Étant donné une réponse 426 alors l'écran de blocage s'affiche.

## 🧪 Tests à écrire

- [ ] Test unitaire : comparaison semver (cas limites 1.10.0 vs 1.9.0).
- [ ] Test widget : écran de blocage sans retour.
- [ ] Test unitaire : fréquence de vérification.
- [ ] Test unitaire : repli par défaut.

## ♿ Accessibilité et i18n

- Clés ARB `update_required_title`, `update_required_body`, `update_cta`, `update_recommended_banner`.

## 🔗 Dépendances

À réaliser après : `MOB-FND-27` · `MOB-FND-15` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §11.3
- CDC Flutter §14.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
