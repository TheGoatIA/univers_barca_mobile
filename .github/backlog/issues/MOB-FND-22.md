> **MOB-FND-22** · Fonctionnel · Priorité **P0** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC §5.1/§1.2 : les actions d'écriture pertinentes (ex. tentative de quiz validée localement) sont mises en file et rejouées au retour du réseau ; l'IA conserve un message en file pour retry manuel.

## ✅ Objectif

Garantir qu'aucune action utile n'est perdue et qu'aucune n'est rejouée deux fois.

## 📐 Règles de gestion

- `PendingAction` : `id` (uuid), `type` (enum enregistré), `payload`, `idempotencyKey`, `createdAt`, `attempts`, `status` (`pending|inflight|failed|done`).
- Rejeu séquentiel par type, FIFO, déclenché par `ReconnectedEvent`, au `resumed` et au démarrage ; backoff 5 s / 30 s / 5 min, abandon après 5 tentatives (statut `failed`, visible et relançable).
- Chaque rejeu envoie `Idempotency-Key` (le backend doit l'accepter : dépendance API à confirmer).
- Erreur 4xx métier (409/422) : action marquée `failed` sans nouvel essai, événement `ActionRejected` vers l'UI du module.
- Actions interdites hors-ligne (non mises en file) : vote GOAT, chat de groupe, défi du jour. Elles affichent l'état hors-ligne.
- Purge des actions `done` > 24 h ; purge totale au logout.

## 🛠️ Tâches

- [ ] Créer `lib/core/sync/sync_service.dart`, `action_handler.dart` (interface par type), `pending_action_repository.dart`.
- [ ] Enregistrer les handlers par `@injectable` multi-binding (`Map<String,ActionHandler>`).
- [ ] Écouter `ConnectivityCubit` et `WidgetsBindingObserver`.
- [ ] Exposer `Stream<int> pendingCount` pour un badge éventuel.
- [ ] Verrou (mutex) pour empêcher deux boucles de rejeu.
- [ ] Documenter le contrat d'idempotence dans `docs/OFFLINE.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné 3 actions en file quand le réseau revient alors elles sont rejouées dans l'ordre une seule fois.
- [ ] Étant donné un 409 au rejeu alors l'action passe `failed` sans réessai.
- [ ] Étant donné l'app tuée pendant un rejeu alors l'action `inflight` est repassée `pending` au démarrage.
- [ ] Étant donné un logout alors la file est vidée.

## 🧪 Tests à écrire

- [ ] Test unitaire : ordre FIFO.
- [ ] Test unitaire : backoff.
- [ ] Test unitaire : récupération `inflight`.
- [ ] Test unitaire : mutex (2 déclenchements simultanés).
- [ ] Test unitaire : action interdite refusée.

## 🔗 Dépendances

À réaliser après : `MOB-FND-18` · `MOB-FND-21` · `MOB-FND-10` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §5.1
- CDC Flutter §5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
