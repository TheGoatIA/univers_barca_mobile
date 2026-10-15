> **MOB-M-14** · Fonctionnel · Priorité **P1** · Taille **M** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Sur Android, le CDC Flutter §7.9 prévoit l'application directe via un package dédié (ex. `wallpaper_manager_flutter`). Il faut télécharger l'image puis la définir comme fond.

## ✅ Objectif

Définir le wallpaper en écran d'accueil, verrouillé ou les deux, sans permission sensible supplémentaire.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `M-06` — Enregistrer ou appliquer
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-06_enregistrer-ou-appliquer__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-06_enregistrer-ou-appliquer__phone_light.webp?raw=true' width='230' alt='M-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-06_enregistrer-ou-appliquer__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-06_enregistrer-ou-appliquer__phone_dark.webp?raw=true' width='230' alt='M-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-06_enregistrer-ou-appliquer__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-06_enregistrer-ou-appliquer__tablet_light.webp?raw=true' width='330' alt='M-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-06_enregistrer-ou-appliquer__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-06_enregistrer-ou-appliquer__tablet_dark.webp?raw=true' width='330' alt='M-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ton wallpaper » · « Yamal » · « Utiliser ce wallpaper » · « Écran d’accueil » · « Android uniquement » · « Écran verrouillé » · « Enregistrer dans la pellicule » · « iOS et Android » · « Partager » · « WhatsApp, Instagram, X… » · « Sur iPhone, l'application directe n'est pas possible : le wallpaper est enregistré dans la pellicule. »

**Composants repérés** : `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-WALL-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-20%5D%22) · [MOB-M-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-13%5D%22) · [MOB-M-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-15%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

## 📐 Règles de gestion

- Téléchargement de `imageUrl` dans le cache applicatif (`path_provider` getTemporaryDirectory) avec limite 15 Mo et vérification du Content-Type `image/png|jpeg|webp`
- Permission manifeste `SET_WALLPAPER` (normale, accordée à l'installation)
- Option « Les deux » = deux appels successifs
- Nettoyage du fichier temporaire après application

## 🔄 Comportement et états

- Succès : snackbar « Fond d'écran appliqué »
- Échec (OEM restrictif) : message + proposition « Enregistrer à la place »
- Hors ligne sans cache : erreur claire

## 🛠️ Tâches

- [ ] Ajouter la dépendance `wallpaper_manager_flutter` (version figée) dans `pubspec.yaml`
- [ ] Déclarer `<uses-permission android:name="android.permission.SET_WALLPAPER"/>`
- [ ] Créer `core/services/wallpaper_setter.dart` (interface) + `android_wallpaper_setter.dart`
- [ ] Créer `DownloadWallpaperUseCase` (flux avec progression)
- [ ] Implémenter `ApplyWallpaperUseCase(target: home|lock|both)`
- [ ] Vérifier le rendu sur Pixel 8 et un Samsung (recadrage)
- [ ] Tests avec faux `WallpaperSetter`
- [ ] Documenter la limitation OEM dans `docs/`

## ✔️ Critères d'acceptation

- [ ] Étant donné Android et « Écran verrouillé » quand l'utilisateur tape alors le fond de verrouillage est défini et un snackbar de succès s'affiche
- [ ] Étant donné un fichier > 15 Mo alors le téléchargement est refusé avec erreur
- [ ] Étant donné un échec du plugin alors la proposition d'enregistrer apparaît
- [ ] Étant donné un succès alors le fichier temporaire est supprimé

## 🧪 Tests à écrire

- [ ] apply_wallpaper_usecase_test : home/lock/both
- [ ] download_use_case_test : limite 15 Mo
- [ ] download_use_case_test : content-type invalide
- [ ] integration Android : application sur émulateur API 34

## 🔗 Dépendances

À réaliser après : `MOB-M-13` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.9

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
