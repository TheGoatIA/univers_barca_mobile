> **MOB-FND-09** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC §12.3 demande qu'un identifiant de corrélation généré côté client soit transmis à chaque requête et repris par le backend (logs + traces OpenTelemetry), et que le `traceId` reçu soit transmis au logger local.

## ✅ Objectif

Pouvoir relier un incident utilisateur à la trace serveur.

## 📐 Règles de gestion

- En-tête sortant `X-Request-Id` (UUID v4) + `traceparent` W3C (`00-<traceId32>-<spanId16>-01`) ; réponse : `traceId` lu dans l'en-tête ou dans `error.traceId`.
- Journalisation : méthode, chemin (sans query sensible), statut, durée en ms ; corps jamais journalisé en prod, tronqué à 2 Ko en dev avec redaction.
- Placé en 3e position ; lit la réponse brute avant ErrorMapping.
- Dernier `traceId` conservé dans `CorrelationContext` pour les rapports d'erreur.

## 🛠️ Tâches

- [ ] Créer `lib/core/network/interceptors/logging_interceptor.dart` et `correlation_context.dart`.
- [ ] Remplacer `HttpLoggingInterceptor` de Chopper par l'implémentation maison.
- [ ] Générer les identifiants avec le package `uuid`.
- [ ] Brancher le span OpenTelemetry (issue télémétrie) quand activé.
- [ ] Écrire les tests de redaction sur en-têtes (`Authorization`).

## ✔️ Critères d'acceptation

- [ ] Étant donné une requête quand elle part alors `X-Request-Id` et `traceparent` sont présents et cohérents.
- [ ] Étant donné une réponse d'erreur avec `traceId` alors `CorrelationContext.lastTraceId` est mis à jour.
- [ ] Étant donné le flavor prod alors aucun corps de requête n'est journalisé.
- [ ] Étant donné l'en-tête Authorization alors il apparaît `***` dans les logs.

## 🧪 Tests à écrire

- [ ] Test unitaire : format `traceparent` (regex).
- [ ] Test unitaire : redaction des en-têtes.
- [ ] Test unitaire : troncature 2 Ko.
- [ ] Test unitaire : propagation du traceId vers `CorrelationContext`.

## 🔗 Dépendances

À réaliser après : `MOB-FND-08` · `MOB-FND-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §4.2
- CDC Flutter §12.3
- CDC Global §3.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
