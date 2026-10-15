> **MOB-ZA-02** · Tests · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

La planche affirme que tous les couples texte/fond respectent WCAG AA dans les deux thèmes. Il faut une vérification automatisée pour éviter toute régression lors des changements de palette.

## ✅ Objectif

Un test unitaire qui calcule les ratios de contraste de tous les couples utilisés et échoue sous 4,5:1 (3:1 pour les textes ≥ 24 px ou en gras 19 px).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZA-02` — Palette de couleurs
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_light.webp?raw=true' width='330' alt='ZA-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_dark.webp?raw=true' width='330' alt='ZA-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_light.webp?raw=true' width='230' alt='ZA-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_dark.webp?raw=true' width='230' alt='ZA-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 02 » · « Couleurs » · « Palette sobre : grenat et marine en couleurs de marque, or en accent ponctuel. Tous les couples texte/fond respectent WCAG AA dans les deux thèmes. » · « Marque » · « Primary · Garnet » · « --primary » · « Clair #A50044 » · « Sombre #C4265E » · « Secondary · Navy » · « --secondary » · « Clair #004D98 » · « Sombre #4C86C9 » · « Accent · Gold » · « --accent » · « Clair #EDBB00 » · « Sombre #EDBB00 » · « Gradient hero » · « --hero » · « 135° garnet → navy » · « Cartes mises en avant » · « Surfaces et texte » · « Background » · « --bg » · « Clair #FFFFFF » · « Sombre #121218 » · « Surface » · « --surface » · « Clair #F7F7F9 » · « Sombre #1E1E27 » · « Text primary »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-01](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-01%5D%22) · [MOB-ZA-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-01%5D%22) · [MOB-ZA-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-03%5D%22) · [MOB-ZA-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-08%5D%22) · [MOB-ZA-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-13%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22) · [MOB-ZA-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-15%5D%22) · [MOB-ZA-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-16%5D%22)

## 📐 Règles de gestion

- Seuils WCAG 2.1 AA : 4,5:1 texte normal, 3:1 texte large (≥ 24 px ou ≥ 18,66 px gras) et composants d'interface.
- Couples à tester pour chaque thème : textPrimary/background, textPrimary/surface, textSecondary/background, textSecondary/surface, onPrimary/primary, onPrimary/secondary, text sombre sur accent (#1A1A2E sur #EDBB00), onSuccess/success, onError/error, onWarning/warning, primary/background (liens et focus).
- Le texte blanc sur or n'est PAS autorisé : l'or porte du texte #1A1A2E (cf. bouton Or de ZB-01).

## 🛠️ Tâches

- [ ] Créer `lib/core/theme/contrast.dart` : `double contrastRatio(Color a, Color b)` (luminance relative sRGB).
- [ ] Créer `test/core/theme/contrast_test.dart` avec une table de couples (nom, fg, bg, seuil) pour clair et sombre.
- [ ] Générer un message d'échec lisible : `AppColors.textSecondary sur surface = 4.2:1 < 4.5:1`.
- [ ] Ajouter le test à la CI (cf. FND `ci-couverture-seuils`) sans seuil de couverture dédié.
- [ ] Ajuster éventuellement les teintes limites (ex. warning #E0A400 sur blanc, usage restreint aux fonds teintés + icône) et documenter les usages interdits.
- [ ] Documenter dans `docs/DESIGN_SYSTEM.md` la matrice de couples autorisés.

## ✔️ Critères d'acceptation

- [ ] Étant donné les couples listés, quand le test s'exécute, alors tous passent en clair et en sombre.
- [ ] Étant donné un token modifié pour descendre sous le seuil, quand le test s'exécute, alors il échoue avec le nom du couple.
- [ ] Étant donné le texte sur fond or, quand on mesure #1A1A2E sur #EDBB00, alors le ratio est ≥ 4,5:1.

## 🧪 Tests à écrire

- [ ] Unitaire : `contrastRatio(black, white) == 21`.
- [ ] Unitaire : `contrastRatio(textPrimary, background)` ≥ 4,5 en clair et en sombre.
- [ ] Unitaire : couples de marque `onPrimary/primary` clair ≥ 4,5 et sombre ≥ 4,5.
- [ ] Unitaire : le test échoue (expectLater throws) sur un couple volontairement dégradé.

## 🔗 Dépendances

À réaliser après : `MOB-ZA-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §3.3
- CDC Global §4.5.3
- CDC Flutter §9.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
