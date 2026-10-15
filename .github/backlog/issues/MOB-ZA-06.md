> **MOB-ZA-06** · Données · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

La planche Espacement fixe : xs 4, sm 8, md 12, lg 16, xl 24, 2xl 32, 3xl 40 (multiples de 4). Le code actuel utilise md=16, lg=24, xl=32, xxl=48, xxxl=64 : les valeurs divergent et casseraient la mise en page lors d'un simple renommage.

## ✅ Objectif

Définir l'échelle officielle et migrer les usages existants sans régression visuelle.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZA-04` — Espacements, rayons et ombres
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__desktop_light.webp?raw=true' width='330' alt='ZA-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__desktop_dark.webp?raw=true' width='330' alt='ZA-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__mobile_light.webp?raw=true' width='230' alt='ZA-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__mobile_dark.webp?raw=true' width='230' alt='ZA-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 04 » · « Espacement et formes » · « Grille de 4/8 px, coins arrondis modérés et cohérents (12–16 px sur les cartes), ombres douces en thème clair, bordures subtiles en thème sombre. » · « Échelle d’espacement » · « multiples de 4 px » · « AppSpacing.xs » · « 4 px » · « AppSpacing.sm » · « 8 px » · « AppSpacing.md » · « 12 px » · « AppSpacing.lg » · « 16 px » · « AppSpacing.xl » · « 24 px » · « AppSpacing.2xl » · « 32 px » · « AppSpacing.3xl » · « 40 px » · « Rayons » · « xs » · « · 6 px » · « Tags » · « sm » · « · 8 px » · « Petits boutons » · « md » · « · 12 px » · « Boutons, champs » · « lg »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-03](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-03%5D%22) · [MOB-ZA-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-07%5D%22) · [MOB-ZA-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-08%5D%22) · [MOB-ZA-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-13%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22) · [MOB-ZA-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-15%5D%22) · [MOB-ZA-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-16%5D%22)

## 📐 Règles de gestion

- xs 4 · sm 8 · md 12 · lg 16 · xl 24 · 2xl 32 · 3xl 40, accessibles `AppSpacing.xs`… (Dart : `xxl`, `xxxl`).
- Marges d'écran mobile : 16 px (AppSpacing.lg) ; gouttière entre cartes : 12 px (md) ; espacement minimum entre deux cibles tactiles : 8 px (cf. ZD-05).
- Ajouter `AppInsets` (EdgeInsets prêts à l'emploi : screen, card, listTile) et `Gap` widgets `AppGap.sm`…

## 🛠️ Tâches

- [ ] Réécrire `lib/core/theme/app_spacing.dart` avec les 7 valeurs et conserver `@Deprecated` pour `radiusSm…` (déplacés dans `AppRadii`).
- [ ] Table de correspondance ancien → nouveau (16→lg, 24→xl, 32→2xl, 48→ valeur hors échelle 40+8 interdite → 3xl) et migration de `lib/` (splash, players, widgets).
- [ ] Créer `lib/core/theme/app_insets.dart` et `lib/core/widgets/app_gap.dart`.
- [ ] Ajouter un test qui vérifie que chaque valeur est multiple de 4.
- [ ] Ajouter une page widgetbook « Espacements » affichant des blocs colorés proportionnels.
- [ ] Mettre à jour `docs/DESIGN_SYSTEM.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné `AppSpacing.md`, quand on la lit, alors elle vaut 12.0 et `AppSpacing.lg` 16.0.
- [ ] Étant donné l'écran des joueurs migré, quand on compare les goldens avant/après, alors la différence de pixels est nulle (ou justifiée).
- [ ] Étant donné `AppInsets.screen`, alors il vaut EdgeInsets.symmetric(horizontal: 16).

## 🧪 Tests à écrire

- [ ] Unitaire : valeurs et multiples de 4.
- [ ] Widget : `AppGap.sm` produit un SizedBox de 8.
- [ ] Golden : planche espacements.

## 📚 Références

- CDC Global §4.5.3
- CDC Flutter §9.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
