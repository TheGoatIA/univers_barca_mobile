> **MOB-M-20** · Écran · Priorité **P0** · Taille **M** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

M-10 montre l'image en grand (« Visca Barça »), un bloc « Demande : Lewandowski · Néon · Trophée », « Créé le 12 oct. 2026 », le badge « Modération OK » et deux boutons : « Appliquer » et « Partager ».

## ✅ Objectif

Consulter un wallpaper existant et réutiliser ses actions.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `M-10` — Détail d’un wallpaper
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-10_detail-d-un-wallpaper__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-10_detail-d-un-wallpaper__phone_light.webp?raw=true' width='230' alt='M-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-10_detail-d-un-wallpaper__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-10_detail-d-un-wallpaper__phone_dark.webp?raw=true' width='230' alt='M-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-10_detail-d-un-wallpaper__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-10_detail-d-un-wallpaper__tablet_light.webp?raw=true' width='330' alt='M-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-10_detail-d-un-wallpaper__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-10_detail-d-un-wallpaper__tablet_dark.webp?raw=true' width='330' alt='M-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Wallpaper » · « Visca » · « Barça » · « Demande » · « Lewandowski · Néon · Trophée » · « Créé le 12 oct. 2026 » · « Modération OK » · « Appliquer » · « Partager »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-M-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-01%5D%22) · [MOB-M-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-03%5D%22) · [MOB-M-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-18%5D%22) · [MOB-M-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-26%5D%22) · [MOB-M-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-27%5D%22) · [MOB-M-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-28%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

## 📐 Règles de gestion

- Date formatée par `intl` selon la locale (« 12 oct. 2026 » en fr)
- Badge de modération : `ok` -> « Modération OK » (vert) ; `rejected` n'apparaît jamais dans la galerie
- « Appliquer » ouvre le sheet M-06 ; « Partager » ouvre M-11
- Hero depuis la tuile de la galerie

## 🔄 Comportement et états

- Chargement : image miniature puis HD
- Wallpaper introuvable (404) : message + retour galerie
- Cœur favori dans l'app bar

## 🛠️ Tâches

- [ ] Créer `wallpaper_detail_page.dart` + `WallpaperDetailCubit`
- [ ] Charger via cache puis `GET /wallpapers/:id`
- [ ] Créer `widgets/prompt_info_card.dart` et `moderation_badge.dart`
- [ ] Ajouter l'`AppBar` transparente avec retour et cœur
- [ ] Route `/wallpapers/:id`
- [ ] Clés ARB `wallpaperRequestLabel`, `wallpaperCreatedOn`, `moderationOk`
- [ ] Tests widget + golden
- [ ] Gestion 404

## ✔️ Critères d'acceptation

- [ ] Étant donné un wallpaper quand le détail s'ouvre alors « Demande » affiche « Lewandowski · Néon · Trophée »
- [ ] Étant donné la locale en alors la date est « Oct 12, 2026 »
- [ ] Étant donné un 404 alors un message et un retour à la galerie sont proposés
- [ ] Étant donné le tap sur Partager alors le sheet M-11 s'ouvre

## 🧪 Tests à écrire

- [ ] detail_page_test : textes
- [ ] detail_page_test : 404
- [ ] detail_cubit_test : chargement cache puis réseau
- [ ] golden : detail_light / detail_dark

## ♿ Accessibilité et i18n

- Badge de modération avec texte, pas seulement la couleur

## 🔗 Dépendances

À réaliser après : `MOB-M-17` · `MOB-M-18` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.9
- CDC Global §11.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
