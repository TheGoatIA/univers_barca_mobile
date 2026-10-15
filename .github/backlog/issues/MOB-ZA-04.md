> **MOB-ZA-04** · Données · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

La planche Typographie fixe une échelle modulaire de ratio ~1,25 partagée avec l'admin : Display 47/56 px, h1 37, h2 30, h3 24, bodyLarge 19, body 15 ; caption se déduit (12 px). L'`AppTypography` actuel suit l'échelle Material 3 (57/45/36…) et ne correspond pas.

## ✅ Objectif

Remplacer l'échelle par les 7 styles du design system, exposés en objet `AppTypography` + `TextTheme` mappé.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZA-03` — Typographie
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__desktop_light.webp?raw=true' width='330' alt='ZA-03 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__desktop_dark.webp?raw=true' width='330' alt='ZA-03 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__mobile_light.webp?raw=true' width='230' alt='ZA-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__mobile_dark.webp?raw=true' width='230' alt='ZA-03 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 03 » · « Typographie » · « Barlow Condensed (esprit maillot sportif) pour les titres et les scores ; Inter, très lisible sur petit écran, pour le texte courant. Échelle modulaire de ratio ~1,25 partagée entre Flutter et l’admin React. » · « Familles » · « Titres & scores · Barlow Condensed » · « Més que un club » · « ABCDEFGHIJKLMNOPQRSTUVWXYZ 0123456789 » · « Graisses 600 · 700 · 800 · majuscules · interlettrage +0,5 % » · « Texte courant · Inter » · « Ton compagnon culé, au quotidien. » · « Abcdefghijklmnopqrstuvwxyz ÀÉÈÇÑ 0123456789 — lisible à toutes les tailles, sur tous les écrans. » · « Graisses 400 · 500 · 600 · 700 · 800 » · « Échelle typographique » · « Display » · « display · 47 / 56 px » · « Univers Barça » · « Titres d’écran héros, scores » · « H1 » · « h1 · 37 px » · « Mon équipe Fantasy » · « Titres d’écran » · « H2 » · « h2 · 30 px » · « Classement mondial » · « Titres de section » · « H3 » · « h3 · 24 px » · « Prochain match » · « Titres de carte » · « Body large »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-02](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-02%5D%22) · [MOB-ZA-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-05%5D%22) · [MOB-ZA-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-08%5D%22) · [MOB-ZA-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-13%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22) · [MOB-ZA-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-15%5D%22) · [MOB-ZA-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-16%5D%22)

## 📐 Règles de gestion

- Titres et scores : Barlow Condensed, graisses 600/700/800, MAJUSCULES, interlettrage +0,5 % (letterSpacing = 0,005 × fontSize).
- Texte courant : Inter graisses 400/500/600/700/800.
- Tailles : display 47 px / interligne 56 ; h1 37 ; h2 30 ; h3 24 ; bodyLarge 19 ; body 15 ; caption 12. Interlignes : h1 44, h2 36, h3 30, bodyLarge 28, body 22, caption 16.
- Exemples de la planche : display « Univers Barça » (héros, scores), h1 « Mon équipe Fantasy » (titres d'écran), h2 « Classement mondial » (sections), h3 « Prochain match » (titres de carte), bodyLarge « Pose ta question sur le Barça » (intro, sous-titres), body « Le Barça s'impose 3-1… ».
- Pas de TextStyle ad hoc dans les écrans (CDC Flutter §9.3) : tout passe par `AppTypography` ou `Theme.of(context).textTheme`.

## 🛠️ Tâches

- [ ] Réécrire `lib/core/theme/app_typography.dart` : constantes `AppTypography.display/h1/h2/h3/bodyLarge/body/caption` (TextStyle) et `textTheme(Brightness)`.
- [ ] Mapper vers TextTheme : displayLarge=display, headlineLarge=h1, headlineMedium=h2, headlineSmall=h3, bodyLarge, bodyMedium=body, bodySmall=caption, labelLarge=body w600.
- [ ] Ajouter variantes `scoreLarge` (display w800 chiffres tabulaires), `buttonLabel` (Inter w600 par taille, cf. ZB-01) et `overline` (Inter w600 11 px, MAJUSCULES, +8 % utilisé par les étiquettes de planche).
- [ ] Activer `FontFeature.tabularFigures()` sur scores, chronomètres (00:18) et compteurs.
- [ ] Appliquer `TextOverflow`/`maxLines` par défaut raisonnables dans les composants (pas dans les tokens).
- [ ] Migrer les usages `textTheme.titleLarge`… de l'existant vers les nouveaux noms.
- [ ] Ajouter test de non-régression de l'échelle (ratio entre tailles consécutives ∈ [1,2 ; 1,3]).

## ✔️ Critères d'acceptation

- [ ] Étant donné `AppTypography.h1`, quand on lit ses propriétés, alors fontSize = 37, famille Barlow Condensed, fontWeight ≥ 700.
- [ ] Étant donné `AppTypography.body`, alors fontSize = 15 et famille Inter.
- [ ] Étant donné un score affiché, quand on rend `scoreLarge`, alors les chiffres sont tabulaires (largeur constante entre « 1 » et « 8 »).
- [ ] Étant donné le texte système à 160 %, quand on rend un titre h2, alors la mise en page ne coupe pas le texte (cf. ZE-04).

## 🧪 Tests à écrire

- [ ] Unitaire : 7 tailles/interlignes attendus.
- [ ] Unitaire : ratio consécutif display/h1 = 1,27, h1/h2 = 1,23, h2/h3 = 1,25, bodyLarge/body = 1,27.
- [ ] Widget : `Text('Univers Barça', style: display)` rendu en MAJUSCULES via `textCase`/transform du composant `BarcaHeading`.
- [ ] Golden : planche typographie clair/sombre.

## 🔗 Dépendances

À réaliser après : `MOB-ZA-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §4.5.2
- CDC Flutter §9.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
