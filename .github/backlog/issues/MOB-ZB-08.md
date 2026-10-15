> **MOB-ZB-08** · Écran · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

La planche présente un contrôle segmenté à 2 (« Amis » / « Monde ») et à 3 (« Décennie » / « Saison » / « Date »), un stepper à barres et une pagination par points (pastille active allongée).

## ✅ Objectif

`BarcaSegmentedControl`, `BarcaStepper`, `BarcaPageDots`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-03` — Contrôles de sélection
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__desktop_light.webp?raw=true' width='330' alt='ZB-03 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__desktop_dark.webp?raw=true' width='330' alt='ZB-03 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__mobile_light.webp?raw=true' width='230' alt='ZB-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__mobile_dark.webp?raw=true' width='230' alt='ZB-03 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 03 » · « Contrôles » · « Interrupteurs, cases, radios, segments, curseurs et puces : états repos, actif, désactivé. Les zones tactiles sont étendues à 44 pt. » · « Interrupteurs, cases et radios » · « Interrupteur » · « off · on · désactivé · 52×32 » · « Case à cocher » · « 24×24 · rayon 7 » · « Radio » · « 24×24 » · « Case admin » · « 18×18 · partiel » · « Segments, onglets, pagination » · « Contrôle segmenté » · « Amis » · « Monde » · « Segmenté à 3 » · « Décennie » · « Saison » · « Date » · « Indicateur d’étapes » · « stepper · pagination par points » · « Curseur et compteur » · « Curseur » · « Compteur +/− » · « Barres de progression » · « Puces (chips) » · « Filtres » · « Toutes » · « Liga »

**Composants repérés** : `btn`, `chip`, `toggle`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-08](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-08%5D%22) · [ADM-ADS-09](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-09%5D%22) · [ADM-ADS-10](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-10%5D%22) · [ADM-ADS-11](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-11%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [MOB-ZB-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-07%5D%22) · [MOB-ZB-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-09%5D%22) · [MOB-ZB-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-10%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22)

## 📐 Règles de gestion

- Segmenté : fond surface-variant rayon 12, segment actif blanc (surface) avec ombre légère, glissement de la capsule 180 ms (`easeOutCubic`) ; 2 à 4 segments ; hauteur 44.
- Stepper : N barres 4 px de haut, gap 6, étapes passées en primary ; progression animée 280 ms.
- Points : 6 px inactifs (outline), actif 18×6 allongé primary ; transition 180 ms.
- Zones tactiles ≥ 44 pt.

## 🛠️ Tâches

- [ ] Créer `barca_segmented_control.dart` (générique `<T>`).
- [ ] Créer `barca_stepper.dart`, `barca_page_dots.dart` (lié à `PageController`).
- [ ] Animation de capsule avec `AnimatedAlign`.
- [ ] Support glisser horizontal entre segments.
- [ ] Use cases + tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné « Amis » actif, quand on tape « Monde », alors la capsule glisse en 180 ms et `onChanged(world)` est émis.
- [ ] Étant donné un PageView de 3 pages, quand on glisse, alors le point actif s'allonge.
- [ ] Étant donné le stepper à 4 étapes en étape 2, alors 2 barres sont remplies.

## 🧪 Tests à écrire

- [ ] Widget : sélection et capsule.
- [ ] Widget : 3 segments labels longs ellipsés.
- [ ] Widget : points suivent la page.
- [ ] Golden : segmenté 2/3, stepper, points.

## ♿ Accessibilité et i18n

- Semantics : `selected`, « Onglet 1 sur 2 » ; stepper « Étape 2 sur 4 ».

## 📚 Références

- CDC Flutter §9.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
