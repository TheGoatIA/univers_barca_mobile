> **MOB-Q-09** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Q-04 « Accessibilité » : aperçu en direct (« Le Barça s'impose 3-1 à domicile devant son public. »), curseur « Taille du texte 100 % », interrupteurs « Réduire les animations » et « Contraste renforcé ».

## ✅ Objectif

Implémenter les trois réglages d'accessibilité appliqués globalement.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-04` — Taille du texte et accessibilité
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__phone_light.webp?raw=true' width='230' alt='Q-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__phone_dark.webp?raw=true' width='230' alt='Q-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__tablet_light.webp?raw=true' width='330' alt='Q-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__tablet_dark.webp?raw=true' width='330' alt='Q-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Accessibilité » · « Aperçu » · « Le Barça s'impose 3-1 à domicile devant son public. » · « Taille du texte » · « 100 % » · « Réduire les animations » · « Contraste renforcé »

**Composants repérés** : `card`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-AUTH-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-28%5D%22) · [MOB-Q-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-04%5D%22) · [MOB-Q-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-05%5D%22) · [MOB-Q-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-29%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Taille du texte : multiplicateur appliqué via `MediaQuery.textScaler` en plus du réglage système ; plage proposée 85 % à 150 % par pas de 5 % (à valider) ; « Taille système » = suivi du système.
- Réduire les animations : coupe flips, confetti, pulsations et transitions (consommé par D, E, O) ; initialisé depuis `MediaQuery.disableAnimations`.
- Contraste renforcé : palette de tokens à contraste élevé (≥ 7:1) et indicateurs non colorés (icônes) pour les jeux.

## 🛠️ Tâches

- [ ] Créer `settings_accessibility_page.dart` avec `TextScaleSlider`, `PreviewCard`, `SwitchListTile` ×2.
- [ ] Créer `AccessibilitySettings` + `AccessibilityCubit` exposé en `InheritedWidget`/`BlocProvider` racine.
- [ ] Appliquer `MediaQuery(data: copyWith(textScaler: TextScaler.linear(scale)))` dans `MaterialApp.builder`.
- [ ] Définir `AppColors.highContrast` (clair et sombre) dans `core/theme/app_colors.dart`.
- [ ] Exposer `context.reduceMotion` (extension dans `core/utils/extensions.dart`).
- [ ] Persister localement (`SettingsLocalDataSource`).
- [ ] Golden tests (100 % et 130 %).
- [ ] Tests widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné le curseur à 120 %, quand il change, alors l'aperçu et toute l'app grossissent immédiatement.
- [ ] Étant donné « Réduire les animations » actif, quand un flip de jeu est déclenché, alors il est instantané.
- [ ] Étant donné « Contraste renforcé » actif, quand un écran s'affiche, alors les contrastes sont ≥ 7:1.
- [ ] Étant donné « Taille système » sélectionné, quand le texte système change, alors l'app suit.

## 🧪 Tests à écrire

- [ ] Golden test : Q-04 à 100 % et 130 %.
- [ ] Widget test : `reduceMotion` global.
- [ ] Test : contraste ≥ 7:1 haute visibilité.
- [ ] Widget test : persistance.
- [ ] Test : suivi taille système.

## ♿ Accessibilité et i18n

- Clés ARB : `accessibilityTitle`, `preview`, `previewSentence`, `textSizeLabel`, `reduceAnimations`, `highContrast`.
- Le curseur annonce « Taille du texte, 120 pour cent ».

## 🔗 Dépendances

À réaliser après : `MOB-Q-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.6
- CDC Global §3.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
