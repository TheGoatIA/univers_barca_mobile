> **MOB-FND-16** · Écran · Priorité **P0** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

La navigation principale est une barre à 5 onglets (Accueil, Jeux, Historique, Fantasy, Communauté), chacun conservant sa propre pile (CDC §6.1, maquette ZB-06). Sur tablette, rail de 96 px (ZD-04). Le profil est accessible depuis l'en-tête de l'accueil, pas par un 6e onglet (le doc ARCHITECTURE.md cite Profil à la place de Historique : à corriger).

## ✅ Objectif

Fournir `MainShell` et les routes racines des 5 onglets, avec bascule fondue et état préservé.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-06` — Navigation
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_light.webp?raw=true' width='330' alt='ZB-06 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_dark.webp?raw=true' width='330' alt='ZB-06 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_light.webp?raw=true' width='230' alt='ZB-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_dark.webp?raw=true' width='230' alt='ZB-06 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 06 » · « Navigation » · « Barre d’onglets à 5 entrées sur téléphone, rail de navigation sur tablette, barre d’application, onglets et fil d’Ariane côté admin. » · « Barre d’onglets (téléphone) » · « 5 onglets : Accueil, Jeux, Historique, Fantasy, Communauté — chaque onglet conserve sa propre pile de navigation. » · « Accueil actif » · « Accueil » · « Jeux » · « Historique » · « Fantasy » · « Communauté » · « pastille rouge = nouvelle activité » · « Fantasy actif » · « Rail de navigation (tablette) et barre d’application » · « Rail 96 px » · « Barre d’application » · « Calendrier » · « Quiz du jour » · « 125 ans d’histoire » · « Bandeaux d’état » · « Hors-ligne · derniers contenus » · « Connexion instable » · « Navigation admin » · « Onglets » · « Identité » · « Biographie » · « Statistiques » · « Photo » · « Contenu » · « Joueurs »

**Composants repérés** : `avatar`, `banner`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-10](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-10%5D%22) · [ADM-ADS-15](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-15%5D%22) · [ADM-ADS-21](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-21%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [MOB-FND-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-21%5D%22) · [MOB-ZB-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-15%5D%22) · [MOB-ZB-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-16%5D%22) · [MOB-ZB-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-17%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22) · [MOB-ZE-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-03%5D%22)

#### `ZD-04` — Responsive — téléphone, tablette, desktop
_Module : Composants métier et responsive_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__desktop_light.webp?raw=true' width='330' alt='ZD-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__desktop_dark.webp?raw=true' width='330' alt='ZD-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__mobile_light.webp?raw=true' width='230' alt='ZD-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-04_responsive-telephone-tablette-desktop__mobile_dark.webp?raw=true' width='230' alt='ZD-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Responsive · 01 » · « Points de rupture » · « Une seule base de code Flutter (LayoutBuilder / MediaQuery) et un back-office React adaptatif. Les mêmes composants se recomposent selon la largeur disponible. » · « Téléphone » · « 600 px » · « 1 colonne · barre d’onglets inférieure (5 entrées) · sheets plein bord » · « Tablette » · « 600 – 1100 px » · « 2 à 3 colonnes · rail de navigation · sheets centrés 600 px · volets maître/détail » · « Desktop admin » · « > 1100 px » · « Sidebar 256 px · tables complètes · panneaux latéraux · densité réglable » · « Recomposition d’un écran : tableau de bord » · « Téléphone (390 px) » · « Prochain match » · « Jeu du jour · Quiz » · « Histoire du jour » · « Streak » · « XI Fantasy » · « Tablette (834 px) » · « Guess » · « Quiz » · « Recomposition : carte communautaire et admin » · « Carte · téléphone vs tablette » · « téléphone : feuille inférieure · tablette : panneau latéral flottant » · « Admin · desktop vs tablette » · « sidebar 256 px → rail icônes 72 px · tables à défilement contrôlé »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-15](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-15%5D%22) · [ADM-ADS-28](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-28%5D%22) · [MOB-ZC-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-01%5D%22) · [MOB-ZD-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-09%5D%22) · [MOB-ZD-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-10%5D%22)

## 📐 Règles de gestion

- `StatefulShellRoute.indexedStack` avec 5 branches : `/dashboard`, `/games`, `/history`, `/fantasy`, `/community`, chacune avec sa `navigatorKey`.
- Retapper l'onglet actif revient à la racine de sa pile (`goBranch(initialLocation:true)`) puis remonte le scroll.
- Téléphone (< 600 px) : `BarcaTabBar` ; ≥ 600 px : `BarcaNavRail` 96 px ; transition entre onglets : fondu croisé 200 ms, barre fixe (ZE-02).
- Pastille rouge de « nouvelle activité » par onglet (état fourni par `ShellBadgesCubit`, alimenté plus tard par les modules).
- Bouton retour Android : remonte la pile de l'onglet, puis revient à Accueil, puis quitte.
- Dernier onglet mémorisé (Drift préférence) restauré après redémarrage ? Non : l'app démarre toujours sur Accueil, sauf deep link.

## 🛠️ Tâches

- [ ] Créer `lib/core/routing/main_shell.dart` utilisant `BarcaTabBar`/`BarcaNavRail` (groupe ZB).
- [ ] Créer 5 pages placeholder `lib/features/<module>/presentation/pages/*_tab_page.dart` (« Bientôt disponible » via `BarcaEmptyState`).
- [ ] Ajouter `ShellBadgesCubit` (`Map<ShellTab,bool>`).
- [ ] Gérer `PopScope` Android.
- [ ] Écrire un golden test du shell phone + tablette.
- [ ] Mettre à jour `docs/ARCHITECTURE.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné l'onglet Jeux avec une page profonde quand on bascule sur Fantasy puis qu'on revient alors la page profonde est conservée.
- [ ] Étant donné l'onglet actif quand on le retape alors la pile revient à sa racine.
- [ ] Étant donné 834 px de large alors le rail remplace la barre inférieure.
- [ ] Étant donné Android et le bouton retour sur la racine d'un onglet ≠ Accueil alors on revient à Accueil.

## 🧪 Tests à écrire

- [ ] Test widget : changement d'onglet préserve l'état (`PageStorage`).
- [ ] Test widget : tablette → rail.
- [ ] Golden : shell clair/sombre, 390 px et 834 px.
- [ ] Test widget : pastille visible.
- [ ] Test widget : retour Android.

## ♿ Accessibilité et i18n

- Libellés ARB `nav_home`, `nav_games`, `nav_history`, `nav_fantasy`, `nav_community`.
- Semantics `selected`, `Onglet 2 sur 5`.

## 🔗 Dépendances

À réaliser après : `MOB-FND-15` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §6.1
- CDC Flutter §6.2
- CDC Global §3.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
