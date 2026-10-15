> **MOB-ZA-10** · Infrastructure · Priorité **P1** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

La planche montre l'icône d'application et ses 3 déclinaisons : « Univers Barça » (prod), « Dev » (flavor : dev) et « Staging » (flavor : staging), pour distinguer les builds installés en parallèle. FND `env-flavors` gère les flavors et identifiants ; cette issue fournit les visuels et la génération des icônes.

## ✅ Objectif

Produire les icônes adaptatives iOS/Android des 3 flavors, générées depuis l'emblème.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZA-01` — Identité et logo
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__desktop_light.webp?raw=true' width='330' alt='ZA-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__desktop_dark.webp?raw=true' width='330' alt='ZA-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__mobile_light.webp?raw=true' width='230' alt='ZA-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__mobile_dark.webp?raw=true' width='230' alt='ZA-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 01 » · « Identité visuelle » · « Univers Barça développe une identité propre et originale, clairement « fan-made » : aucun logo officiel, écusson ni maillot protégé. L'emblème s'inspire des rayures blaugrana de façon libre et stylisée. » · « Emblème et wordmark » · « Univers » · « Barça » · « Version principale » · « Version monochrome sur fond de marque » · « Emblème seul » · « Icône d'application » · « Univers Barça » · « flavor : prod » · « Dev » · « flavor : dev » · « Staging » · « flavor : staging » · « Tailles minimales » · « 24 px » · « 32 px » · « 48 px » · « 64 px » · « Zone de protection et usages » · « Marge de protection = hauteur de la lettre « U » du wordmark, sur les 4 côtés. » · « Toujours : utiliser l’emblème original sur fond uni ou dégradé de marque. » · « Toujours : contraste AA entre emblème et fond. » · « Jamais : reproduire le logo, l’écusson ou les maillots officiels du club. » · « Jamais : déformer, recolorer ou ajouter d’effets à l’emblème. »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-04](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-04%5D%22) · [MOB-FND-44](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-44%5D%22) · [MOB-ZA-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-09%5D%22) · [MOB-ZA-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-13%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22)

## 📐 Règles de gestion

- Prod : emblème sur fond dégradé hero, sans bandeau. Dev : bandeau « DEV ». Staging : bandeau « STG ».
- Android : icône adaptative (foreground 108 dp, zone sûre 66 dp, background, couche monochrome Material You).
- iOS : 1024×1024 sans transparence ni coins arrondis (appliqués par le système).
- Labels : « Univers Barça », « Barça Dev », « Barça Staging ».

## 🛠️ Tâches

- [ ] Créer `assets/brand/app_icon/{prod,dev,staging}/foreground.png`, `background.png`, `monochrome.png`.
- [ ] Configurer `flutter_launcher_icons-{prod,dev,staging}.yaml`.
- [ ] Ajouter `tool/gen_icons.sh` qui régénère toutes les icônes.
- [ ] Définir les labels par flavor (placeholders AndroidManifest, xcconfig iOS).
- [ ] Vérifier le rendu sur les densités Android et dans AppIcon.appiconset.
- [ ] Documenter la procédure dans `docs/ARCHITECTURE.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné un appareil avec les 3 builds, quand on ouvre le lanceur, alors les 3 icônes se distinguent.
- [ ] Étant donné Android 13 avec icônes thématiques, quand elles sont activées, alors la version monochrome s'affiche.
- [ ] Étant donné le build iOS prod, quand on le valide pour App Store Connect, alors l'icône n'a pas de canal alpha.

## 🧪 Tests à écrire

- [ ] Script : toutes les tailles attendues existent après `tool/gen_icons.sh`.
- [ ] CI : le manifeste du flavor dev contient le label « Barça Dev ».
- [ ] Vérification manuelle documentée iOS et Android.

## 🔗 Dépendances

À réaliser après : `MOB-ZA-09` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §3.4
- CDC Flutter §9

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
