> **MOB-M-13** · Écran · Priorité **P0** · Taille **M** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Le bottom sheet M-06 liste : Écran d'accueil (Android uniquement), Écran verrouillé, Enregistrer dans la pellicule (iOS et Android), Partager (WhatsApp, Instagram, X…) et une note iOS : « Sur iPhone, l'application directe n'est pas possible : le wallpaper est enregistré dans la pellicule. ».

## ✅ Objectif

Adapter les options à la plateforme et diriger vers la bonne action.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `M-06` — Enregistrer ou appliquer
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-06_enregistrer-ou-appliquer__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-06_enregistrer-ou-appliquer__phone_light.webp?raw=true' width='230' alt='M-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-06_enregistrer-ou-appliquer__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-06_enregistrer-ou-appliquer__phone_dark.webp?raw=true' width='230' alt='M-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-06_enregistrer-ou-appliquer__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-06_enregistrer-ou-appliquer__tablet_light.webp?raw=true' width='330' alt='M-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-06_enregistrer-ou-appliquer__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-06_enregistrer-ou-appliquer__tablet_dark.webp?raw=true' width='330' alt='M-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ton wallpaper » · « Yamal » · « Utiliser ce wallpaper » · « Écran d’accueil » · « Android uniquement » · « Écran verrouillé » · « Enregistrer dans la pellicule » · « iOS et Android » · « Partager » · « WhatsApp, Instagram, X… » · « Sur iPhone, l'application directe n'est pas possible : le wallpaper est enregistré dans la pellicule. »

**Composants repérés** : `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [MOB-M-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-14%5D%22) · [MOB-M-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-15%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

## 📐 Règles de gestion

- Android : 3 options d'application (Accueil, Verrouillé, Les deux via deux appels) + Enregistrer + Partager
- iOS : options d'application masquées/désactivées avec la note explicative ; seules Enregistrer et Partager actives (CDC Flutter §7.9)
- Le libellé « Android uniquement » est un sous-titre, pas un badge d'erreur
- Détection de plateforme via `defaultTargetPlatform` injecté (testable)

## 🔄 Comportement et états

- Chaque ligne affiche un indicateur de chargement pendant l'action puis se ferme au succès
- Erreur : snackbar avec action Réessayer
- Sheet non dismissible pendant une action en cours

## 🛠️ Tâches

- [ ] Créer `widgets/use_wallpaper_sheet.dart` (`showModalBottomSheet`, `useSafeArea`)
- [ ] Créer `PlatformCapabilities` (`canApplyWallpaper`) dans `core/services`
- [ ] Créer les `WallpaperActionsCubit` (apply, save, share) avec états `Idle/Working/Done/Failure`
- [ ] Gérer la note iOS via ARB `wallpaperIosNote`
- [ ] Icônes du design system (maison, cadenas, image, partage)
- [ ] Tests widget Android/iOS (override plateforme)
- [ ] Golden clair/sombre
- [ ] Analytics `wallpaper_action_selected` (action, plateforme)

## ✔️ Critères d'acceptation

- [ ] Étant donné iOS quand le sheet s'ouvre alors les options d'application sont inactives et la note est visible
- [ ] Étant donné Android alors « Écran d'accueil » et « Écran verrouillé » sont actionnables
- [ ] Étant donné une action en cours alors le sheet ne se ferme pas par glissement
- [ ] Étant donné un échec alors un snackbar Réessayer apparaît

## 🧪 Tests à écrire

- [ ] use_wallpaper_sheet_test : variante iOS
- [ ] use_wallpaper_sheet_test : variante Android
- [ ] actions_cubit_test : Working -> Done
- [ ] golden : sheet_light / sheet_dark

## ♿ Accessibilité et i18n

- Chaque ligne = `Semantics(button:true)` avec sous-titre lu ; ordre de focus haut -> bas

## 🔗 Dépendances

À réaliser après : `MOB-M-12` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.9, §6.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
