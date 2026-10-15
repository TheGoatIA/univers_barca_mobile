> **MOB-FND-03** · Infrastructure · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC Flutter §4.2 et §13 exigent une journalisation locale structurée, avec masquage des données sensibles et aucun jeton ni contenu de conversation en clair vers des services tiers. Le package `logger` est injecté mais utilisé sans configuration.

## ✅ Objectif

Fournir `AppLogger` unique, niveau piloté par la config, avec redaction automatique et sortie vers Crashlytics (breadcrumbs).

## 📐 Règles de gestion

- Niveaux : `trace/debug/info/warning/error/fatal` ; seuil par flavor (cf. AppConfig).
- Redaction : clés `authorization`, `access_token`, `refresh_token`, `password`, `email`, `content` (messages IA), `lat`, `lng` remplacées par `***` ; e-mail partiellement masqué `b***@exemple.com`.
- Chaque entrée porte `traceId` (corrélation requête) et `screen` quand connus.
- Sortie console (debug uniquement), buffer circulaire de 500 entrées en mémoire pour le rapport de bug, breadcrumbs Crashlytics pour `info+` (jamais `trace/debug`).

## 🛠️ Tâches

- [ ] Créer `lib/core/observability/app_logger.dart` (interface) et `logger_impl.dart` (package `logger`).
- [ ] Créer `lib/core/observability/redactor.dart` avec liste de clés configurable et tests.
- [ ] Créer `AppLogOutput` (console, mémoire, Crashlytics).
- [ ] Remplacer `Logger()` dans `register_module.dart` par `AppLogger`.
- [ ] Interdire `print`/`debugPrint` via la règle `avoid_print` dans `analysis_options.yaml`.
- [ ] Documenter les conventions de message (`[module] action: résultat`).

## ✔️ Critères d'acceptation

- [ ] Étant donné un log contenant `{password:'x'}` quand il est émis alors la sortie contient `password: ***`.
- [ ] Étant donné le flavor prod quand `logger.debug()` est appelé alors rien n'est émis.
- [ ] Étant donné 600 logs quand le buffer est lu alors seuls les 500 derniers sont présents.

## 🧪 Tests à écrire

- [ ] Test unitaire : redaction récursive sur Map/List imbriquées.
- [ ] Test unitaire : masquage d'e-mail.
- [ ] Test unitaire : filtrage par niveau selon la config.
- [ ] Test unitaire : le buffer circulaire évince les plus anciennes entrées.

## 🔗 Dépendances

À réaliser après : `MOB-FND-02` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §4.2
- CDC Flutter §13
- CDC Flutter §12.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
