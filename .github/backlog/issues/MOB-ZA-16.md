> **MOB-ZA-16** · Documentation · Priorité **P2** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

La planche Mouvement et tokens indique une seule source de vérité partagée entre Flutter (AppColors/AppTypography/AppSpacing) et l'admin (variables CSS `--color-primary`…). Il faut documenter la table de correspondance et contrôler la dérive.

## ✅ Objectif

`docs/DESIGN_SYSTEM.md` complet et un test de parité couleurs avec un `tokens.json` de référence.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZA-02` — Palette de couleurs
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_light.webp?raw=true' width='330' alt='ZA-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_dark.webp?raw=true' width='330' alt='ZA-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_light.webp?raw=true' width='230' alt='ZA-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_dark.webp?raw=true' width='230' alt='ZA-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 02 » · « Couleurs » · « Palette sobre : grenat et marine en couleurs de marque, or en accent ponctuel. Tous les couples texte/fond respectent WCAG AA dans les deux thèmes. » · « Marque » · « Primary · Garnet » · « --primary » · « Clair #A50044 » · « Sombre #C4265E » · « Secondary · Navy » · « --secondary » · « Clair #004D98 » · « Sombre #4C86C9 » · « Accent · Gold » · « --accent » · « Clair #EDBB00 » · « Sombre #EDBB00 » · « Gradient hero » · « --hero » · « 135° garnet → navy » · « Cartes mises en avant » · « Surfaces et texte » · « Background » · « --bg » · « Clair #FFFFFF » · « Sombre #121218 » · « Surface » · « --surface » · « Clair #F7F7F9 » · « Sombre #1E1E27 » · « Text primary »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-01](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-01%5D%22) · [MOB-ZA-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-01%5D%22) · [MOB-ZA-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-02%5D%22) · [MOB-ZA-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-03%5D%22) · [MOB-ZA-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-08%5D%22) · [MOB-ZA-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-13%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22) · [MOB-ZA-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-15%5D%22)

#### `ZA-03` — Typographie
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__desktop_light.webp?raw=true' width='330' alt='ZA-03 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__desktop_dark.webp?raw=true' width='330' alt='ZA-03 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__mobile_light.webp?raw=true' width='230' alt='ZA-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__mobile_dark.webp?raw=true' width='230' alt='ZA-03 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 03 » · « Typographie » · « Barlow Condensed (esprit maillot sportif) pour les titres et les scores ; Inter, très lisible sur petit écran, pour le texte courant. Échelle modulaire de ratio ~1,25 partagée entre Flutter et l’admin React. » · « Familles » · « Titres & scores · Barlow Condensed » · « Més que un club » · « ABCDEFGHIJKLMNOPQRSTUVWXYZ 0123456789 » · « Graisses 600 · 700 · 800 · majuscules · interlettrage +0,5 % » · « Texte courant · Inter » · « Ton compagnon culé, au quotidien. » · « Abcdefghijklmnopqrstuvwxyz ÀÉÈÇÑ 0123456789 — lisible à toutes les tailles, sur tous les écrans. » · « Graisses 400 · 500 · 600 · 700 · 800 » · « Échelle typographique » · « Display » · « display · 47 / 56 px » · « Univers Barça » · « Titres d’écran héros, scores » · « H1 » · « h1 · 37 px » · « Mon équipe Fantasy » · « Titres d’écran » · « H2 » · « h2 · 30 px » · « Classement mondial » · « Titres de section » · « H3 » · « h3 · 24 px » · « Prochain match » · « Titres de carte » · « Body large »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-02](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-02%5D%22) · [MOB-ZA-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-04%5D%22) · [MOB-ZA-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-05%5D%22) · [MOB-ZA-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-08%5D%22) · [MOB-ZA-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-13%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22) · [MOB-ZA-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-15%5D%22)

#### `ZA-04` — Espacements, rayons et ombres
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__desktop_light.webp?raw=true' width='330' alt='ZA-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__desktop_dark.webp?raw=true' width='330' alt='ZA-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__mobile_light.webp?raw=true' width='230' alt='ZA-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-04_espacements-rayons-et-ombres__mobile_dark.webp?raw=true' width='230' alt='ZA-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 04 » · « Espacement et formes » · « Grille de 4/8 px, coins arrondis modérés et cohérents (12–16 px sur les cartes), ombres douces en thème clair, bordures subtiles en thème sombre. » · « Échelle d’espacement » · « multiples de 4 px » · « AppSpacing.xs » · « 4 px » · « AppSpacing.sm » · « 8 px » · « AppSpacing.md » · « 12 px » · « AppSpacing.lg » · « 16 px » · « AppSpacing.xl » · « 24 px » · « AppSpacing.2xl » · « 32 px » · « AppSpacing.3xl » · « 40 px » · « Rayons » · « xs » · « · 6 px » · « Tags » · « sm » · « · 8 px » · « Petits boutons » · « md » · « · 12 px » · « Boutons, champs » · « lg »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-03](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-03%5D%22) · [MOB-ZA-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-06%5D%22) · [MOB-ZA-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-07%5D%22) · [MOB-ZA-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-08%5D%22) · [MOB-ZA-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-13%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22) · [MOB-ZA-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-15%5D%22)

#### `ZD-06` — Mouvement et tokens
_Module : Composants métier et responsive_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-06_mouvement-et-tokens__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-06_mouvement-et-tokens__desktop_light.webp?raw=true' width='330' alt='ZD-06 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-06_mouvement-et-tokens__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-06_mouvement-et-tokens__desktop_dark.webp?raw=true' width='330' alt='ZD-06 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-06_mouvement-et-tokens__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-06_mouvement-et-tokens__mobile_light.webp?raw=true' width='230' alt='ZD-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-06_mouvement-et-tokens__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-06_mouvement-et-tokens__mobile_dark.webp?raw=true' width='230' alt='ZD-06 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Qualité · 02 » · « Mouvement et tokens » · « Micro-animations soignées (validation de quiz, déblocage de badge, ouverture de la bulle IA) sans jamais nuire à la performance perçue. Tokens partagés Flutter ↔ CSS. » · « Durées et courbes » · « Instantané » · « 100 ms » · « Retour de pression, bascule » · « Rapide » · « 180 ms » · « Chips, onglets, toasts » · « Standard » · « 280 ms » · « Sheets, transitions de question » · « Expressif » · « 480 ms » · « Badge débloqué, montée de niveau » · « Easing standard » · « cubic-bezier(.2,0,0,1) » · « Easing sortie » · « cubic-bezier(.4,0,.2,1) » · « Respect de « réduire les animations » » · « Animations réduites : transitions instantanées » · « Micro-interactions clés » · « Validation d’un quiz » · « Couleur + icône immédiates, légère vibration haptique » · « Déblocage d’un badge » · « Pop de l’hexagone puis halo or » · « Ouverture de la bulle IA » · « Expansion circulaire vers le sheet » · « Série maintenue »

**Composants repérés** : `toggle`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-30](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-30%5D%22) · [MOB-ZD-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-13%5D%22) · [MOB-ZD-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-14%5D%22)

## 📐 Règles de gestion

- Table : token CDC → nom Dart → variable CSS (`--color-primary` #A50044 / sombre #C4265E, `--color-secondary`, `--color-accent`, `--color-background`, `--color-surface`, `--color-text-primary`).
- Fichier `design/tokens.json` versionné (couleurs, typo, spacing, radii, durées) ; le dépôt admin consomme le même contenu.
- Toute modification de token passe par une PR touchant `tokens.json` et les deux consommateurs.

## 🛠️ Tâches

- [ ] Créer `design/tokens.json`.
- [ ] Rédiger `docs/DESIGN_SYSTEM.md` (principes, tokens, composants, checklist d'ajout).
- [ ] Écrire `test/core/theme/tokens_parity_test.dart` qui compare `AppColorTokens` et `tokens.json`.
- [ ] Ajouter une section « Contribution design » dans `CONTRIBUTING.md`.
- [ ] Lister les écarts connus CDC ↔ code (ex. md=12 vs 16) dans un ADR.

## ✔️ Critères d'acceptation

- [ ] Étant donné `tokens.json`, quand le test de parité s'exécute, alors toutes les couleurs correspondent aux constantes Dart.
- [ ] Étant donné un token modifié d'un seul côté, alors le test échoue.
- [ ] Étant donné la documentation, alors chaque token y apparaît avec nom Dart et CSS.

## 🧪 Tests à écrire

- [ ] Test de parité couleurs.
- [ ] Test de parité durées/rayons.
- [ ] Lint markdown de la doc.

## 🔗 Dépendances

À réaliser après : `MOB-ZA-08` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §4.5
- CDC Flutter §9.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
