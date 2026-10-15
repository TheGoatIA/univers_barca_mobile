> **MOB-ZC-14** · Infrastructure · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

La planche Graphiques demande des courbes, barres, anneaux, radars et cartes de chaleur avec les couleurs de marque, lisibles en clair/sombre et avec légendes explicites. Utilisés par historique, GOAT, Masia, profil.

## ✅ Objectif

Choisir la lib (fl_chart), définir `BarcaChartTheme` et `BarcaLegend`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZC-04` — Visualisation de données
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__desktop_light.webp?raw=true' width='330' alt='ZC-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__desktop_dark.webp?raw=true' width='330' alt='ZC-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__mobile_light.webp?raw=true' width='230' alt='ZC-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-04_visualisation-de-donnees__mobile_dark.webp?raw=true' width='230' alt='ZC-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 10 » · « Graphiques » · « Courbes, barres, anneaux, radars et cartes de chaleur — mêmes couleurs de marque, lisibles en clair et en sombre, avec légendes explicites. » · « Courbes et barres » · « Courbe avec aire » · « Courbes comparées » · « Barres » · « Barres comparatives » · « Possession » · « Tirs » · « Corners » · « Anneaux, radars et chaleur » · « Anneau segmenté » · « 2 340 » · « Radar (GOAT / Academy) » · « Activité (série) » · « Mini-courbes » · « Utilisateurs » · « Erreurs »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-22](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-22%5D%22) · [MOB-ZC-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-15%5D%22) · [MOB-ZC-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-16%5D%22) · [MOB-ZC-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-17%5D%22)

## 📐 Règles de gestion

- Palette de séries : garnet, navy, or, success, puis variantes ; ≥ 3:1 vs fond ; jamais la couleur seule (motifs/marqueurs différents pour série 2+).
- Axes en caption, grille 1 px outline à 50 % ; animation d'entrée 480 ms `easeOutCubic`, désactivée en mouvement réduit.
- Légende explicite obligatoire (pastille + libellé), cible tactile ≥ 44 pt pour masquer/afficher une série.
- Tooltip au toucher avec valeur formatée localisée.

## 🛠️ Tâches

- [ ] Ajouter `fl_chart` aux dépendances (version figée).
- [ ] Créer `lib/core/widgets/charts/barca_chart_theme.dart`, `barca_legend.dart`, `chart_palette.dart`.
- [ ] Formatteurs localisés (`intl`) : nombres 2 340, pourcentages.
- [ ] Wrapper `BarcaChartCard` (titre h3, sous-titre, légende).
- [ ] Tests palette (contraste) et widgetbook.

## ✔️ Critères d'acceptation

- [ ] Étant donné deux séries, alors elles diffèrent par couleur ET par marqueur.
- [ ] Étant donné le thème sombre, alors couleurs et grille respectent les contrastes.
- [ ] Étant donné mouvement réduit, alors pas d'animation d'entrée.

## 🧪 Tests à écrire

- [ ] Unitaire : contrastes de palette.
- [ ] Widget : légende toggle.
- [ ] Widget : formatage localisé 2 340 / 2,340.

## ♿ Accessibilité et i18n

- Chaque graphique fournit un résumé textuel `Semantics` et une table de données alternative.

## 📚 Références

- CDC Global §4.5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
