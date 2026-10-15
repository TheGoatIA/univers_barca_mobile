> **MOB-ZB-14** · Écran · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

La planche présente des lignes de liste (avatar + titre + sous-titre + chevron), une liste de réglages (« Langue — Français », « Notifications » avec interrupteur) et des grilles.

## ✅ Objectif

`BarcaListTile`, `BarcaSettingsTile`, `BarcaGrid`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-05` — Cartes, listes et grilles
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__desktop_light.webp?raw=true' width='330' alt='ZB-05 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__desktop_dark.webp?raw=true' width='330' alt='ZB-05 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__mobile_light.webp?raw=true' width='230' alt='ZB-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__mobile_dark.webp?raw=true' width='230' alt='ZB-05 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 05 » · « Cartes et listes » · « Cartes de 16 px de rayon, empilées et indépendantes ; ombres douces en clair, bordures subtiles en sombre. » · « Variantes de cartes » · « Standard » · « Titre de carte » · « Contenu de la carte avec texte secondaire. » · « À plat » · « Carte à plat » · « Sans ombre, fond surface. » · « Sélectionnée » · « Choix actif » · « Bordure primaire 2 px. » · « Héros (garnet → navy) » · « Liga · J11 » · « Barça – Real Madrid » · « Navy » · « Quiz adaptatif » · « Niveau 2 · Culé » · « Or (mise en avant) » · « Badge débloqué ! » · « Série de 10 jours » · « Cartes sémantiques » · « Avertissement » · « Série en danger » · « Erreur » · « Échec de l’envoi » · « Succès » · « Composition validée » · « Information »

**Composants repérés** : `avatar`, `card`, `toggle`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-14](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-14%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [MOB-ZA-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-03%5D%22) · [MOB-ZB-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-13%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22)

## 📐 Règles de gestion

- Ligne : hauteur min 56, padding 16/12, séparateur 1 px outline inset 16 ; zone tactile complète.
- Réglage : libellé + valeur secondaire à droite + chevron, ou interrupteur ; groupée dans carte rayon 16.
- Grille : 2 colonnes téléphone, 3 colonnes tablette (≥ 600 px), 4 au-delà ; gouttière 12 ; ratio configurable.
- Swipe optionnel (ZE-03) : actions de ligne avec annulation.

## 🛠️ Tâches

- [ ] Créer `barca_list_tile.dart`, `barca_settings_tile.dart`, `barca_settings_group.dart`.
- [ ] Créer `barca_grid.dart` (`SliverGridDelegate` par largeur).
- [ ] Gestion `leading/trailing`, `dense`.
- [ ] Ajouter l'état `selected`/pressé 100 ms sur les lignes.
- [ ] Tests et goldens à 2 largeurs.

## ✔️ Critères d'acceptation

- [ ] Étant donné 390 px de large, alors la grille a 2 colonnes ; à 834 px, 3.
- [ ] Étant donné une ligne avec interrupteur, quand on tape la ligne entière, alors l'interrupteur bascule.
- [ ] Étant donné une valeur longue, alors elle est tronquée avec ellipsis.

## 🧪 Tests à écrire

- [ ] Widget : colonnes selon largeur.
- [ ] Widget : tap ligne = bascule.
- [ ] Golden : liste réglages.

## ♿ Accessibilité et i18n

- Ligne : label « Langue, Français » ; interrupteur annonce son état.

## 🔗 Dépendances

À réaliser après : `MOB-ZB-13` · `MOB-ZB-07` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
