> **MOB-ZB-11** · Écran · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

La planche Badges : tags Neutre, Primaire, Navy, Succès, Erreur, Alerte, « EN DIRECT » ; tags grands (« Liga · J11 », « Résolu », « Ferme dans 1 j ») ; compteurs (« 99+ ») et points. Les statuts d'administration (Brouillon, Publiée, Banni…) sont réservés à l'admin.

## ✅ Objectif

`BarcaTag`, `BarcaCountBadge`, `BarcaDot`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-04` — Badges, tags, avatars et écussons
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__desktop_light.webp?raw=true' width='330' alt='ZB-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__desktop_dark.webp?raw=true' width='330' alt='ZB-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__mobile_light.webp?raw=true' width='230' alt='ZB-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-04_badges-tags-avatars-et-ecussons__mobile_dark.webp?raw=true' width='230' alt='ZB-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 04 » · « Badges et visuels » · « Tags de statut, compteurs, avatars, portraits illustrés originaux et écussons génériques d’adversaires (initiales — jamais de logos officiels). » · « Tags et compteurs » · « Tags » · « Neutre » · « Primaire » · « Navy » · « Succès » · « Erreur » · « Alerte » · « Or » · « EN DIRECT » · « Tags grands » · « Liga · J11 » · « Résolu » · « Ferme dans 1 j » · « Compteurs et points » · « 99+ » · « Statuts admin » · « Badges de statut cohérents avec l’application (brouillon, publié, en attente, banni…). » · « Brouillon » · « En attente de traduction » · « Prête à publier » · « Publiée » · « Archivée » · « Suspendu 7 j » · « Banni » · « Urgent » · « À vérifier »

**Composants repérés** : `avatar`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-12](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-12%5D%22) · [ADM-ADS-13](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-13%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [MOB-ZB-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-12%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22)

## 📐 Règles de gestion

- Tag : rayon 6, hauteur 22 (petit) ou 28 (grand), texte 11/12 px w700 MAJUSCULES pour « EN DIRECT » ; fond = teinte à 12 % + texte à 100 % ; icône optionnelle (obligatoire pour sémantiques).
- « EN DIRECT » : fond error, texte blanc, point blanc pulsant (1 000 ms, opacité 1 → 0,4).
- Compteur : pastille min 18 px, rayon pilule, fond error, texte blanc 11 px ; au-delà de 99 affiche « 99+ » ; 0 = masqué.
- Point : 8 px, pastille rouge d'activité nouvelle (ex. onglet Communauté).

## 🛠️ Tâches

- [ ] Créer `barca_tag.dart` (`BarcaTagTone { neutral, primary, navy, success, error, warning, live }`, `BarcaTagSize`).
- [ ] Créer `barca_count_badge.dart` avec règle de plafond 99+.
- [ ] Créer `barca_dot.dart` et `BarcaBadgeAnchor` (positionne un badge sur un enfant).
- [ ] Animation de pulsation de « EN DIRECT » désactivée avec animations réduites.
- [ ] Tests, widgetbook, goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné un compteur à 120, alors « 99+ » est affiché.
- [ ] Étant donné un compteur à 0, alors rien n'est rendu.
- [ ] Étant donné animations réduites, alors le point « EN DIRECT » reste fixe.
- [ ] Étant donné le tag Succès, alors une icône accompagne la couleur.

## 🧪 Tests à écrire

- [ ] Widget : plafond 99+.
- [ ] Widget : tons.
- [ ] Widget : pulsation désactivée.
- [ ] Golden : tags/compteurs clair/sombre.

## ♿ Accessibilité et i18n

- Compteur : « 12 notifications non lues » (ARB pluriel) ; tag « En direct » lu comme tel.

## 📚 Références

- CDC Flutter §9.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
