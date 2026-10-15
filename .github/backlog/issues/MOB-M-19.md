> **MOB-M-19** · Écran · Priorité **P1** · Taille **S** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Pour un utilisateur sans wallpaper, M-09 affiche l'illustration, « Aucun wallpaper pour l'instant », « Crée ton premier fond d'écran aux couleurs du Barça en quelques secondes. » et le bouton « Créer un wallpaper ».

## ✅ Objectif

Inciter à la première création avec un état vide soigné (BarcaEmptyState).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `M-09` — Galerie vide
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-09_galerie-vide__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-09_galerie-vide__phone_light.webp?raw=true' width='230' alt='M-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-09_galerie-vide__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-09_galerie-vide__phone_dark.webp?raw=true' width='230' alt='M-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-09_galerie-vide__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-09_galerie-vide__tablet_light.webp?raw=true' width='330' alt='M-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-09_galerie-vide__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-09_galerie-vide__tablet_dark.webp?raw=true' width='330' alt='M-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ma galerie » · « Aucun wallpaper pour l’instant » · « Crée ton premier fond d’écran aux couleurs du Barça en quelques secondes. » · « Créer un wallpaper »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [MOB-M-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-03%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

## 📐 Règles de gestion

- Affiché quand `total == 0` et onglet Tous ; pas de compteur « 0 wallpapers »
- Le CTA mène à M-01 ; si quota épuisé -> M-12, si module désactivé -> M-14
- Fonctionne identiquement en mode hors-ligne si le cache est vide (CTA désactivé + message)

## 🔄 Comportement et états

- Transition fondu depuis le squelette de chargement
- Illustration adaptée clair/sombre

## 🛠️ Tâches

- [ ] Créer `widgets/gallery_empty_state.dart` basé sur `BarcaEmptyState`
- [ ] Ajouter l'illustration SVG (`flutter_svg`) dans `assets/illustrations/wallpapers_empty.svg`
- [ ] Brancher le CTA sur la navigation conditionnelle quota/flag
- [ ] Clés ARB `wallpaperEmptyTitle`, `wallpaperEmptyBody`, `wallpaperCreateFirst`
- [ ] Test widget
- [ ] Golden clair/sombre
- [ ] Analytics `wallpaper_empty_cta_tapped`

## ✔️ Critères d'acceptation

- [ ] Étant donné total=0 quand la galerie s'affiche alors le titre « Aucun wallpaper pour l'instant » est visible
- [ ] Étant donné le tap sur « Créer un wallpaper » alors M-01 s'ouvre
- [ ] Étant donné un quota épuisé alors le CTA mène à M-12

## 🧪 Tests à écrire

- [ ] empty_state_test : textes
- [ ] empty_state_test : navigation conditionnelle
- [ ] golden : empty_light / empty_dark

## ♿ Accessibilité et i18n

- Illustration décorative exclue de l'arbre sémantique

## 🔗 Dépendances

À réaliser après : `MOB-M-17` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.5 (états d'écran)

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
