> **MOB-ZC-15** · Écran · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Courbe avec aire, courbes comparées, barres et barres comparatives (Possession, Tirs, Corners : deux équipes côte à côte).

## ✅ Objectif

`BarcaLineChart`, `BarcaBarChart`, `BarcaVersusBars`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZC-04` — Visualisation de données
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__desktop_light.webp?raw=true' width='330' alt='ZC-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__desktop_dark.webp?raw=true' width='330' alt='ZC-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__mobile_light.webp?raw=true' width='230' alt='ZC-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__mobile_dark.webp?raw=true' width='230' alt='ZC-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 10 » · « Graphiques » · « Courbes, barres, anneaux, radars et cartes de chaleur — mêmes couleurs de marque, lisibles en clair et en sombre, avec légendes explicites. » · « Courbes et barres » · « Courbe avec aire » · « Courbes comparées » · « Barres » · « Barres comparatives » · « Possession » · « Tirs » · « Corners » · « Anneaux, radars et chaleur » · « Anneau segmenté » · « 2 340 » · « Radar (GOAT / Academy) » · « Activité (série) » · « Mini-courbes » · « Utilisateurs » · « Erreurs »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-22](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-22%5D%22) · [MOB-ZC-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-14%5D%22) · [MOB-ZC-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-16%5D%22) · [MOB-ZC-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-17%5D%22)

## 📐 Règles de gestion

- Courbe : trait 2,5 px lissé (courbe de Bézier), aire en dégradé primary 24 % → 0, points au toucher ; comparée : 2 séries.
- Barres : largeur 16, rayon haut 6, espace 12 ; comparatives : barre gauche garnet, droite navy, valeurs en bout.
- Valeurs manquantes : trou, pas d'interpolation ; échelle 0 → max arrondi.
- Données vides → `BarcaEmptyState` compact.

## 🛠️ Tâches

- [ ] Créer `barca_line_chart.dart`, `barca_bar_chart.dart`, `barca_versus_bars.dart` basés sur fl_chart.
- [ ] Modèle `ChartSeries(label, points, color)`.
- [ ] Tooltip au toucher.
- [ ] Gérer l'état vide.
- [ ] Tests et goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné 2 séries, alors la légende affiche les 2 libellés.
- [ ] Étant donné Possession 62 %/38 %, alors les barres sont proportionnelles.
- [ ] Étant donné aucune donnée, alors l'état vide s'affiche.

## 🧪 Tests à écrire

- [ ] Widget : points.
- [ ] Widget : proportions.
- [ ] Widget : vide.
- [ ] Golden : courbes et barres clair/sombre.

## 🔗 Dépendances

À réaliser après : `MOB-ZC-14` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §4.5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
