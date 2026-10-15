> **MOB-ZB-10** · Écran · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Chips de filtre « Toutes / Liga / Ligue des champions / Coupe du Roi / Amicaux » (actif = garnet plein, inactif = gris), tailles Standard / Petite / Mini, variantes Navy et « Décennie » (neutre), version contour.

## ✅ Objectif

`BarcaChip` et `BarcaChipGroup` (sélection simple/multiple).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-03` — Contrôles de sélection
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__desktop_light.webp?raw=true' width='330' alt='ZB-03 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__desktop_dark.webp?raw=true' width='330' alt='ZB-03 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__mobile_light.webp?raw=true' width='230' alt='ZB-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__mobile_dark.webp?raw=true' width='230' alt='ZB-03 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 03 » · « Contrôles » · « Interrupteurs, cases, radios, segments, curseurs et puces : états repos, actif, désactivé. Les zones tactiles sont étendues à 44 pt. » · « Interrupteurs, cases et radios » · « Interrupteur » · « off · on · désactivé · 52×32 » · « Case à cocher » · « 24×24 · rayon 7 » · « Radio » · « 24×24 » · « Case admin » · « 18×18 · partiel » · « Segments, onglets, pagination » · « Contrôle segmenté » · « Amis » · « Monde » · « Segmenté à 3 » · « Décennie » · « Saison » · « Date » · « Indicateur d’étapes » · « stepper · pagination par points » · « Curseur et compteur » · « Curseur » · « Compteur +/− » · « Barres de progression » · « Puces (chips) » · « Filtres » · « Toutes » · « Liga »

**Composants repérés** : `btn`, `chip`, `toggle`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-08](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-08%5D%22) · [ADM-ADS-09](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-09%5D%22) · [ADM-ADS-10](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-10%5D%22) · [ADM-ADS-11](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-11%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [MOB-ZB-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-07%5D%22) · [MOB-ZB-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-08%5D%22) · [MOB-ZB-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-09%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22)

## 📐 Règles de gestion

- Hauteurs : standard 36, petite 28, mini 22 ; rayon pilule ; texte Inter w600 14/12/10 px.
- Actif : fond primary + texte blanc ; inactif : fond surface-variant + texte text-primary ; contour : bordure 1 px outline ; navy : fond secondary.
- Transition d'état 180 ms ; zone tactile 44 pt.
- Défilement horizontal sans barre dans `BarcaChipGroup` ; sélection unique ou multiple.

## 🛠️ Tâches

- [ ] Créer `barca_chip.dart`, `barca_chip_group.dart`.
- [ ] Ajouter `BarcaChipSize`, `BarcaChipTone { primary, navy, neutral, outline }`.
- [ ] Ajouter icône/avatar à gauche et `onDeleted`.
- [ ] Scroll auto vers le chip sélectionné.
- [ ] Tests, widgetbook, goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné « Toutes » actif, quand on tape « Liga », alors « Liga » devient actif et « Toutes » inactif (sélection unique).
- [ ] Étant donné 5 chips débordant, alors le groupe défile horizontalement.
- [ ] Étant donné la taille mini, alors la zone tactile reste ≥ 44 pt.

## 🧪 Tests à écrire

- [ ] Widget : sélection unique/multiple.
- [ ] Widget : hauteurs.
- [ ] Widget : scroll vers sélection.
- [ ] Golden : chips clair/sombre.

## ♿ Accessibilité et i18n

- Semantics `selected`, rôle bouton.

## 📚 Références

- CDC Flutter §9.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
