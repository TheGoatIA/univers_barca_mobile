> **MOB-I-16** · Écran · Priorité **P1** · Taille **M** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Liste chronologique : Entraînement technique +3 global, Repos / récupération Fatigue −24, Entraînement physique +2 physique, Travail tactique +2 intelligence.

## ✅ Objectif

Permettre de relire chaque décision et son effet.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `I-10` — Historique des décisions
_Module : La Masia Academy_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-10_historique-des-decisions__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-10_historique-des-decisions__phone_light.webp?raw=true' width='230' alt='I-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-10_historique-des-decisions__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-10_historique-des-decisions__phone_dark.webp?raw=true' width='230' alt='I-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-10_historique-des-decisions__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-10_historique-des-decisions__tablet_light.webp?raw=true' width='330' alt='I-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-10_historique-des-decisions__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-10_historique-des-decisions__tablet_dark.webp?raw=true' width='330' alt='I-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « S3 » · « Entraînement technique » · « +3 global » · « S2 » · « Repos / récupération » · « Fatigue −24 » · « S1 » · « Entraînement physique » · « +2 physique » · « S0 » · « Travail tactique » · « +2 intelligence »

</details>

**Issues liées sur ce même écran :** [MOB-I-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-01%5D%22)

## 📐 Règles de gestion

- Un item par semaine, du plus récent au plus ancien, pagination par curseur (20).
- Chaque item : icône de décision, titre, effet résumé coloré, numéro de semaine.
- Accès via l'icône historique de I-05.
- Vide : 'Aucune décision pour l'instant'.

## 🔄 Comportement et états

- Hors-ligne : cache.

## 🛠️ Tâches

- [ ] Créer lib/features/academy/presentation/pages/decision_history_page.dart.
- [ ] Widget DecisionHistoryTile.
- [ ] Use case GetDecisionHistory.
- [ ] Pagination.
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné 4 décisions alors elles sont listées du plus récent au plus ancien.
- [ ] Étant donné aucune décision alors l'état vide.
- [ ] Étant donné 'Fatigue −24' alors il est jaune/vert selon règle.
- [ ] Étant donné la fin de liste alors page suivante.

## 🧪 Tests à écrire

- [ ] ordre chronologique inverse
- [ ] vide
- [ ] pagination
- [ ] résumé effet

## ♿ Accessibilité et i18n

- Lecture 'Semaine 3, Repos, fatigue moins 24'

## 🔗 Dépendances

À réaliser après : `MOB-I-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §3.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
