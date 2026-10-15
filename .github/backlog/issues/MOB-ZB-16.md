> **MOB-ZB-16** · Écran · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Sur tablette (≥ 600 px), la barre inférieure devient un rail de 96 px ; la barre d'application affiche titres d'écran (« Calendrier », « Quiz du jour », « 125 ans d'histoire ») avec actions en haut à droite.

## ✅ Objectif

`BarcaNavRail` et `BarcaAppBar`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-06` — Navigation
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_light.webp?raw=true' width='330' alt='ZB-06 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_dark.webp?raw=true' width='330' alt='ZB-06 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_light.webp?raw=true' width='230' alt='ZB-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_dark.webp?raw=true' width='230' alt='ZB-06 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 06 » · « Navigation » · « Barre d’onglets à 5 entrées sur téléphone, rail de navigation sur tablette, barre d’application, onglets et fil d’Ariane côté admin. » · « Barre d’onglets (téléphone) » · « 5 onglets : Accueil, Jeux, Historique, Fantasy, Communauté — chaque onglet conserve sa propre pile de navigation. » · « Accueil actif » · « Accueil » · « Jeux » · « Historique » · « Fantasy » · « Communauté » · « pastille rouge = nouvelle activité » · « Fantasy actif » · « Rail de navigation (tablette) et barre d’application » · « Rail 96 px » · « Barre d’application » · « Calendrier » · « Quiz du jour » · « 125 ans d’histoire » · « Bandeaux d’état » · « Hors-ligne · derniers contenus » · « Connexion instable » · « Navigation admin » · « Onglets » · « Identité » · « Biographie » · « Statistiques » · « Photo » · « Contenu » · « Joueurs »

**Composants repérés** : `avatar`, `banner`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-10](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-10%5D%22) · [ADM-ADS-15](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-15%5D%22) · [ADM-ADS-21](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-21%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [MOB-FND-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-16%5D%22) · [MOB-FND-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-21%5D%22) · [MOB-ZB-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-15%5D%22) · [MOB-ZB-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-17%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22) · [MOB-ZE-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-03%5D%22)

## 📐 Règles de gestion

- Rail 96 px : icône + libellé en colonne, accessible au pouce gauche, mêmes destinations et pastilles que la barre.
- AppBar : hauteur 56, titre h3, retour à gauche (chevron-l 44×44), actions à droite ≤ 2 (+ menu ⋯), fond background, ligne de séparation au défilement.
- Choix barre/rail selon `LayoutBuilder` 600 px (ZD-04).

## 🛠️ Tâches

- [ ] Créer `barca_nav_rail.dart`, `barca_app_bar.dart` (+ version sliver).
- [ ] Créer `AdaptiveScaffold` qui choisit barre ou rail.
- [ ] Gérer large title iOS optionnel.
- [ ] Ajouter badge de pastille sur les destinations du rail.
- [ ] Tests aux largeurs 390/834.

## ✔️ Critères d'acceptation

- [ ] Étant donné 834 px, alors le rail 96 px est affiché et pas la barre inférieure.
- [ ] Étant donné un défilement, alors une séparation 1 px apparaît sous l'AppBar.
- [ ] Étant donné ≥ 3 actions, alors elles sont regroupées dans un menu ⋯.

## 🧪 Tests à écrire

- [ ] Widget : barre vs rail.
- [ ] Widget : séparation au scroll.
- [ ] Golden : rail et appbar (clair/sombre).

## ♿ Accessibilité et i18n

- Titre d'AppBar `header: true`.

## 🔗 Dépendances

À réaliser après : `MOB-ZB-15` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
