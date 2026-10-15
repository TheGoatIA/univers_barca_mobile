> **MOB-ZD-09** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

ZD-04 définit : téléphone < 600 px (1 colonne, barre d'onglets, sheets plein bord), tablette 600–1100 px (2 à 3 colonnes, rail, sheets centrés 600 px, maître/détail), desktop admin > 1100 px (hors mobile). Une seule base de code Flutter via LayoutBuilder/MediaQuery.

## ✅ Objectif

`Breakpoints`, `BarcaResponsive` et `ResponsiveBuilder`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZD-04` — Responsive — téléphone, tablette, desktop
_Module : Composants métier et responsive_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__desktop_light.webp?raw=true' width='330' alt='ZD-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__desktop_dark.webp?raw=true' width='330' alt='ZD-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__mobile_light.webp?raw=true' width='230' alt='ZD-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__mobile_dark.webp?raw=true' width='230' alt='ZD-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Responsive · 01 » · « Points de rupture » · « Une seule base de code Flutter (LayoutBuilder / MediaQuery) et un back-office React adaptatif. Les mêmes composants se recomposent selon la largeur disponible. » · « Téléphone » · « 600 px » · « 1 colonne · barre d’onglets inférieure (5 entrées) · sheets plein bord » · « Tablette » · « 600 – 1100 px » · « 2 à 3 colonnes · rail de navigation · sheets centrés 600 px · volets maître/détail » · « Desktop admin » · « > 1100 px » · « Sidebar 256 px · tables complètes · panneaux latéraux · densité réglable » · « Recomposition d’un écran : tableau de bord » · « Téléphone (390 px) » · « Prochain match » · « Jeu du jour · Quiz » · « Histoire du jour » · « Streak » · « XI Fantasy » · « Tablette (834 px) » · « Guess » · « Quiz » · « Recomposition : carte communautaire et admin » · « Carte · téléphone vs tablette » · « téléphone : feuille inférieure · tablette : panneau latéral flottant » · « Admin · desktop vs tablette » · « sidebar 256 px → rail icônes 72 px · tables à défilement contrôlé »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-15](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-15%5D%22) · [ADM-ADS-28](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-28%5D%22) · [MOB-FND-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-16%5D%22) · [MOB-ZC-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-01%5D%22) · [MOB-ZD-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-10%5D%22)

## 📐 Règles de gestion

- Seuils : compact < 600, medium 600–1100, expanded > 1100 (Flutter desktop non ciblé mais géré comme medium+).
- Colonnes de grille : 1 / 2–3 / 3–4 ; gouttière 12 ; marges 16 (tablette 24).
- Largeur de contenu plafonnée à 840 px sur tablette pour les écrans de lecture.
- SafeArea et encoches respectés ; orientation paysage gérée.

## 🛠️ Tâches

- [ ] Créer `lib/core/layout/breakpoints.dart` (`WindowSize { compact, medium, expanded }`).
- [ ] Créer `responsive_builder.dart`, `responsive_grid.dart`, `content_max_width.dart`.
- [ ] Extension `context.windowSize`.
- [ ] Intégrer `AdaptiveScaffold` (zb-rail-appbar).
- [ ] Tests aux largeurs 360/390/600/834/1100.

## ✔️ Critères d'acceptation

- [ ] Étant donné 599 px, alors `WindowSize.compact`; 600 px alors `medium`.
- [ ] Étant donné 834 px, alors la grille a 3 colonnes.
- [ ] Étant donné la rotation, alors la mise en page se recompose sans perdre l'état.

## 🧪 Tests à écrire

- [ ] Unitaire : seuils.
- [ ] Widget : colonnes par largeur.
- [ ] Widget : rotation conserve l'état.

## ♿ Accessibilité et i18n

- Pas de contenu uniquement accessible à une taille donnée.

## 📚 Références

- CDC Flutter §9.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
