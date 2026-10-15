> **MOB-ZA-07** · Données · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

La planche Espacement et formes liste les rayons et la règle d'élévation : ombres douces en clair, bordures subtiles en sombre.

## ✅ Objectif

Créer `AppRadii` et `AppShadows` utilisés par tous les composants.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZA-04` — Espacements, rayons et ombres
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__desktop_light.webp?raw=true' width='330' alt='ZA-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__desktop_dark.webp?raw=true' width='330' alt='ZA-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__mobile_light.webp?raw=true' width='230' alt='ZA-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__mobile_dark.webp?raw=true' width='230' alt='ZA-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 04 » · « Espacement et formes » · « Grille de 4/8 px, coins arrondis modérés et cohérents (12–16 px sur les cartes), ombres douces en thème clair, bordures subtiles en thème sombre. » · « Échelle d’espacement » · « multiples de 4 px » · « AppSpacing.xs » · « 4 px » · « AppSpacing.sm » · « 8 px » · « AppSpacing.md » · « 12 px » · « AppSpacing.lg » · « 16 px » · « AppSpacing.xl » · « 24 px » · « AppSpacing.2xl » · « 32 px » · « AppSpacing.3xl » · « 40 px » · « Rayons » · « xs » · « · 6 px » · « Tags » · « sm » · « · 8 px » · « Petits boutons » · « md » · « · 12 px » · « Boutons, champs » · « lg »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-03](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-03%5D%22) · [MOB-ZA-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-06%5D%22) · [MOB-ZA-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-08%5D%22) · [MOB-ZA-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-13%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22) · [MOB-ZA-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-15%5D%22) · [MOB-ZA-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-16%5D%22)

## 📐 Règles de gestion

- Rayons : 6 tags · 8 petits boutons · 12 boutons et champs · 16 cartes · 24 bottom sheets et modales · pilule (999) pour chips et boutons pilule.
- Clair : ombre douce (y 4, flou 16, noir 8 %) pour cartes ; ombre accentuée de couleur de marque (garnet 28 %, y 6, flou 14) pour boutons primaires ; clair uniquement.
- Sombre : pas d'ombre portée ; bordure 1 px `outline` #2C2C39 sur cartes et surfaces.
- Niveaux : `none`, `card`, `raised` (boutons, toasts), `overlay` (sheets, modales).

## 🛠️ Tâches

- [ ] Créer `lib/core/theme/app_radii.dart` (`xs=6, sm=8, md=12, lg=16, xl=24, pill=999`) et `BorderRadius` précalculés.
- [ ] Créer `lib/core/theme/app_shadows.dart` : `List<BoxShadow> card(Brightness)`, `button(Color)`, `overlay`.
- [ ] Créer `lib/core/theme/app_borders.dart` : `BorderSide card(Brightness)` (1 px outline en sombre, aucune en clair).
- [ ] Fournir un helper `AppSurface.decoration(context, level)` combinant fond, rayon, ombre ou bordure selon le thème.
- [ ] Déprécier `AppSpacing.radius*` et migrer.
- [ ] Vérifier l'absence de `elevation` Material sur les composants (cohérence visuelle).
- [ ] Ajouter test unitaire sur chaque niveau et thème.

## ✔️ Critères d'acceptation

- [ ] Étant donné une carte en thème clair, quand on lit sa décoration, alors elle a une BoxShadow et pas de bordure.
- [ ] Étant donné le thème sombre, quand on lit la même décoration, alors elle a une bordure 1 px #2C2C39 et aucune ombre.
- [ ] Étant donné `AppRadii.lg`, alors un BorderRadius.circular(16).

## 🧪 Tests à écrire

- [ ] Unitaire : 6 rayons.
- [ ] Unitaire : `AppSurface.decoration` en clair/sombre.
- [ ] Golden : `radii_shadows_light/dark`.

## 🔗 Dépendances

À réaliser après : `MOB-ZA-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §4.5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
