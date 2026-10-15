> **MOB-ZA-13** · Infrastructure · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

CDC Flutter §9.3 recommande un storybook interne (widgetbook) pour valider chaque composant du design system dans les deux thèmes et les trois langues. Cette issue pose l'application widgetbook et les pages des fondations ; ZB à ZE ajoutent leurs composants.

## ✅ Objectif

Une app `widgetbook/` démarrable avec sélecteurs thème, langue, taille de texte et appareil.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZA-01` — Identité et logo
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__desktop_light.webp?raw=true' width='330' alt='ZA-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__desktop_dark.webp?raw=true' width='330' alt='ZA-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__mobile_light.webp?raw=true' width='230' alt='ZA-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__mobile_dark.webp?raw=true' width='230' alt='ZA-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 01 » · « Identité visuelle » · « Univers Barça développe une identité propre et originale, clairement « fan-made » : aucun logo officiel, écusson ni maillot protégé. L'emblème s'inspire des rayures blaugrana de façon libre et stylisée. » · « Emblème et wordmark » · « Univers » · « Barça » · « Version principale » · « Version monochrome sur fond de marque » · « Emblème seul » · « Icône d'application » · « Univers Barça » · « flavor : prod » · « Dev » · « flavor : dev » · « Staging » · « flavor : staging » · « Tailles minimales » · « 24 px » · « 32 px » · « 48 px » · « 64 px » · « Zone de protection et usages » · « Marge de protection = hauteur de la lettre « U » du wordmark, sur les 4 côtés. » · « Toujours : utiliser l’emblème original sur fond uni ou dégradé de marque. » · « Toujours : contraste AA entre emblème et fond. » · « Jamais : reproduire le logo, l’écusson ou les maillots officiels du club. » · « Jamais : déformer, recolorer ou ajouter d’effets à l’emblème. »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-04](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-04%5D%22) · [MOB-FND-44](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-44%5D%22) · [MOB-ZA-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-09%5D%22) · [MOB-ZA-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-10%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22)

#### `ZA-02` — Palette de couleurs
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_light.webp?raw=true' width='330' alt='ZA-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_dark.webp?raw=true' width='330' alt='ZA-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_light.webp?raw=true' width='230' alt='ZA-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_dark.webp?raw=true' width='230' alt='ZA-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 02 » · « Couleurs » · « Palette sobre : grenat et marine en couleurs de marque, or en accent ponctuel. Tous les couples texte/fond respectent WCAG AA dans les deux thèmes. » · « Marque » · « Primary · Garnet » · « --primary » · « Clair #A50044 » · « Sombre #C4265E » · « Secondary · Navy » · « --secondary » · « Clair #004D98 » · « Sombre #4C86C9 » · « Accent · Gold » · « --accent » · « Clair #EDBB00 » · « Sombre #EDBB00 » · « Gradient hero » · « --hero » · « 135° garnet → navy » · « Cartes mises en avant » · « Surfaces et texte » · « Background » · « --bg » · « Clair #FFFFFF » · « Sombre #121218 » · « Surface » · « --surface » · « Clair #F7F7F9 » · « Sombre #1E1E27 » · « Text primary »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-01](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-01%5D%22) · [MOB-ZA-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-01%5D%22) · [MOB-ZA-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-02%5D%22) · [MOB-ZA-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-03%5D%22) · [MOB-ZA-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-08%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22) · [MOB-ZA-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-15%5D%22) · [MOB-ZA-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-16%5D%22)

#### `ZA-03` — Typographie
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__desktop_light.webp?raw=true' width='330' alt='ZA-03 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__desktop_dark.webp?raw=true' width='330' alt='ZA-03 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__mobile_light.webp?raw=true' width='230' alt='ZA-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__mobile_dark.webp?raw=true' width='230' alt='ZA-03 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 03 » · « Typographie » · « Barlow Condensed (esprit maillot sportif) pour les titres et les scores ; Inter, très lisible sur petit écran, pour le texte courant. Échelle modulaire de ratio ~1,25 partagée entre Flutter et l’admin React. » · « Familles » · « Titres & scores · Barlow Condensed » · « Més que un club » · « ABCDEFGHIJKLMNOPQRSTUVWXYZ 0123456789 » · « Graisses 600 · 700 · 800 · majuscules · interlettrage +0,5 % » · « Texte courant · Inter » · « Ton compagnon culé, au quotidien. » · « Abcdefghijklmnopqrstuvwxyz ÀÉÈÇÑ 0123456789 — lisible à toutes les tailles, sur tous les écrans. » · « Graisses 400 · 500 · 600 · 700 · 800 » · « Échelle typographique » · « Display » · « display · 47 / 56 px » · « Univers Barça » · « Titres d’écran héros, scores » · « H1 » · « h1 · 37 px » · « Mon équipe Fantasy » · « Titres d’écran » · « H2 » · « h2 · 30 px » · « Classement mondial » · « Titres de section » · « H3 » · « h3 · 24 px » · « Prochain match » · « Titres de carte » · « Body large »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-02](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-02%5D%22) · [MOB-ZA-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-04%5D%22) · [MOB-ZA-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-05%5D%22) · [MOB-ZA-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-08%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22) · [MOB-ZA-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-15%5D%22) · [MOB-ZA-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-16%5D%22)

#### `ZA-04` — Espacements, rayons et ombres
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__desktop_light.webp?raw=true' width='330' alt='ZA-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__desktop_dark.webp?raw=true' width='330' alt='ZA-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__mobile_light.webp?raw=true' width='230' alt='ZA-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__mobile_dark.webp?raw=true' width='230' alt='ZA-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 04 » · « Espacement et formes » · « Grille de 4/8 px, coins arrondis modérés et cohérents (12–16 px sur les cartes), ombres douces en thème clair, bordures subtiles en thème sombre. » · « Échelle d’espacement » · « multiples de 4 px » · « AppSpacing.xs » · « 4 px » · « AppSpacing.sm » · « 8 px » · « AppSpacing.md » · « 12 px » · « AppSpacing.lg » · « 16 px » · « AppSpacing.xl » · « 24 px » · « AppSpacing.2xl » · « 32 px » · « AppSpacing.3xl » · « 40 px » · « Rayons » · « xs » · « · 6 px » · « Tags » · « sm » · « · 8 px » · « Petits boutons » · « md » · « · 12 px » · « Boutons, champs » · « lg »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-03](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-03%5D%22) · [MOB-ZA-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-06%5D%22) · [MOB-ZA-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-07%5D%22) · [MOB-ZA-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-08%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22) · [MOB-ZA-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-15%5D%22) · [MOB-ZA-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-16%5D%22)

#### `ZA-05` — Iconographie
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-05_iconographie__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-05_iconographie__desktop_light.webp?raw=true' width='330' alt='ZA-05 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-05_iconographie__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-05_iconographie__desktop_dark.webp?raw=true' width='330' alt='ZA-05 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-05_iconographie__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-05_iconographie__mobile_light.webp?raw=true' width='230' alt='ZA-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-05_iconographie__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-05_iconographie__mobile_dark.webp?raw=true' width='230' alt='ZA-05 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 05 » · « Iconographie » · « Jeu d’icônes original sur grille 24 px, trait 1,8 px, extrémités arrondies. Aucun élément de marque protégé. » · « Bibliothèque » · « 146 icônes » · « home » · « gamepad » · « history » · « trophy » · « shirt » · « users » · « pin » · « calendar » · « calendar-plus » · « bell » · « bell-off » · « user » · « user-plus » · « user-x » · « user-check » · « settings » · « search » · « chevron-l » · « chevron-r » · « chevron-d » · « chevron-u » · « chevrons-ud » · « check » · « check-circle » · « x-circle »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-05](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-05%5D%22) · [MOB-ZA-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-11%5D%22) · [MOB-ZA-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-12%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22)

## 📐 Règles de gestion

- Addons : thème (clair/sombre), locale (fr/en/es), appareil (iPhone SE 375, iPhone 15 Pro Max 430, tablette 834), échelle de texte (1,0 ; 1,3 ; 1,6), grille 4 px superposable.
- Une page par fondation : palette (swatch avec hex et ratio), échelle typographique, espacements, rayons/ombres, icônes, logos.
- Aucune dépendance de widgetbook dans l'application de production (`dev_dependencies`, dossier séparé).

## 🛠️ Tâches

- [ ] Créer `widgetbook/` (pubspec propre) avec `main.dart` et `lib/` des use cases.
- [ ] Configurer les addons Theme, Locale, Device, TextScale.
- [ ] Écrire les 5 pages de fondations.
- [ ] Script `tool/widgetbook.sh` + commande dans le README.
- [ ] Étape CI de build web du catalogue (artefact).
- [ ] Convention `*_usecases.dart` à côté de chaque composant ou dans `widgetbook/lib/`.

## ✔️ Critères d'acceptation

- [ ] Étant donné `tool/widgetbook.sh`, quand il est lancé, alors le catalogue s'ouvre avec 5 pages fondations.
- [ ] Étant donné le sélecteur de thème, quand on passe en sombre, alors les swatches utilisent les valeurs sombres.
- [ ] Étant donné l'échelle de texte 1,6, quand on ouvre la page typographie, alors rien n'est tronqué.

## 🧪 Tests à écrire

- [ ] CI : `flutter build web` du widgetbook réussit.
- [ ] Test : chaque use case se construit sans exception (smoke test).
- [ ] Test : les 3 locales sont sélectionnables.

## 📚 Références

- CDC Flutter §9.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
