> **MOB-FND-47** · Documentation · Priorité **P2** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

`docs/ARCHITECTURE.md` décrit déjà le gabarit mais diverge du CDC (5 onglets avec Profil, Sentry vs Crashlytics). Plusieurs décisions du socle doivent être tracées (CDC Global §6.7).

## ✅ Objectif

Garder la doc alignée au code et au CDC.

## 📐 Règles de gestion

- ADR à rédiger : 0004 gestion globale des erreurs, 0005 mise à jour forcée, 0006 Firebase vs Sentry, 0007 golden tests, 0008 SQLCipher/Dart 3.10.
- `ARCHITECTURE.md` : 5 onglets Accueil/Jeux/Historique/Fantasy/Communauté, diagrammes réseau (chaîne d'intercepteurs dans l'ordre Auth→Locale→Logging→Retry→ErrorMapping), flux de refresh.
- Nouvelles pages : OFFLINE, DATABASE, I18N, ACCESSIBILITY, PERFORMANCE, TELEMETRY, ANALYTICS.
- CHANGELOG mis à jour par release.

## 🛠️ Tâches

- [ ] Rédiger les ADR au format existant (`docs/adr/000x-*.md`).
- [ ] Mettre à jour `docs/ARCHITECTURE.md` et le README.
- [ ] Créer les pages thématiques listées.
- [ ] Ajouter un lien depuis CONTRIBUTING.
- [ ] Relire avec la checklist DoD.

## ✔️ Critères d'acceptation

- [ ] Étant donné l'ARCHITECTURE alors les onglets correspondent au CDC.
- [ ] Étant donné un ADR alors il contient contexte, décision, conséquences.
- [ ] Étant donné le README alors chaque page doc est liée.

## 🧪 Tests à écrire

- [ ] Revue : liens Markdown valides (outil de lint).
- [ ] Revue : cohérence avec le code.
- [ ] Revue : orthographe FR.
- [ ] Revue : numérotation ADR.

## 🔗 Dépendances

À réaliser après : `MOB-FND-46` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §6.7

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
