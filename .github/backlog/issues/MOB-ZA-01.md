> **MOB-ZA-01** · Données · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

La planche Couleurs fixe la palette de marque (grenat, marine, or) et les surfaces. Le code actuel de `lib/core/theme/app_colors.dart` inverse `background`/`surface` en clair (background #F7F7F9, surface #FFFFFF) alors que le CDC §4.5.1 et la planche donnent background #FFFFFF et surface #F7F7F9. Cette issue réaligne tous les tokens et les expose par thème.

## ✅ Objectif

Un seul jeu de tokens de couleur, identique à la planche et au CDC, consommé par ThemeData et par tous les widgets (aucune couleur en dur).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZA-02` — Palette de couleurs
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_light.webp?raw=true' width='330' alt='ZA-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_dark.webp?raw=true' width='330' alt='ZA-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_light.webp?raw=true' width='230' alt='ZA-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_dark.webp?raw=true' width='230' alt='ZA-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 02 » · « Couleurs » · « Palette sobre : grenat et marine en couleurs de marque, or en accent ponctuel. Tous les couples texte/fond respectent WCAG AA dans les deux thèmes. » · « Marque » · « Primary · Garnet » · « --primary » · « Clair #A50044 » · « Sombre #C4265E » · « Secondary · Navy » · « --secondary » · « Clair #004D98 » · « Sombre #4C86C9 » · « Accent · Gold » · « --accent » · « Clair #EDBB00 » · « Sombre #EDBB00 » · « Gradient hero » · « --hero » · « 135° garnet → navy » · « Cartes mises en avant » · « Surfaces et texte » · « Background » · « --bg » · « Clair #FFFFFF » · « Sombre #121218 » · « Surface » · « --surface » · « Clair #F7F7F9 » · « Sombre #1E1E27 » · « Text primary »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-01](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-01%5D%22) · [MOB-ZA-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-02%5D%22) · [MOB-ZA-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-03%5D%22) · [MOB-ZA-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-08%5D%22) · [MOB-ZA-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-13%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22) · [MOB-ZA-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-15%5D%22) · [MOB-ZA-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-16%5D%22)

## 📐 Règles de gestion

- Marque : primary/garnet #A50044 (sombre #C4265E), secondary/navy #004D98 (sombre #4C86C9), accent/gold #EDBB00 (identique dans les deux thèmes).
- Surfaces : background #FFFFFF / #121218 ; surface #F7F7F9 / #1E1E27.
- Texte : text-primary #1A1A2E / #F2F2F5 ; text-secondary #595959 / #A0A0AE.
- Sémantiques : success #1E8E5A / #3CBE82, error #D64545 / #E86C6C, warning #E0A400 / #F0C24B ; info = secondary.
- Noms Dart du CDC Flutter §9.2 : colorPrimary, colorSecondary, colorAccent, colorBackground, colorSurface, colorTextPrimary, colorTextSecondary exposés en plus des noms existants (alias dépréciés `@Deprecated` pour éviter de casser le code actuel).

## 🛠️ Tâches

- [ ] Corriger `AppColors.background`/`surface` (clair) et ajouter `backgroundDark`, `surfaceDark` conformes.
- [ ] Créer `lib/core/theme/app_color_tokens.dart` : classe immuable `AppColorTokens` (champs primary, onPrimary, secondary, accent, background, surface, surfaceVariant, outline, textPrimary, textSecondary, textTertiary, success, error, warning, info) avec `light` et `dark` statiques.
- [ ] Ajouter les fonds teintés sémantiques (successContainer, errorContainer, warningContainer, infoContainer) à 12 % d'opacité de la couleur de base, utilisés par les tags, bandeaux et cartes sémantiques.
- [ ] Ajouter `primaryContainer` (tonal) = primary à 12 % et `onPrimary` #FFFFFF ; définir `disabled` = primary à 38 % d'opacité.
- [ ] Mapper `AppColorTokens` vers `ColorScheme` dans `app_theme.dart` (lightTheme/darkTheme) sans valeur codée en dur.
- [ ] Supprimer la dépendance de `primaryDark`/`primaryLight` aux anciens usages ; migrer les références restantes (grep `AppColors.`).
- [ ] Documenter chaque token (usage, ratio de contraste mesuré) dans les commentaires de la classe.

## ✔️ Critères d'acceptation

- [ ] Étant donné le thème clair, quand on lit `AppColorTokens.light.background`, alors la valeur est #FFFFFF et `surface` #F7F7F9.
- [ ] Étant donné le thème sombre, quand on lit `dark.primary`, alors la valeur est #C4265E et `accent` reste #EDBB00.
- [ ] Étant donné `lightTheme`, quand on inspecte `colorScheme.surface`, alors elle est égale à `AppColorTokens.light.surface`.
- [ ] Étant donné le dépôt, quand on exécute `flutter analyze`, alors aucun usage d'API dépréciée de `AppColors` ne subsiste hors fichier de compatibilité.

## 🧪 Tests à écrire

- [ ] Test unitaire : `app_color_tokens_test` vérifie les 2 × 15 valeurs hexadécimales contre le tableau du CDC §4.5.1.
- [ ] Test unitaire : `light` et `dark` exposent exactement les mêmes champs (réflexion sur toJson).
- [ ] Test widget : `MaterialApp(theme: lightTheme)` fournit `Theme.of(ctx).colorScheme.primary == #A50044`.
- [ ] Test unitaire : container à 12 % d'opacité == Color.alphaBlend attendu pour les 4 sémantiques.

## ♿ Accessibilité et i18n

- Les couleurs ne portent jamais seules l'information (cf. ZD-05) : prévoir pour chaque sémantique une icône associée dans `AppColorTokens` documentation.

## 📚 Références

- CDC Global §4.5.1
- CDC Flutter §9.1–§9.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
