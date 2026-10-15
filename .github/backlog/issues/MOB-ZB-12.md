> **MOB-ZB-12** · Écran · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

La planche présente avatars (photo, initiales, statut), portraits illustrés originaux de joueurs et écussons génériques d'adversaires : initiales dans un écusson stylisé, jamais de logo officiel.

## ✅ Objectif

`BarcaAvatar`, `BarcaPlayerPortrait`, `BarcaCrest`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-04` — Badges, tags, avatars et écussons
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__desktop_light.webp?raw=true' width='330' alt='ZB-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__desktop_dark.webp?raw=true' width='330' alt='ZB-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__mobile_light.webp?raw=true' width='230' alt='ZB-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__mobile_dark.webp?raw=true' width='230' alt='ZB-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 04 » · « Badges et visuels » · « Tags de statut, compteurs, avatars, portraits illustrés originaux et écussons génériques d’adversaires (initiales — jamais de logos officiels). » · « Tags et compteurs » · « Tags » · « Neutre » · « Primaire » · « Navy » · « Succès » · « Erreur » · « Alerte » · « Or » · « EN DIRECT » · « Tags grands » · « Liga · J11 » · « Résolu » · « Ferme dans 1 j » · « Compteurs et points » · « 99+ » · « Statuts admin » · « Badges de statut cohérents avec l’application (brouillon, publié, en attente, banni…). » · « Brouillon » · « En attente de traduction » · « Prête à publier » · « Publiée » · « Archivée » · « Suspendu 7 j » · « Banni » · « Urgent » · « À vérifier »

**Composants repérés** : `avatar`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-12](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-12%5D%22) · [ADM-ADS-13](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-13%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [MOB-ZB-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-11%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22)

## 📐 Règles de gestion

- Avatar : tailles 24/32/40/56/80, rond ; image via `cached_network_image` (cf. FND `cache-images`), repli initiales sur fond couleur déterministe (hash du pseudo) puis icône user.
- Pastille de statut (en ligne) 10 px ; anneau or pour utilisateurs premium/GOAT si prévu par le CDC.
- Écusson générique : forme blason, 2 à 3 lettres (FCB, RMA), couleurs neutres ; aucun logo réel.
- Portrait illustré : cadre rond avec bordure 2 px selon statut (capitaine « C »).

## 🛠️ Tâches

- [ ] Créer `barca_avatar.dart` avec `BarcaAvatarSize`.
- [ ] Créer `initials.dart` (extraction 1-2 lettres, gère accents/émoji) et `color_from_seed.dart`.
- [ ] Créer `barca_crest.dart` (CustomPainter blason) avec `abbreviation`.
- [ ] Créer `barca_player_portrait.dart` avec placeholder et erreur.
- [ ] Créer `BarcaAvatarGroup` (empilement, +N).
- [ ] Tests et goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné pas d'URL, quand l'avatar est rendu, alors les initiales du pseudo s'affichent.
- [ ] Étant donné une image en échec, alors le repli initiales s'affiche sans erreur.
- [ ] Étant donné l'équipe « Real Madrid », alors l'écusson affiche « RMA » et aucun logo officiel.

## 🧪 Tests à écrire

- [ ] Unitaire : initiales (« Boris Culé » → « BC »).
- [ ] Unitaire : couleur déterministe.
- [ ] Widget : repli image.
- [ ] Golden : tailles et écussons.

## ♿ Accessibilité et i18n

- Semantics label « Avatar de {pseudo} » ; écusson « Écusson {équipe} ».

## 📚 Références

- CDC Global §3.4
- CDC Flutter §9.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
