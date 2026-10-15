> **MOB-ZB-18** · Tests · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Non-régression visuelle des composants de base selon le CDC Flutter §9.4 et §10.1 (2 tailles × 2 thèmes), avec catalogue widgetbook.

## ✅ Objectif

Suite de goldens `test/golden/core/widgets/` et pages widgetbook pour boutons, champs, contrôles, badges, cartes, navigation.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-01` — Boutons — variantes, tailles et formes
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_light.webp?raw=true' width='330' alt='ZB-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_dark.webp?raw=true' width='330' alt='ZB-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_light.webp?raw=true' width='230' alt='ZB-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_dark.webp?raw=true' width='230' alt='ZB-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 01 » · « Boutons » · « Hauteurs 28 / 36 / 44 / 52 / 56 px, rayon 12 px. Toute zone interactive respecte une cible tactile d’au moins 44 × 44 points (la zone invisible est étendue pour les boutons XS et SM). » · « Variantes » · « Primaire » · « Valider » · « BarcaButton.primary » · « Secondaire (contour) » · « BarcaButton.secondary » · « Tonal » · « BarcaButton.tonal » · « Fantôme » · « BarcaButton.ghost » · « Texte » · « BarcaButton.text » · « Navy » · « BarcaButton.navy » · « Or » · « BarcaButton.gold » · « Danger » · « BarcaButton.danger » · « Tailles » · « Hauteur et typographie par taille — de XS (28 px) à Large (56 px). » · « Échelle » · « XS · 28 px » · « Continuer » · « SM · 36 px » · « MD · 44 px » · « Défaut · 52 px » · « LG · 56 px »

**Composants repérés** : `btn`, `spinner`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-06](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-06%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [ADM-ADS-37](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-37%5D%22) · [MOB-ZB-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-01%5D%22) · [MOB-ZB-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-02%5D%22) · [MOB-ZB-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-03%5D%22) · [MOB-ZD-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-12%5D%22)

#### `ZB-02` — Zones de saisie — formes, tailles et états
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_light.webp?raw=true' width='330' alt='ZB-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_dark.webp?raw=true' width='330' alt='ZB-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_light.webp?raw=true' width='230' alt='ZB-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_dark.webp?raw=true' width='230' alt='ZB-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 02 » · « Champs de saisie » · « Hauteur 52 px (60 px en grand, 44 px en compact), rayon 12 px, libellé au-dessus, aide et erreur en dessous. L’erreur est toujours associée au champ et redite par un texte (pas seulement par la couleur). » · « États » · « Repos » · « E-mail » · « prenom@exemple.com » · « Nous ne partagerons jamais ton adresse. » · « Focus » · « boris@exemple.com » · « Rempli » · « Erreur » · « boris@exemple » · « Adresse e-mail invalide » · « Succès » · « Boris_Culé » · « Désactivé » · « camille@univers-barca.app » · « Tailles » · « Compact · 44 px » · « Rechercher » · « Standard · 52 px » · « Pseudo » · « Grand · 60 px » · « Code d’invitation » · « Types de champs » · « Mot de passe » · « •••••••••• » · « Mot de passe solide » · « Sélecteur (liste) »

**Composants repérés** : `btn`, `input`, `search`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-07](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-07%5D%22) · [ADM-ADS-08](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-08%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [ADM-ADS-37](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-37%5D%22) · [MOB-ZB-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-04%5D%22) · [MOB-ZB-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-05%5D%22) · [MOB-ZB-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-06%5D%22) · [MOB-ZD-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-12%5D%22)

#### `ZB-03` — Contrôles de sélection
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__desktop_light.webp?raw=true' width='330' alt='ZB-03 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__desktop_dark.webp?raw=true' width='330' alt='ZB-03 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__mobile_light.webp?raw=true' width='230' alt='ZB-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-03_controles-de-selection__mobile_dark.webp?raw=true' width='230' alt='ZB-03 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 03 » · « Contrôles » · « Interrupteurs, cases, radios, segments, curseurs et puces : états repos, actif, désactivé. Les zones tactiles sont étendues à 44 pt. » · « Interrupteurs, cases et radios » · « Interrupteur » · « off · on · désactivé · 52×32 » · « Case à cocher » · « 24×24 · rayon 7 » · « Radio » · « 24×24 » · « Case admin » · « 18×18 · partiel » · « Segments, onglets, pagination » · « Contrôle segmenté » · « Amis » · « Monde » · « Segmenté à 3 » · « Décennie » · « Saison » · « Date » · « Indicateur d’étapes » · « stepper · pagination par points » · « Curseur et compteur » · « Curseur » · « Compteur +/− » · « Barres de progression » · « Puces (chips) » · « Filtres » · « Toutes » · « Liga »

**Composants repérés** : `btn`, `chip`, `toggle`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-08](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-08%5D%22) · [ADM-ADS-09](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-09%5D%22) · [ADM-ADS-10](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-10%5D%22) · [ADM-ADS-11](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-11%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [MOB-ZB-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-07%5D%22) · [MOB-ZB-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-08%5D%22) · [MOB-ZB-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-09%5D%22) · [MOB-ZB-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-10%5D%22)

#### `ZB-04` — Badges, tags, avatars et écussons
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__desktop_light.webp?raw=true' width='330' alt='ZB-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__desktop_dark.webp?raw=true' width='330' alt='ZB-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__mobile_light.webp?raw=true' width='230' alt='ZB-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__mobile_dark.webp?raw=true' width='230' alt='ZB-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 04 » · « Badges et visuels » · « Tags de statut, compteurs, avatars, portraits illustrés originaux et écussons génériques d’adversaires (initiales — jamais de logos officiels). » · « Tags et compteurs » · « Tags » · « Neutre » · « Primaire » · « Navy » · « Succès » · « Erreur » · « Alerte » · « Or » · « EN DIRECT » · « Tags grands » · « Liga · J11 » · « Résolu » · « Ferme dans 1 j » · « Compteurs et points » · « 99+ » · « Statuts admin » · « Badges de statut cohérents avec l’application (brouillon, publié, en attente, banni…). » · « Brouillon » · « En attente de traduction » · « Prête à publier » · « Publiée » · « Archivée » · « Suspendu 7 j » · « Banni » · « Urgent » · « À vérifier »

**Composants repérés** : `avatar`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-12](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-12%5D%22) · [ADM-ADS-13](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-13%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [MOB-ZB-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-11%5D%22) · [MOB-ZB-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-12%5D%22)

#### `ZB-05` — Cartes, listes et grilles
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__desktop_light.webp?raw=true' width='330' alt='ZB-05 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__desktop_dark.webp?raw=true' width='330' alt='ZB-05 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__mobile_light.webp?raw=true' width='230' alt='ZB-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__mobile_dark.webp?raw=true' width='230' alt='ZB-05 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 05 » · « Cartes et listes » · « Cartes de 16 px de rayon, empilées et indépendantes ; ombres douces en clair, bordures subtiles en sombre. » · « Variantes de cartes » · « Standard » · « Titre de carte » · « Contenu de la carte avec texte secondaire. » · « À plat » · « Carte à plat » · « Sans ombre, fond surface. » · « Sélectionnée » · « Choix actif » · « Bordure primaire 2 px. » · « Héros (garnet → navy) » · « Liga · J11 » · « Barça – Real Madrid » · « Navy » · « Quiz adaptatif » · « Niveau 2 · Culé » · « Or (mise en avant) » · « Badge débloqué ! » · « Série de 10 jours » · « Cartes sémantiques » · « Avertissement » · « Série en danger » · « Erreur » · « Échec de l’envoi » · « Succès » · « Composition validée » · « Information »

**Composants repérés** : `avatar`, `card`, `toggle`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-14](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-14%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [MOB-ZA-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-03%5D%22) · [MOB-ZB-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-13%5D%22) · [MOB-ZB-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-14%5D%22)

#### `ZB-06` — Navigation
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_light.webp?raw=true' width='330' alt='ZB-06 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_dark.webp?raw=true' width='330' alt='ZB-06 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_light.webp?raw=true' width='230' alt='ZB-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_dark.webp?raw=true' width='230' alt='ZB-06 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 06 » · « Navigation » · « Barre d’onglets à 5 entrées sur téléphone, rail de navigation sur tablette, barre d’application, onglets et fil d’Ariane côté admin. » · « Barre d’onglets (téléphone) » · « 5 onglets : Accueil, Jeux, Historique, Fantasy, Communauté — chaque onglet conserve sa propre pile de navigation. » · « Accueil actif » · « Accueil » · « Jeux » · « Historique » · « Fantasy » · « Communauté » · « pastille rouge = nouvelle activité » · « Fantasy actif » · « Rail de navigation (tablette) et barre d’application » · « Rail 96 px » · « Barre d’application » · « Calendrier » · « Quiz du jour » · « 125 ans d’histoire » · « Bandeaux d’état » · « Hors-ligne · derniers contenus » · « Connexion instable » · « Navigation admin » · « Onglets » · « Identité » · « Biographie » · « Statistiques » · « Photo » · « Contenu » · « Joueurs »

**Composants repérés** : `avatar`, `banner`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-10](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-10%5D%22) · [ADM-ADS-15](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-15%5D%22) · [ADM-ADS-21](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-21%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [MOB-FND-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-16%5D%22) · [MOB-FND-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-21%5D%22) · [MOB-ZB-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-15%5D%22) · [MOB-ZB-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-16%5D%22) · [MOB-ZB-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-17%5D%22) · [MOB-ZE-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-03%5D%22)

## 📐 Règles de gestion

- Tailles 360×640 et 430×932 ; thèmes clair/sombre ; langues FR/EN/ES pour textes longs (ES plus long).
- Un golden par planche et par état clef (pas de golden par prop).
- Échelle de texte 1,6 testée sur boutons, champs et chips.

## 🛠️ Tâches

- [ ] Créer `test/golden/core/widgets/{buttons,fields,controls,badges,cards,navigation}_golden_test.dart`.
- [ ] Ajouter use cases widgetbook correspondants.
- [ ] Générer les masters.
- [ ] Vérifier absence de débordement (`tester.takeException`).
- [ ] Documenter la mise à jour.
- [ ] Brancher la CI.

## ✔️ Critères d'acceptation

- [ ] Étant donné un changement de rayon des boutons, quand les goldens s'exécutent, alors ils échouent.
- [ ] Étant donné l'échelle 1,6, alors aucun overflow n'est levé.
- [ ] Étant donné les 3 langues, alors les textes longs ne débordent pas.

## 🧪 Tests à écrire

- [ ] Golden boutons.
- [ ] Golden champs.
- [ ] Golden contrôles.
- [ ] Golden badges.
- [ ] Golden cartes.
- [ ] Golden navigation.

## 🔗 Dépendances

À réaliser après : `MOB-ZB-01` · `MOB-ZB-04` · `MOB-ZB-10` · `MOB-ZB-13` · `MOB-ZB-15` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.4
- CDC Flutter §10

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
