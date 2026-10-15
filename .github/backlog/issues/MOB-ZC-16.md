> **MOB-ZC-16** · Écran · Priorité **P2** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

Anneau segmenté (centre « 2 340 »), radar (GOAT / Academy), activité en carte de chaleur (série) et mini-courbes (Utilisateurs, Erreurs).

## ✅ Objectif

`BarcaDonutChart`, `BarcaRadarChart`, `BarcaHeatmap`, `BarcaSparkline`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZC-04` — Visualisation de données
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__desktop_light.webp?raw=true' width='330' alt='ZC-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__desktop_dark.webp?raw=true' width='330' alt='ZC-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__mobile_light.webp?raw=true' width='230' alt='ZC-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__mobile_dark.webp?raw=true' width='230' alt='ZC-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 10 » · « Graphiques » · « Courbes, barres, anneaux, radars et cartes de chaleur — mêmes couleurs de marque, lisibles en clair et en sombre, avec légendes explicites. » · « Courbes et barres » · « Courbe avec aire » · « Courbes comparées » · « Barres » · « Barres comparatives » · « Possession » · « Tirs » · « Corners » · « Anneaux, radars et chaleur » · « Anneau segmenté » · « 2 340 » · « Radar (GOAT / Academy) » · « Activité (série) » · « Mini-courbes » · « Utilisateurs » · « Erreurs »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-22](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-22%5D%22) · [MOB-ZC-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-14%5D%22) · [MOB-ZC-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-15%5D%22) · [MOB-ZC-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-17%5D%22)

## 📐 Règles de gestion

- Anneau : stroke 14, segments avec gap 3°, valeur centrale Barlow 28 tabulaire ; légende dessous.
- Radar : 5 à 8 axes, 3 niveaux concentriques, aire primary 20 % + contour 2 px.
- Heatmap : grille 7 × N jours, 5 niveaux d'intensité du primary (0 = surface-variant), cellule 14 px rayon 4, info au toucher.
- Sparkline : 24 px de haut, sans axes, point final surligné.

## 🛠️ Tâches

- [ ] Créer les 4 widgets dans `lib/core/widgets/charts/`.
- [ ] Interpolation d'intensité heatmap (5 niveaux).
- [ ] Gestion des séries multiples du radar.
- [ ] Tests et goldens.
- [ ] Accessibilité : table alternative `BarcaChartDataTable`.

## ✔️ Critères d'acceptation

- [ ] Étant donné 3 segments totalisant 2 340, alors le centre affiche « 2 340 ».
- [ ] Étant donné une heatmap de 28 jours, alors 28 cellules avec 5 niveaux.
- [ ] Étant donné un radar à 6 axes, alors 6 libellés.

## 🧪 Tests à écrire

- [ ] Widget : valeur centrale.
- [ ] Widget : niveaux heatmap.
- [ ] Widget : axes radar.
- [ ] Golden : quatre graphiques clair/sombre.

## ♿ Accessibilité et i18n

- Résumé textuel ; table alternative accessible au lecteur d'écran.

## 🔗 Dépendances

À réaliser après : `MOB-ZC-14` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §4.5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
