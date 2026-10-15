> **MOB-ZB-01** · Écran · Priorité **P0** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

La planche Boutons définit le composant `BarcaButton` : variantes primaire, secondaire (contour), tonal, fantôme, texte, navy, or et danger, 5 hauteurs (XS 28, SM 36, MD 44, défaut 52, LG 56) et rayon 12. Il remplace l'actuel `AppButton` (Elevated/Outlined sans variantes).

## ✅ Objectif

Un widget `BarcaButton` unique et paramétrable, consommant uniquement les tokens, couvrant variantes, tailles et largeurs.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-01` — Boutons — variantes, tailles et formes
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_light.webp?raw=true' width='330' alt='ZB-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_dark.webp?raw=true' width='330' alt='ZB-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_light.webp?raw=true' width='230' alt='ZB-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_dark.webp?raw=true' width='230' alt='ZB-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 01 » · « Boutons » · « Hauteurs 28 / 36 / 44 / 52 / 56 px, rayon 12 px. Toute zone interactive respecte une cible tactile d’au moins 44 × 44 points (la zone invisible est étendue pour les boutons XS et SM). » · « Variantes » · « Primaire » · « Valider » · « BarcaButton.primary » · « Secondaire (contour) » · « BarcaButton.secondary » · « Tonal » · « BarcaButton.tonal » · « Fantôme » · « BarcaButton.ghost » · « Texte » · « BarcaButton.text » · « Navy » · « BarcaButton.navy » · « Or » · « BarcaButton.gold » · « Danger » · « BarcaButton.danger » · « Tailles » · « Hauteur et typographie par taille — de XS (28 px) à Large (56 px). » · « Échelle » · « XS · 28 px » · « Continuer » · « SM · 36 px » · « MD · 44 px » · « Défaut · 52 px » · « LG · 56 px »

**Composants repérés** : `btn`, `spinner`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-06](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-06%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [ADM-ADS-37](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-37%5D%22) · [MOB-ZB-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-02%5D%22) · [MOB-ZB-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-03%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22) · [MOB-ZD-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-12%5D%22)

## 📐 Règles de gestion

- Variantes (constructeurs nommés) : `BarcaButton.primary` (dégradé garnet, texte blanc, ombre de marque), `.secondary` (contour 1,5 px primary, fond transparent), `.tonal` (fond primary 12 %, texte primary), `.ghost` (sans fond ni bordure, texte text-primary), `.text` (texte secondary/navy souligné au focus), `.navy` (fond #004D98, texte blanc), `.gold` (fond #EDBB00, texte #1A1A2E), `.danger` (fond error, texte blanc).
- Hauteurs : XS 28 px, SM 36, MD 44, défaut 52, LG 56 ; rayon 12 (8 pour XS/SM) ; padding horizontal 12/16/20/24/28 ; libellé Inter w600 : 12/13/15/16/17 px.
- Largeur : adaptative (hug), fixe (ex. 200 px) ou pleine largeur (`expanded`) ; pleine largeur sur mobile, plafonnée à 560 px sur tablette (`ConstrainedBox`).
- Cible tactile ≥ 44 × 44 : pour XS et SM, la zone invisible est étendue (HitTestBehavior + `ExpandedTapTarget`), sans changer la taille visuelle.
- Texte sur or : #1A1A2E (jamais blanc, cf. contraste AA).

## 🛠️ Tâches

- [ ] Créer `lib/core/widgets/barca_button/barca_button.dart` (+ `barca_button_style.dart`, `barca_button_size.dart`, `barca_button_variant.dart`).
- [ ] Implémenter le rendu via `Material` + `InkWell` personnalisé (pas ElevatedButton) pour contrôler dégradé, ombre et rayon.
- [ ] Ajouter `BarcaButtonSize { xs, sm, md, lg52, xl56 }` nommé `xs/sm/md/standard/lg` avec table des métriques.
- [ ] Créer `ExpandedTapTarget` (widget générique `lib/core/widgets/tap_target.dart`) garantissant 44 × 44.
- [ ] Gérer `width: BarcaButtonWidth.hug|fixed(200)|fill` et plafond 560 px sur tablette (`MediaQuery`/`LayoutBuilder`, breakpoints de ZD-04).
- [ ] Déprécier `AppButton` en le faisant déléguer à `BarcaButton.primary/secondary`.
- [ ] Page widgetbook « Boutons — variantes/tailles/largeurs » (grille 4×2 + échelle).
- [ ] Documenter l'API et les règles d'usage (un seul bouton primaire par écran).

## ✔️ Critères d'acceptation

- [ ] Étant donné `BarcaButton.primary(size: md)`, quand il est rendu, alors sa hauteur est 44 px et son rayon 12.
- [ ] Étant donné `BarcaButton.primary(size: xs)`, quand on tape à 8 px du bord visuel dans la zone étendue, alors `onPressed` est appelé.
- [ ] Étant donné une tablette (834 px), quand `fill` est utilisé, alors la largeur est 560 px.
- [ ] Étant donné `BarcaButton.gold`, quand il est rendu, alors le texte est #1A1A2E.
- [ ] Étant donné les 8 variantes en thème sombre, quand on mesure les contrastes, alors tous ≥ 4,5:1.

## 🧪 Tests à écrire

- [ ] Widget : hauteurs des 5 tailles.
- [ ] Widget : largeur fill/fixed/hug.
- [ ] Widget : zone tactile étendue XS/SM via `tester.getSize` du `GestureDetector`.
- [ ] Widget : callback onPressed appelé une fois.
- [ ] Golden : `barca_button_variants_{light,dark}` (8 variantes).
- [ ] Golden : `barca_button_sizes_{light,dark}`.

## ♿ Accessibilité et i18n

- Rôle `Semantics(button: true)`, label = libellé ; `ExcludeSemantics` sur l'icône décorative.
- Texte du bouton non tronqué à 160 % : `maxLines: 1` + ellipsis en largeur fixe, retour à la ligne autorisé en `fill`.

## 📚 Références

- CDC Flutter §9.3
- CDC Global §3.3
- CDC Global §4.5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
