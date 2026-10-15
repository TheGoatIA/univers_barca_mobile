> **MOB-FND-34** · Infrastructure · Priorité **P1** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC Global §3.6 et Flutter §12.3 demandent une traçabilité de bout en bout (mobile → API) via OpenTelemetry. Le paquet `opentelemetry` est en dépendance `any` (version non fixée).

## ✅ Objectif

Créer des spans clients corrélés aux traces backend, sans impact visible sur les performances.

## 📐 Règles de gestion

- Fixer la version du paquet `opentelemetry` (retirer `any`) et vérifier la compatibilité Dart.
- Un span `HTTP <METHOD> <route>` par requête (attributs `http.method`, `http.status_code`, `http.route`, `net.offline`) ; propagation `traceparent` (cf. LoggingInterceptor).
- Spans applicatifs : `app.start`, `screen.load.<nom>`, `sync.replay`.
- Export OTLP/HTTP vers `otelEndpoint` (AppConfig) par lots de 20 spans ou 30 s, échantillonnage 10 % en prod, 100 % en dev ; désactivé sans consentement analytics.
- Aucune donnée personnelle dans les attributs ; `user.id` pseudonymisé.

## 🛠️ Tâches

- [ ] Créer `lib/core/observability/telemetry_service.dart` (+ implémentation OTel + noop).
- [ ] Créer `OtelSpanExporter` avec file bornée (200 spans) et abandon silencieux hors-ligne.
- [ ] Intégrer au `LoggingInterceptor`.
- [ ] Ajouter `Resource` : `service.name=univers-barca-mobile`, `service.version`, `deployment.environment`.
- [ ] Documenter la configuration collecteur dans `docs/TELEMETRY.md`.
- [ ] Test de charge : mesurer l'overhead (< 2 ms/requête).

## ✔️ Critères d'acceptation

- [ ] Étant donné une requête quand elle se termine alors un span avec le même `trace_id` que l'en-tête est créé.
- [ ] Étant donné hors-ligne alors les spans sont conservés jusqu'à 200 puis supprimés.
- [ ] Étant donné l'échantillonnage prod alors ~10 % des traces sont exportées.
- [ ] Étant donné consentement absent alors aucun export.

## 🧪 Tests à écrire

- [ ] Test unitaire : cohérence trace_id/span_id.
- [ ] Test unitaire : file bornée.
- [ ] Test unitaire : échantillonnage (graine fixe).
- [ ] Test unitaire : pas de PII.

## 🔗 Dépendances

À réaliser après : `MOB-FND-09` · `MOB-FND-30` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §3.6
- CDC Flutter §12.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
