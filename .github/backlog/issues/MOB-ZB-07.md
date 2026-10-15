> **MOB-ZB-07** · Écran · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

La planche Contrôles : interrupteur 52×32 (off, on, désactivé), case 24×24 rayon 7 (vide, cochée, désactivée), radio 24×24, case « admin » 18×18 avec état partiel (web admin, hors périmètre mobile), zones tactiles étendues à 44 pt.

## ✅ Objectif

Composants `BarcaSwitch`, `BarcaCheckbox`, `BarcaRadio`/`BarcaRadioGroup` conformes.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-03` — Contrôles de sélection
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__desktop_light.webp?raw=true' width='330' alt='ZB-03 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__desktop_dark.webp?raw=true' width='330' alt='ZB-03 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__mobile_light.webp?raw=true' width='230' alt='ZB-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__mobile_dark.webp?raw=true' width='230' alt='ZB-03 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 03 » · « Contrôles » · « Interrupteurs, cases, radios, segments, curseurs et puces : états repos, actif, désactivé. Les zones tactiles sont étendues à 44 pt. » · « Interrupteurs, cases et radios » · « Interrupteur » · « off · on · désactivé · 52×32 » · « Case à cocher » · « 24×24 · rayon 7 » · « Radio » · « 24×24 » · « Case admin » · « 18×18 · partiel » · « Segments, onglets, pagination » · « Contrôle segmenté » · « Amis » · « Monde » · « Segmenté à 3 » · « Décennie » · « Saison » · « Date » · « Indicateur d’étapes » · « stepper · pagination par points » · « Curseur et compteur » · « Curseur » · « Compteur +/− » · « Barres de progression » · « Puces (chips) » · « Filtres » · « Toutes » · « Liga »

**Composants repérés** : `btn`, `chip`, `toggle`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-08](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-08%5D%22) · [ADM-ADS-09](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-09%5D%22) · [ADM-ADS-10](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-10%5D%22) · [ADM-ADS-11](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-11%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [MOB-ZB-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-08%5D%22) · [MOB-ZB-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-09%5D%22) · [MOB-ZB-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-10%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22)

## 📐 Règles de gestion

- Interrupteur 52×32, pastille 24, durée de bascule 100 ms ; on = success (vert) ; off = gris outline ; désactivé = 38 %.
- Case 24×24, rayon 7, bordure 2 px outline ; cochée = fond primary + coche blanche animée 100 ms ; état partiel (indeterminate) supporté.
- Radio 24×24 : anneau 2 px, point central 10 px primary.
- Zone tactile 44 × 44 pt pour chacun ; libellé cliquable adjacent.
- Haptique `selectionClick` à la bascule.

## 🛠️ Tâches

- [ ] Créer `barca_switch.dart`, `barca_checkbox.dart`, `barca_radio.dart`, `barca_radio_group.dart`.
- [ ] Dessiner via `CustomPainter` ou `AnimatedContainer` pour respecter les métriques exactes.
- [ ] Créer `BarcaLabeledControl` (ligne libellé + contrôle + sous-texte, zone 44+).
- [ ] Gérer `tristate` pour case.
- [ ] Remplacer `Switch`/`Checkbox`/`Radio` Material dans l'existant.
- [ ] Use cases + goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné l'interrupteur off, quand on le tape, alors il passe on en 100 ms avec haptique.
- [ ] Étant donné une case 24×24, quand on tape à 10 px du bord, alors elle bascule (zone 44).
- [ ] Étant donné un groupe radio, quand on sélectionne B, alors A est désélectionnée.
- [ ] Étant donné `enabled: false`, alors aucune bascule et opacité 38 %.

## 🧪 Tests à écrire

- [ ] Widget : tailles 52×32 / 24×24.
- [ ] Widget : tristate cycle.
- [ ] Widget : zone tactile 44.
- [ ] Widget : group radio exclusif.
- [ ] Golden : états clair/sombre.

## ♿ Accessibilité et i18n

- `Semantics(toggled/checked/inMutuallyExclusiveGroup)` ; libellé cliquable ; annonce « activé/désactivé ».

## 📚 Références

- CDC Flutter §9.3
- CDC Flutter §9.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
