> **MOB-FND-41** · Tests · Priorité **P1** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

`integration_test/app_test.dart` est un squelette. Le CDC §10.1 prévoit Patrol pour les parcours complets (onboarding, quiz, export calendrier) sur émulateur/simulateur, et si possible appareils réels.

## ✅ Objectif

Un premier parcours E2E automatisé et exécutable en CI.

## 📐 Règles de gestion

- Parcours socle : démarrage → splash → login (API mock) → shell 5 onglets → bascule langue → déconnexion.
- Patrol gère les dialogues natifs (permissions notifications, géoloc).
- API : serveur mock local (`shelf`) servant les fixtures ; flavor `dev` avec `API_BASE_URL` injecté.
- Exécution CI sur émulateur Android (nightly + PR labellisée `e2e`), iOS simulateur nightly.
- Captures d'écran automatiques en cas d'échec.

## 🛠️ Tâches

- [ ] Ajouter `patrol` et `patrol_cli` ; configurer `patrol.yaml`.
- [ ] Créer `integration_test/flows/launch_login_shell_test.dart`.
- [ ] Créer `test/support/mock_api_server.dart`.
- [ ] Ajouter workflow `.github/workflows/mobile-e2e.yml`.
- [ ] Documenter l'exécution locale (`patrol test`).

## ✔️ Critères d'acceptation

- [ ] Étant donné le serveur mock quand le parcours s'exécute alors tous les écrans sont atteints sans exception.
- [ ] Étant donné un échec alors une capture est publiée comme artefact.
- [ ] Étant donné le dialogue de permission alors Patrol l'accepte/refuse selon le scénario.

## 🧪 Tests à écrire

- [ ] E2E : lancement + login + onglets.
- [ ] E2E : bascule de langue.
- [ ] E2E : refus de permission.
- [ ] E2E : session expirée → retour login.

## 🔗 Dépendances

À réaliser après : `MOB-FND-39` · `MOB-FND-16` · `MOB-FND-15` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §10.1
- CDC Flutter §11.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
