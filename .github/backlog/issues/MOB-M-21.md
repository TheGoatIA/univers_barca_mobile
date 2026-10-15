> **MOB-M-21** · Écran · Priorité **P1** · Taille **M** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Le sheet M-11 « Partager » propose 5 destinations : WhatsApp, Instagram, Facebook, Lien, Image. Le CDC Flutter cite `share_plus` pour le partage natif (résultats, wallpapers).

## ✅ Objectif

Partager l'image ou un lien vers les principales applications, avec repli sur le partage système.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `M-11` — Partage du wallpaper
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-11_partage-du-wallpaper__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-11_partage-du-wallpaper__phone_light.webp?raw=true' width='230' alt='M-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-11_partage-du-wallpaper__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-11_partage-du-wallpaper__phone_dark.webp?raw=true' width='230' alt='M-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-11_partage-du-wallpaper__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-11_partage-du-wallpaper__tablet_light.webp?raw=true' width='330' alt='M-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-11_partage-du-wallpaper__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-11_partage-du-wallpaper__tablet_dark.webp?raw=true' width='330' alt='M-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Wallpaper » · « Visca » · « Barça » · « Partager » · « WhatsApp » · « Instagram » · « Facebook » · « Lien » · « Image »

**Composants repérés** : `sheet`

</details>

**Issues liées sur ce même écran :** [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

## 📐 Règles de gestion

- WhatsApp/Instagram/Facebook : partage du fichier image via `share_plus` (`XFile`) ciblant l'application si installée, sinon feuille système
- « Lien » copie l'URL signée de l'image (`imageUrl`, durée de vie fixée par l'API) dans le presse-papiers et affiche « Lien copié »
- « Image » ouvre la feuille de partage système avec le fichier
- Le texte d'accompagnement est neutre (« Mon wallpaper Univers Barça ») et ne contient aucune donnée personnelle

## 🔄 Comportement et états

- Application cible absente : repli sur partage système
- Annulation utilisateur : aucun message d'erreur
- Hors ligne sans cache : « Connexion requise pour partager »

## 🛠️ Tâches

- [ ] Créer `widgets/share_wallpaper_sheet.dart` (5 tuiles)
- [ ] Créer `ShareWallpaperUseCase(target)` réutilisant `DownloadWallpaperUseCase`
- [ ] Détecter les applications installées via `url_launcher.canLaunchUrl` (schémas déclarés dans `LSApplicationQueriesSchemes` et `<queries>` Android)
- [ ] Implémenter « Lien » avec `Clipboard.setData`
- [ ] Gérer `ShareResultStatus.dismissed`
- [ ] Clés ARB `shareWhatsApp`, `shareInstagram`, `shareFacebook`, `shareLink`, `shareImage`, `linkCopied`
- [ ] Tests unitaires avec faux `SharePlus`
- [ ] Golden clair/sombre

## ✔️ Critères d'acceptation

- [ ] Étant donné WhatsApp installé quand l'utilisateur tape WhatsApp alors le fichier est transmis à WhatsApp
- [ ] Étant donné « Lien » alors l'URL est copiée et « Lien copié » s'affiche
- [ ] Étant donné une annulation alors aucun message d'erreur n'apparaît
- [ ] Étant donné Instagram absent alors la feuille système s'ouvre

## 🧪 Tests à écrire

- [ ] share_usecase_test : cible installée
- [ ] share_usecase_test : repli système
- [ ] share_sheet_test : 5 tuiles
- [ ] golden : share_light / share_dark

## ♿ Accessibilité et i18n

- Chaque tuile avec label et rôle bouton ; confirmation « Lien copié » en liveRegion

## 🔗 Dépendances

À réaliser après : `MOB-M-12` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.9 (share_plus)
- CDC Global §2.10

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
