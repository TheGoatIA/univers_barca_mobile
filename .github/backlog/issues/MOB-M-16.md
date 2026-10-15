> **MOB-M-16** · Écran · Priorité **P1** · Taille **S** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Quand l'enregistrement échoue pour cause de permission, M-07 affiche une modale : « Accès aux photos requis — Pour enregistrer le wallpaper, autorise l'accès aux photos dans les réglages. Tu peux aussi le partager directement. » avec « Ouvrir les réglages » et « Partager à la place ».

## ✅ Objectif

Débloquer l'utilisateur sans l'enfermer : réglages ou partage.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `M-07` — Autorisation photos refusée
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-07_autorisation-photos-refusee__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-07_autorisation-photos-refusee__phone_light.webp?raw=true' width='230' alt='M-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-07_autorisation-photos-refusee__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-07_autorisation-photos-refusee__phone_dark.webp?raw=true' width='230' alt='M-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-07_autorisation-photos-refusee__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-07_autorisation-photos-refusee__tablet_light.webp?raw=true' width='330' alt='M-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-07_autorisation-photos-refusee__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-07_autorisation-photos-refusee__tablet_dark.webp?raw=true' width='330' alt='M-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ton wallpaper » · « Yamal » · « Accès aux photos requis » · « Pour enregistrer le wallpaper, autorise l'accès aux photos dans les réglages. Tu peux aussi le partager directement. » · « Ouvrir les réglages » · « Partager à la place »

**Composants repérés** : `btn`, `modal`

</details>

**Issues liées sur ce même écran :** [MOB-M-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-15%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

## 📐 Règles de gestion

- Deux actions : « Ouvrir les réglages » (`openAppSettings`) et « Partager à la place » (ouvre M-11)
- Au retour des réglages (resumed), réessai automatique de l'enregistrement si la permission est maintenant accordée
- La modale se ferme par tap extérieur (sans action)

## 🔄 Comportement et états

- Fermeture -> retour à M-05
- Partage depuis la modale -> même sheet que M-11

## 🛠️ Tâches

- [ ] Créer `widgets/photos_permission_dialog.dart`
- [ ] Écouter `AppLifecycleState.resumed` pour re-vérifier `Permission.photos.status`
- [ ] Relancer `SaveWallpaperToGalleryUseCase` si accordé
- [ ] Brancher « Partager à la place » sur `ShareWallpaperUseCase`
- [ ] Clés ARB `photosPermissionTitle`, `photosPermissionBody`, `openSettings`, `shareInstead`
- [ ] Test widget
- [ ] Golden clair/sombre
- [ ] Analytics `wallpaper_permission_denied`

## ✔️ Critères d'acceptation

- [ ] Étant donné un refus quand la modale s'affiche alors les deux boutons sont présents
- [ ] Étant donné un retour des réglages avec permission accordée alors l'image est enregistrée sans nouvelle action
- [ ] Étant donné « Partager à la place » alors la feuille de partage s'ouvre

## 🧪 Tests à écrire

- [ ] photos_dialog_test : actions
- [ ] photos_dialog_test : réessai au resumed
- [ ] golden : photos_dialog_light / dark

## ♿ Accessibilité et i18n

- Titre en `header` sémantique ; focus initial sur « Ouvrir les réglages »

## 🔗 Dépendances

À réaliser après : `MOB-M-15` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §6.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
