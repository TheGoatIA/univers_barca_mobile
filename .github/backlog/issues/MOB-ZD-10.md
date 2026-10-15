> **MOB-ZD-10** · Écran · Priorité **P1** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

Planche : tableau de bord téléphone (Prochain match, Jeu du jour · Quiz, Histoire du jour, Streak, XI Fantasy) vs tablette 834 px (Guess + Quiz côte à côte) ; carte : feuille inférieure sur téléphone, panneau latéral flottant sur tablette.

## ✅ Objectif

Gabarits `DashboardLayout`, `MasterDetailLayout`, `MapSheetOrPanel`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZD-04` — Responsive — téléphone, tablette, desktop
_Module : Composants métier et responsive_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__desktop_light.webp?raw=true' width='330' alt='ZD-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__desktop_dark.webp?raw=true' width='330' alt='ZD-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__mobile_light.webp?raw=true' width='230' alt='ZD-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__mobile_dark.webp?raw=true' width='230' alt='ZD-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Responsive · 01 » · « Points de rupture » · « Une seule base de code Flutter (LayoutBuilder / MediaQuery) et un back-office React adaptatif. Les mêmes composants se recomposent selon la largeur disponible. » · « Téléphone » · « 600 px » · « 1 colonne · barre d’onglets inférieure (5 entrées) · sheets plein bord » · « Tablette » · « 600 – 1100 px » · « 2 à 3 colonnes · rail de navigation · sheets centrés 600 px · volets maître/détail » · « Desktop admin » · « > 1100 px » · « Sidebar 256 px · tables complètes · panneaux latéraux · densité réglable » · « Recomposition d’un écran : tableau de bord » · « Téléphone (390 px) » · « Prochain match » · « Jeu du jour · Quiz » · « Histoire du jour » · « Streak » · « XI Fantasy » · « Tablette (834 px) » · « Guess » · « Quiz » · « Recomposition : carte communautaire et admin » · « Carte · téléphone vs tablette » · « téléphone : feuille inférieure · tablette : panneau latéral flottant » · « Admin · desktop vs tablette » · « sidebar 256 px → rail icônes 72 px · tables à défilement contrôlé »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-15](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-15%5D%22) · [ADM-ADS-28](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-28%5D%22) · [MOB-FND-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-16%5D%22) · [MOB-ZC-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-01%5D%22) · [MOB-ZD-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-09%5D%22)

## 📐 Règles de gestion

- Dashboard compact : 1 colonne empilée ; medium : grille 2 colonnes (Prochain match en pleine largeur, Guess + Quiz côte à côte).
- Maître/détail : liste 360 px + détail flexible sur medium ; navigation push sur compact.
- Carte : feuille inférieure (snap 0,3/0,6/0,9) sur compact ; panneau flottant 360 px à gauche sur medium.
- Les sheets deviennent panneaux centrés 600 px max (zc-bottom-sheet).

## 🛠️ Tâches

- [ ] Créer `lib/core/layout/dashboard_layout.dart`, `master_detail_layout.dart`, `map_sheet_or_panel.dart`.
- [ ] Slots nommés (`header`, `primary`, `secondary`).
- [ ] Conserver l'état de scroll à la rotation.
- [ ] Goldens compact/medium.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné 390 px, alors les cartes sont empilées.
- [ ] Étant donné 834 px, alors Guess et Quiz sont côte à côte.
- [ ] Étant donné la carte sur tablette, alors un panneau latéral remplace la feuille.
- [ ] Étant donné compact, quand on sélectionne un élément maître, alors le détail s'ouvre en push.

## 🧪 Tests à écrire

- [ ] Widget : dashboard 390/834.
- [ ] Widget : master-detail.
- [ ] Widget : map sheet/panel.
- [ ] Golden : dashboard 2 tailles.

## 🔗 Dépendances

À réaliser après : `MOB-ZD-09` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
