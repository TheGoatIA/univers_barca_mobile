> **MOB-ZA-03** · Données · Priorité **P1** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

La planche définit `--hero` : gradient 135° garnet → navy, réservé aux cartes mises en avant (cartes héros de ZB-05, splash, bandeau de notification push). Le code actuel `AppColors.primaryGradient` va de primaryLight à primary en diagonale haut-gauche/bas-droite, ce qui ne correspond pas.

## ✅ Objectif

Exposer `AppGradients.hero` exact, avec variantes sombre et courbe de lisibilité du texte blanc.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZA-02` — Palette de couleurs
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_light.webp?raw=true' width='330' alt='ZA-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__desktop_dark.webp?raw=true' width='330' alt='ZA-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_light.webp?raw=true' width='230' alt='ZA-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-02_palette-de-couleurs__mobile_dark.webp?raw=true' width='230' alt='ZA-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 02 » · « Couleurs » · « Palette sobre : grenat et marine en couleurs de marque, or en accent ponctuel. Tous les couples texte/fond respectent WCAG AA dans les deux thèmes. » · « Marque » · « Primary · Garnet » · « --primary » · « Clair #A50044 » · « Sombre #C4265E » · « Secondary · Navy » · « --secondary » · « Clair #004D98 » · « Sombre #4C86C9 » · « Accent · Gold » · « --accent » · « Clair #EDBB00 » · « Sombre #EDBB00 » · « Gradient hero » · « --hero » · « 135° garnet → navy » · « Cartes mises en avant » · « Surfaces et texte » · « Background » · « --bg » · « Clair #FFFFFF » · « Sombre #121218 » · « Surface » · « --surface » · « Clair #F7F7F9 » · « Sombre #1E1E27 » · « Text primary »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-01](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-01%5D%22) · [MOB-ZA-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-01%5D%22) · [MOB-ZA-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-02%5D%22) · [MOB-ZA-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-08%5D%22) · [MOB-ZA-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-13%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22) · [MOB-ZA-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-15%5D%22) · [MOB-ZA-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-16%5D%22)

#### `ZB-05` — Cartes, listes et grilles
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__desktop_light.webp?raw=true' width='330' alt='ZB-05 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__desktop_dark.webp?raw=true' width='330' alt='ZB-05 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__mobile_light.webp?raw=true' width='230' alt='ZB-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__mobile_dark.webp?raw=true' width='230' alt='ZB-05 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 05 » · « Cartes et listes » · « Cartes de 16 px de rayon, empilées et indépendantes ; ombres douces en clair, bordures subtiles en sombre. » · « Variantes de cartes » · « Standard » · « Titre de carte » · « Contenu de la carte avec texte secondaire. » · « À plat » · « Carte à plat » · « Sans ombre, fond surface. » · « Sélectionnée » · « Choix actif » · « Bordure primaire 2 px. » · « Héros (garnet → navy) » · « Liga · J11 » · « Barça – Real Madrid » · « Navy » · « Quiz adaptatif » · « Niveau 2 · Culé » · « Or (mise en avant) » · « Badge débloqué ! » · « Série de 10 jours » · « Cartes sémantiques » · « Avertissement » · « Série en danger » · « Erreur » · « Échec de l’envoi » · « Succès » · « Composition validée » · « Information »

**Composants repérés** : `avatar`, `card`, `toggle`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-14](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-14%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [MOB-ZB-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-13%5D%22) · [MOB-ZB-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-14%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22)

## 📐 Règles de gestion

- Angle 135° (CSS) = de haut-gauche vers bas-droite : `begin: Alignment.topLeft, end: Alignment.bottomRight`.
- Clair : #A50044 → #004D98 ; sombre : #C4265E → #4C86C9 (les contrastes texte blanc ≥ 4,5:1 vérifiés sur les deux extrémités ; sinon assombrir via overlay noir 12 %).
- Utilisation restreinte : cartes héros, splash, notification mise en avant, jamais sur boutons de formulaire courants (le bouton primaire utilise un dégradé subtil garnet défini dans ZB-01).

## 🛠️ Tâches

- [ ] Créer `lib/core/theme/app_gradients.dart` avec `hero`, `heroDark`, `primaryButton` (garnet clair → garnet), `gold` (halo or ZE-01).
- [ ] Fournir `AppGradients.of(context)` selon `Theme.of(context).brightness` via `BarcaThemeExtension`.
- [ ] Déprécier `AppColors.primaryGradient` et migrer l'existant.
- [ ] Ajouter `BarcaGradientBox` (Container décoré, rayon 16 par défaut, paramètre `padding`).
- [ ] Ajouter des tests de contraste texte blanc sur 5 points du dégradé (0, 25, 50, 75, 100 %).
- [ ] Ajouter la page widgetbook « Dégradés ».

## ✔️ Critères d'acceptation

- [ ] Étant donné `AppGradients.hero`, quand on lit begin/end, alors ils valent topLeft/bottomRight et les couleurs #A50044/#004D98.
- [ ] Étant donné le thème sombre, quand on rend `BarcaGradientBox`, alors le dégradé sombre est utilisé.
- [ ] Étant donné le texte blanc sur n'importe quel point du dégradé, alors le ratio ≥ 4,5:1.

## 🧪 Tests à écrire

- [ ] Unitaire : valeurs du gradient clair/sombre.
- [ ] Golden : `hero_gradient_light/dark` (voir `za-golden-fondations`).
- [ ] Unitaire : `contrastRatio(white, lerp(a,b,t))` ≥ 4,5 pour t∈{0,.25,.5,.75,1}.

## 🔗 Dépendances

À réaliser après : `MOB-ZA-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §4.5.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
