> **MOB-FND-37** · Performance · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Cibles : démarrage à froid < 2 s (CDC §12), dashboard < 2 s en 4G / < 1 s en cache (Global §3.1), 60 fps (120 Hz si disponible) avec seules animations `transform`/`opacity` (ZE-01).

## ✅ Objectif

Mesurer et protéger la performance perçue de façon continue.

## 📐 Règles de gestion

- Budget frame : 16,6 ms (60 Hz) / 8,3 ms (120 Hz) ; frame « jank » > 16 ms, « frozen » > 700 ms.
- `FrameTimingMonitor` (`SchedulerBinding.addTimingsCallback`) agrège le % de frames jank par écran → trace Performance `frame_jank_<route>`.
- Règles de code : `const` systématique, `RepaintBoundary` autour des animations, pas de `Opacity` animé sur grands arbres, `ListView.builder` + `itemExtent` quand connu, pagination des listes.
- Profilage : `flutter run --profile` + DevTools à chaque nouvelle feature (DoD §10.4).
- Taille de l'application < 80 Mo (Global §3.1) vérifiée en CI (`flutter build apk --analyze-size`).

## 🛠️ Tâches

- [ ] Créer `lib/core/performance/frame_timing_monitor.dart`.
- [ ] Ajouter un script `scripts/check_app_size.sh` + étape CI avec seuil.
- [ ] Activer les lints `prefer_const_constructors`, `prefer_const_literals_to_create_immutables`.
- [ ] Documenter `docs/PERFORMANCE.md` (checklist).
- [ ] Ajouter un test d'intégration de scroll mesurant les frames (`traceAction`).

## ✔️ Critères d'acceptation

- [ ] Étant donné un défilement de liste de 200 éléments alors moins de 1 % de frames jank sur appareil de référence.
- [ ] Étant donné un build release alors l'APK < 80 Mo ou la CI échoue.
- [ ] Étant donné le démarrage à froid alors la trace `app_start_cold` p75 < 2 s.

## 🧪 Tests à écrire

- [ ] Test unitaire : agrégation des timings.
- [ ] Test d'intégration : scroll avec `IntegrationTestWidgetsFlutterBinding.traceAction`.
- [ ] Test CI : taille.
- [ ] Test unitaire : seuils jank/frozen.

## 🔗 Dépendances

À réaliser après : `MOB-FND-27` · `MOB-FND-30` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §12
- CDC Global §3.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
