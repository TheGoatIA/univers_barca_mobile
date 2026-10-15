> **MOB-FND-23** · Internationalisation · Priorité **P0** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

`app_fr/en/es.arb` ne contiennent que ~35 clés socle. Le CDC §8.3 impose que toute chaîne FR ait sa traduction EN/ES avant fusion, vérifiée par script CI. Les maquettes design system fournissent déjà une centaine de libellés (voir ZA-ZE).

## ✅ Objectif

Mettre en place la convention, les clés transverses complètes dans les 3 langues et le contrôle automatique.

## 📐 Règles de gestion

- Nommage `<module>_<écran>_<élément>` en snake_case (déjà `auth_login`, `common_ok`) ; pluriels ICU (`{count, plural, =0{Aucun jour} =1{1 jour} other{{count} jours}}`) ; placeholders typés ; `@clé.description` obligatoire pour les clés ayant un contexte.
- Clés transverses à livrer : `common_*` (valider, fermer, réessayer, continuer, partager, copier…), `errors_*` (6 exceptions), `network_*`, `empty_*`/`error_*` (états ZC-03), `toast_*`, `a11y_*`, `nav_*`, `permission_*`, `update_*`, `date_*`.
- Le français est la référence ; EN/ES traduits par le propriétaire ou outil, relus ; marqueur `@@x-translated:false` interdit en `main`.
- Formats : dates/heures/nombres via `intl` selon la locale (`DateFormat.yMMMEd`, `NumberFormat.compact`) ; fuseau de l'utilisateur pour les horaires de match (ex. « Sam. 24 oct. · 20:00 WAT »).
- Script `scripts/check_arb.dart` : mêmes clés dans les 3 fichiers, mêmes placeholders, aucun texte vide ; échoue la CI.

## 🛠️ Tâches

- [ ] Compléter `lib/l10n/app_{fr,en,es}.arb` avec les familles de clés ci-dessus.
- [ ] Écrire `scripts/check_arb.dart` + cible `make check-l10n` + étape CI.
- [ ] Ajouter `l10n.yaml` : `nullable-getter: false`, `synthetic-package: false` (sortie committée).
- [ ] Ajouter une extension `context.l10n`.
- [ ] Ajouter la règle de lint personnalisée « pas de `Text('...')` littéral » (voir issue lint).
- [ ] Documenter le processus de traduction dans `docs/I18N.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné une clé ajoutée en FR seule alors `make check-l10n` échoue en nommant la clé.
- [ ] Étant donné `streakDaysCount` avec 0/1/12 alors les trois formes pluriel s'affichent dans chaque langue.
- [ ] Étant donné la locale `es` alors tous les écrans du socle sont traduits sans clé manquante.
- [ ] Étant donné une date de match alors le format suit la locale.

## 🧪 Tests à écrire

- [ ] Test unitaire : script check_arb (cas OK/KO).
- [ ] Test widget : pluriels ×3 langues.
- [ ] Test unitaire : formats de date par locale.
- [ ] Golden multi-locale de `BarcaEmptyState`.

## ♿ Accessibilité et i18n

- Pas de RTL requis.
- Textes jusqu'à 160 % sans troncature (voir ZE-04).

## 🔗 Dépendances

À réaliser après : `MOB-FND-24` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §8.1
- CDC Flutter §8.2
- CDC Flutter §8.3
- CDC Global §3.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
