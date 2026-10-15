> **MOB-FND-10** · Fonctionnel · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC §4.2 prévoit des tentatives automatiques sur erreurs réseau transitoires, jamais sur les 4xx métier.

## ✅ Objectif

Absorber les micro-coupures mobiles sans doublonner d'écritures.

## 📐 Règles de gestion

- Max 2 nouvelles tentatives (3 appels au total), délais 300 ms puis 900 ms + jitter ±20 %.
- Rejouables : `SocketException`, `TimeoutException`, 502/503/504 ; jamais 4xx, jamais 500.
- Méthodes idempotentes (GET/HEAD/PUT/DELETE) uniquement ; POST seulement avec en-tête `Idempotency-Key` explicite (file hors-ligne).
- Respecter `Retry-After` pour 503 si ≤ 5 s ; sinon échec immédiat.
- Timeouts : connexion 10 s, réception 20 s (30 s pour endpoints IA).

## 🛠️ Tâches

- [ ] Créer `lib/core/network/interceptors/retry_interceptor.dart`.
- [ ] Paramétrer via `RetryPolicy` (const) dans `lib/core/network/retry_policy.dart`.
- [ ] Configurer les timeouts du `http.Client` sous-jacent.
- [ ] Brancher en 4e position.
- [ ] Journaliser chaque tentative (`warning`).

## ✔️ Critères d'acceptation

- [ ] Étant donné deux timeouts puis un succès sur GET quand l'appel est fait alors l'appel réussit et 3 requêtes ont été émises.
- [ ] Étant donné un POST sans Idempotency-Key en échec réseau alors aucune nouvelle tentative.
- [ ] Étant donné un 422 alors aucune nouvelle tentative.
- [ ] Étant donné 3 échecs consécutifs alors l'erreur est propagée à ErrorMapping.

## 🧪 Tests à écrire

- [ ] Test unitaire (client mock) : table de cas statut × méthode.
- [ ] Test unitaire : délais avec horloge fake.
- [ ] Test unitaire : Retry-After respecté.
- [ ] Test unitaire : jitter borné.

## 🔗 Dépendances

À réaliser après : `MOB-FND-09` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §4.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
