# CLAUDE.md — Application mobile Univers Barça

Flutter 3.47.7 (Dart ≥ 3.9) — Clean Architecture feature-first : `domain` ← `data` ; `presentation` (BLoC) ; GetIt/Injectable, Chopper, Drift, go_router, fpdart `Either`, l10n FR/EN/ES. Modèle de référence : `lib/features/players`.

## Commandes
```bash
make setup                       # pub get + codegen + hooks
make codegen                     # build_runner (injectable, json_serializable, chopper, drift)
make check                       # analyse + formatage + tests
make run-dev                     # --dart-define=APP_ENV=development
```

## Conventions de code
- `dart format --line-length 100` (hors `lib/l10n`), `flutter analyze --fatal-warnings`.
- Textes uniquement via les ARB (`app_fr.arb` modèle, `app_en.arb`, `app_es.arb`) ; couleurs/espacements/typos uniquement via `core/theme` ; widgets partagés dans `core/widgets`.
- Erreurs : `Either<Failure, T>` ; un use case = une action métier ; BLoC avec états immuables (`Equatable`).
- Toujours vérifier clair/sombre et mobile/tablette ; zones tactiles ≥ 48 dp ; respecter les animations des planches ZE.

## Travailler à partir du backlog (issues GitHub)

Le backlog complet est dans les **issues de ce dépôt** (titre `[CODE] …`, jalon = phase, labels `priorite:*`, `taille:*`, `type:*`, `module:*`). Chaque issue contient contexte, maquettes (captures clair/sombre), règles de gestion, contrats d'API, tâches à cocher, critères d'acceptation et tests à écrire. **Les issues font foi** ; en cas de doute, ne pas inventer : poser la question ou lister l'hypothèse dans la PR.

### Choisir la prochaine issue (ordre à respecter)
1. Jalon le plus ancien non terminé : `Phase 0 — Socle technique` → `Phase 1 — MVP` → `Phase 2 — Communautaire & compétitif` → `Phase 3 — Fonctionnalités avancées`.
2. Dans le jalon : `priorite:P0` puis `P1` puis `P2`.
3. Dans la priorité : ordre des codes d'une épopée (`XXX-01`, `XXX-02`…), en vérifiant la section **« Dépendances »** : ne jamais commencer une issue dont une dépendance n'est pas fermée (une dépendance peut être dans un autre dépôt : codes `API-…`, `MOB-…`, `ADM-…`).
4. Ignorer les issues assignées à quelqu'un d'autre, `wip` ou `Bloqué` ; signaler tout point marqué « à confirmer » avant de coder (voir `docs/pilotage/` → feuille « Décisions et risques »).
Le plan global est dans `docs/pilotage/PLAN_REALISATION.md` et le suivi dans `docs/pilotage/Univers-Barca-Plan-de-realisation-et-suivi.xlsx`.

### Réaliser une issue
1. Lire **toute** l'issue, ouvrir les captures (liens d'images) et l'épopée parente ; lire les issues de dépendance.
2. Créer la branche depuis `dev` : `feat/<n°issue>-<slug>` (ou `fix/…`, `refactor/…`, `test/…`, `docs/…`).
3. Implémenter en suivant la liste **Tâches** ; écrire les **Tests à écrire** ; vérifier chaque **Critère d'acceptation**.
4. Commits Conventional Commits (`feat(scope): sujet` ≤ 100 car., sans majuscule initiale).
5. Lancer les contrôles locaux (voir « Commandes ») puis ouvrir une **PR vers `dev`** avec le modèle fourni, `Closes #N`, captures pour toute UI (clair + sombre). Ne jamais pousser directement sur `dev`/`main`.
6. Cocher les cases de l'issue au fur et à mesure ; mentionner dans la PR tout écart par rapport à l'issue.
7. Après fusion, vérifier que le pipeline `dev` (staging) est vert.

### Règles transverses
- Français pour issues, PR, commentaires et messages utilisateurs ; code en anglais.
- Aucune valeur de secret dans le dépôt. Respecter `CONTRIBUTING.md` et `docs/ARCHITECTURE.md`.
- Toute nouvelle route API met à jour Swagger (`npm run export:swagger`) **et** le scénario k6 correspondant (`tests/load`).
- Si l'issue contredit le code existant ou un autre dépôt, le dire explicitement plutôt que de contourner.
