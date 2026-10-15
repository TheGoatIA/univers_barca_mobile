> **MOB-G-07** · Écran · Priorité **P0** · Taille **L** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Bottom sheet de recherche listant les joueurs de l'histoire du club, filtrable par catégorie.

## ✅ Objectif

Implémenter la feuille G-03 avec recherche débouncée, chips et liste paginée.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `G-03` — Sélecteur de joueur
_Module : Comparateur GOAT_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-03_selecteur-de-joueur__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-03_selecteur-de-joueur__phone_light.webp?raw=true' width='230' alt='G-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-03_selecteur-de-joueur__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-03_selecteur-de-joueur__phone_dark.webp?raw=true' width='230' alt='G-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-03_selecteur-de-joueur__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-03_selecteur-de-joueur__tablet_light.webp?raw=true' width='330' alt='G-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-03_selecteur-de-joueur__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-03_selecteur-de-joueur__tablet_dark.webp?raw=true' width='330' alt='G-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Comparateur GOAT » · « Compare deux joueurs de l’histoire du club et donne ton avis. Aucun verdict n’est imposé : seule la communauté décide. » · « Messi » · « Attaquant » · « Joueur A » · « Choisir le joueur B » · « Duels populaires » · « vs » · « Messi · Xavi » · « 12 480 votes » · « Ronaldinho · Iniesta » · « 8 210 votes » · « Cruyff · Puyol » · « 3 960 votes » · « Comparer » · « Xa » · « Tous » · « Légendes » · « Effectif actuel » · « Xavi Hernández » · « Milieu · Espagne » · « Andrés Iniesta » · « Carles Puyol » · « Défenseur · Espagne »

**Composants repérés** : `btn`, `card`, `chip`, `search`, `sheet`

</details>

**Issues liées sur ce même écran :** [MOB-G-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-03%5D%22) · [MOB-G-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-04%5D%22) · [MOB-G-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-08%5D%22) · [MOB-G-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-16%5D%22) · [MOB-G-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-17%5D%22)

## 📐 Règles de gestion

- Champ de recherche (debounce 300 ms, ≥ 2 caractères) ; chips exclusives : Tous · Légendes · Effectif actuel.
- Lignes : avatar, nom 'Xavi Hernández', 'Milieu · Espagne' ; tri alphabétique par nom de famille ; le joueur déjà choisi dans l'autre slot est grisé et non sélectionnable.
- Pagination 20 par page ; chargement des pages suivantes au scroll.
- Vide : 'Aucun joueur trouvé' ; erreur : 'Réessayer' ; hors-ligne : joueurs en cache uniquement + bandeau 'Hors-ligne'.
- Sélection d'un joueur → fermeture de la feuille avec GoatPlayerSelected(slot, player).
- Fermeture par glissement sans sélection : aucun changement.

## 🛠️ Tâches

- [ ] Créer widgets/player_picker_sheet.dart (showModalBottomSheet, DraggableScrollableSheet 0.9).
- [ ] Créer PlayerPickerCubit (query, category, items, page, états) avec debounce via bloc_concurrency/rxdart.
- [ ] Créer widgets/player_picker_tile.dart (état désactivé).
- [ ] Réutiliser GetPlayers / SearchGoatPlayers ; indexer le cache des joueurs vus pour le hors-ligne.
- [ ] Gérer le clavier et l'autofocus.
- [ ] ARB goatPickerSearchHint, goatFilterAll, goatFilterLegends, goatFilterCurrent, goatPickerEmpty.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné 'xav' saisi alors après 300 ms seuls les joueurs correspondants sont listés.
- [ ] Étant donné la chip Légendes alors uniquement category=legend.
- [ ] Étant donné Messi déjà en A alors sa ligne est désactivée dans le sélecteur du slot B.
- [ ] Étant donné aucun résultat alors 'Aucun joueur trouvé'.
- [ ] Étant donné la sélection de Xavi alors la feuille se ferme et le slot est rempli.

## 🧪 Tests à écrire

- [ ] Test widget PickerSheet_recherche_debounce
- [ ] Test widget chips_categories
- [ ] Test widget joueur_deja_pris_desactive
- [ ] Test widget etat_vide
- [ ] Test cubit pagination
- [ ] Golden test G-03

## ♿ Accessibilité et i18n

- ARB listées ; liste annoncée 'N résultats'.
- Chips Semantics(selected).
- Lignes ≥ 48 dp.

## 🔗 Dépendances

À réaliser après : `MOB-G-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.6
- CDC Flutter §7.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
