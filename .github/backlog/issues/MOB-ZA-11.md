> **MOB-ZA-11** · Données · Priorité **P0** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

La planche Iconographie liste 146 icônes originales (home, gamepad, history, trophy, shirt, users, pin, calendar, calendar-plus, bell, bell-off, user, user-plus, user-x, user-check, settings, search, chevron-l/r/d/u, chevrons-ud, check, check-circle, x-circle, plus, minus, arrow-r/l/up/down…) sur grille 24 px, trait 1,8 px, extrémités arrondies. Aucun élément de marque protégé.

## ✅ Objectif

Livrer le jeu complet sous forme de police d'icônes ou sprite SVG et d'une classe générée `BarcaIcons`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZA-05` — Iconographie
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-05_iconographie__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-05_iconographie__desktop_light.webp?raw=true' width='330' alt='ZA-05 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-05_iconographie__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-05_iconographie__desktop_dark.webp?raw=true' width='330' alt='ZA-05 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-05_iconographie__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-05_iconographie__mobile_light.webp?raw=true' width='230' alt='ZA-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-05_iconographie__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-05_iconographie__mobile_dark.webp?raw=true' width='230' alt='ZA-05 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 05 » · « Iconographie » · « Jeu d’icônes original sur grille 24 px, trait 1,8 px, extrémités arrondies. Aucun élément de marque protégé. » · « Bibliothèque » · « 146 icônes » · « home » · « gamepad » · « history » · « trophy » · « shirt » · « users » · « pin » · « calendar » · « calendar-plus » · « bell » · « bell-off » · « user » · « user-plus » · « user-x » · « user-check » · « settings » · « search » · « chevron-l » · « chevron-r » · « chevron-d » · « chevron-u » · « chevrons-ud » · « check » · « check-circle » · « x-circle »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-05](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-05%5D%22) · [MOB-ZA-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-12%5D%22) · [MOB-ZA-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-13%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22)

## 📐 Règles de gestion

- Grille 24 × 24, trait 1,8 px, `stroke-linecap: round`, `stroke-linejoin: round`, fill none ; zone sûre 2 px.
- Noms en kebab-case dans les SVG (`calendar-plus.svg`) et en lowerCamelCase en Dart (`BarcaIcons.calendarPlus`).
- Les 5 icônes de la barre d'onglets : home, gamepad, history, shirt (Fantasy), users (Communauté) — états actif/inactif (trait vs rempli teinté).
- Aucune icône ne reproduit l'écusson ou un logo protégé ; ballon stylisé et écusson maison originaux.

## 🛠️ Tâches

- [ ] Placer les 146 SVG dans `assets/icons/svg/`.
- [ ] Créer `tool/gen_icons_font.dart` (ou usage `flutter_svg` + `vector_graphics`) générant `lib/core/theme/barca_icons.dart` (constantes IconData ou chemins d'asset).
- [ ] Générer une version « active » (rempli teinté) pour les 5 onglets : `homeFilled`, etc.
- [ ] Test qui vérifie que chaque SVG respecte viewBox 0 0 24 24 et stroke-width 1.8.
- [ ] Ajouter un test de complétude : le nombre d'icônes déclarées == 146 et aucune dupliquée.
- [ ] Page widgetbook « Iconographie » (grille 8 colonnes, nom sous chaque icône, filtre de recherche).
- [ ] Documenter la procédure d'ajout d'une icône.

## ✔️ Critères d'acceptation

- [ ] Étant donné le dossier d'icônes, quand le script de génération s'exécute, alors `BarcaIcons` contient 146 entrées.
- [ ] Étant donné un SVG au mauvais viewBox, quand le test s'exécute, alors il échoue avec le nom du fichier.
- [ ] Étant donné l'icône `bell-off`, quand elle est rendue à 24 px, alors son trait mesure 1,8 px.

## 🧪 Tests à écrire

- [ ] Test : viewBox/stroke de chaque SVG.
- [ ] Test : unicité des noms.
- [ ] Golden : `icons_grid_light/dark`.
- [ ] Test : taille de la police/sprite < 120 Ko.

## ♿ Accessibilité et i18n

- Chaque icône utilisée seule doit recevoir un `semanticLabel` traduit (cf. `za-icones-widget`).

## 📚 Références

- CDC Global §4.5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
