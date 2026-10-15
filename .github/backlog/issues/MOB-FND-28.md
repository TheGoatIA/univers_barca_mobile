> **MOB-FND-28** · Fonctionnel · Priorité **P1** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC §6.3 : observer `didChangeAppLifecycleState → resumed` pour resynchroniser légèrement le dashboard et l'assistant IA, et interrompre proprement les flux longs (ex. génération de wallpaper) en arrière-plan prolongé.

## ✅ Objectif

Un `AppLifecycleService` unique que les modules s'abonnent.

## 📐 Règles de gestion

- `resumed` après > 5 min d'arrière-plan : rafraîchit les caches expirés (TTL), jamais tout re-télécharger.
- `paused` > 2 min : annule les flux réseau annulables (SSE/long polling) ; au retour, nouvelle vérification de statut.
- Déclenche aussi le rejeu de la file `PendingActions` et le rafraîchissement du jeton si < 30 s.
- Émet un événement analytics `app_resumed` (sans données personnelles).

## 🛠️ Tâches

- [ ] Créer `lib/core/lifecycle/app_lifecycle_service.dart` (`WidgetsBindingObserver`, `Stream<AppLifecycleEvent>`).
- [ ] Enregistrer en `@lazySingleton` et l'initialiser dans `bootstrap`.
- [ ] Fournir l'interface `ResumeAware` pour les Blocs.
- [ ] Tests avec `tester.binding.handleAppLifecycleStateChanged`.
- [ ] Brancher `SyncService` et `TokenRefresher` sur l'événement `resumed`.
- [ ] Documenter les seuils dans `docs/OFFLINE.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné 6 min en arrière-plan quand l'app revient alors le dashboard est rafraîchi une fois.
- [ ] Étant donné 30 s en arrière-plan alors aucune requête n'est lancée.
- [ ] Étant donné un flux annulable en cours et 3 min de pause alors il est annulé.

## 🧪 Tests à écrire

- [ ] Test unitaire : seuils 5 min / 2 min (fake clock).
- [ ] Test unitaire : abonnements multiples.
- [ ] Test widget : lifecycle simulé.

## 🔗 Dépendances

À réaliser après : `MOB-FND-20` · `MOB-FND-22` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §6.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
