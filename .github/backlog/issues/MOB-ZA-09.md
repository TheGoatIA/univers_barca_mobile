> **MOB-ZA-09** · Écran · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

La planche Identité décrit l'emblème original (rayures blaugrana stylisées, jamais l'écusson officiel), le wordmark « Univers / Barça » sur deux lignes et trois déclinaisons : version principale, monochrome sur fond de marque, emblème seul.

## ✅ Objectif

Fournir les logos en SVG vectoriel et un widget unique `BarcaLogo` respectant zone de protection et tailles minimales.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZA-01` — Identité et logo
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__desktop_light.webp?raw=true' width='330' alt='ZA-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__desktop_dark.webp?raw=true' width='330' alt='ZA-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__mobile_light.webp?raw=true' width='230' alt='ZA-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__mobile_dark.webp?raw=true' width='230' alt='ZA-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 01 » · « Identité visuelle » · « Univers Barça développe une identité propre et originale, clairement « fan-made » : aucun logo officiel, écusson ni maillot protégé. L'emblème s'inspire des rayures blaugrana de façon libre et stylisée. » · « Emblème et wordmark » · « Univers » · « Barça » · « Version principale » · « Version monochrome sur fond de marque » · « Emblème seul » · « Icône d'application » · « Univers Barça » · « flavor : prod » · « Dev » · « flavor : dev » · « Staging » · « flavor : staging » · « Tailles minimales » · « 24 px » · « 32 px » · « 48 px » · « 64 px » · « Zone de protection et usages » · « Marge de protection = hauteur de la lettre « U » du wordmark, sur les 4 côtés. » · « Toujours : utiliser l’emblème original sur fond uni ou dégradé de marque. » · « Toujours : contraste AA entre emblème et fond. » · « Jamais : reproduire le logo, l’écusson ou les maillots officiels du club. » · « Jamais : déformer, recolorer ou ajouter d’effets à l’emblème. »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-04](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-04%5D%22) · [MOB-FND-44](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-44%5D%22) · [MOB-ZA-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-10%5D%22) · [MOB-ZA-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-13%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22)

## 📐 Règles de gestion

- Tailles minimales de l'emblème : 24, 32, 48, 64 px (jamais en dessous de 24 px).
- Zone de protection = hauteur de la lettre « U » du wordmark sur les 4 côtés.
- Toujours : emblème original sur fond uni ou dégradé de marque, contraste AA emblème/fond. Jamais : reproduire logo/écusson/maillots officiels, déformer, recolorer ou ajouter des effets.
- Variantes : `BarcaLogoVariant.primary`, `.monochrome` (blanc sur fond de marque), `.emblem`, `.wordmark`.

## 🛠️ Tâches

- [ ] Ajouter `assets/brand/emblem.svg`, `wordmark.svg`, `logo_primary.svg`, `logo_mono.svg` (dessinés à la main, aucun élément officiel).
- [ ] Créer `lib/core/widgets/brand/barca_logo.dart` : `BarcaLogo({variant, size, semanticLabel})` avec `flutter_svg`.
- [ ] Appliquer automatiquement la zone de protection (padding = 0,25 × hauteur du « U ») via paramètre `withClearSpace`.
- [ ] Assert en debug si `size < 24` pour l'emblème.
- [ ] Recolorier la variante monochrome via `ColorFilter` plutôt qu'un second fichier si possible.
- [ ] Utiliser `BarcaLogo` sur le splash (migration de l'existant).
- [ ] Page widgetbook « Identité » avec les 4 tailles et fonds clair/sombre/dégradé.

## ✔️ Critères d'acceptation

- [ ] Étant donné `BarcaLogo(size: 20)` en debug, quand il est construit, alors un assert échoue.
- [ ] Étant donné la variante monochrome sur le dégradé hero, quand on mesure le contraste, alors il est ≥ 3:1.
- [ ] Étant donné un lecteur d'écran, quand le logo est focalisé, alors il lit « Univers Barça ».

## 🧪 Tests à écrire

- [ ] Widget : rend les 4 variantes sans exception.
- [ ] Widget : zone de protection = 0,25 × hauteur (pixel test).
- [ ] Golden : `barca_logo_variants_light/dark`.
- [ ] Unitaire : assert sous 24 px.

## ♿ Accessibilité et i18n

- Semantics label « Univers Barça » (ARB `logoSemanticLabel`), ExcludeSemantics si décoratif.

## 🔗 Dépendances

À réaliser après : `MOB-ZA-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §3.4
- CDC Global §4.5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
