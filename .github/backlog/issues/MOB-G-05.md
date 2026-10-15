> **MOB-G-05** · Écran · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Écran d'accueil du comparateur : deux emplacements à remplir, une liste de duels populaires et le bouton Comparer.

## ✅ Objectif

Implémenter G-01 fidèlement, texte de neutralité inclus.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `G-01` — Sélection — aucun joueur
_Module : Comparateur GOAT_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-01_selection-aucun-joueur__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-01_selection-aucun-joueur__phone_light.webp?raw=true' width='230' alt='G-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-01_selection-aucun-joueur__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-01_selection-aucun-joueur__phone_dark.webp?raw=true' width='230' alt='G-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-01_selection-aucun-joueur__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-01_selection-aucun-joueur__tablet_light.webp?raw=true' width='330' alt='G-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-01_selection-aucun-joueur__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-01_selection-aucun-joueur__tablet_dark.webp?raw=true' width='330' alt='G-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Comparateur GOAT » · « Compare deux joueurs de l’histoire du club et donne ton avis. Aucun verdict n’est imposé : seule la communauté décide. » · « Choisir le joueur A » · « Choisir le joueur B » · « Duels populaires » · « vs » · « Messi · Xavi » · « 12 480 votes » · « Ronaldinho · Iniesta » · « 8 210 votes » · « Cruyff · Puyol » · « 3 960 votes » · « Comparer »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-GOAT-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-04%5D%22) · [API-GOAT-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-05%5D%22) · [API-GOAT-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-16%5D%22) · [API-GOAT-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-18%5D%22) · [API-GOAT-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-19%5D%22) · [API-GOAT-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-22%5D%22) · [API-GOAT-25](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-25%5D%22) · [MOB-G-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-02%5D%22) · [MOB-G-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-03%5D%22) · [MOB-G-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-04%5D%22) · [MOB-G-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-08%5D%22) · [MOB-G-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-15%5D%22) · [MOB-G-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-16%5D%22) · [MOB-G-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-17%5D%22)

## 📐 Règles de gestion

- Titre 'Comparateur GOAT' ; texte d'intro : 'Compare deux joueurs de l'histoire du club et donne ton avis. Aucun verdict n'est imposé : seule la communauté décide.'
- Deux cartes en pointillé 'Choisir le joueur A' et 'Choisir le joueur B' (A grenat, B bleu) séparées par un 'VS'.
- Section 'Duels populaires' : 3 cartes — 'Messi · Xavi · 12 480 votes', 'Ronaldinho · Iniesta · 8 210 votes', 'Cruyff · Puyol · 3 960 votes' ; nombres formatés avec espace fine insécable (fr).
- Bouton 'Comparer' désactivé tant que A et B ne sont pas choisis.
- Chargement des duels : squelettes de 3 cartes ; échec : section masquée + lien 'Réessayer', le reste reste utilisable.
- Hors-ligne : les slots sont utilisables si la liste de joueurs est en cache, mais 'Comparer' affiche 'Connexion requise'.

## 🛠️ Tâches

- [ ] Créer presentation/pages/goat_comparator_page.dart (route /goat).
- [ ] Créer widgets/player_slot_card.dart (états vide/rempli), vs_badge.dart, popular_duels_section.dart, popular_duel_tile.dart.
- [ ] Appliquer tokens couleur (A = primary grenat, B = bleu) sans hexadécimal.
- [ ] Brancher GoatSelection et l'état de bouton.
- [ ] Ajouter la route et RouteConstants.goat ; accès depuis l'onglet Historique (action de l'en-tête, à valider avec la maquette) et la fiche joueur.
- [ ] ARB : goatTitle, goatIntro, goatChoosePlayerA/B, goatPopularDuels, goatVotesCount='{count, plural, one{# vote} other{# votes}}', goatCompare.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné aucun joueur alors les deux emplacements et 3 duels sont affichés et Comparer est désactivé.
- [ ] Étant donné le tap sur 'Messi · Xavi' alors la comparaison démarre.
- [ ] Étant donné l'échec des duels alors la section est masquée avec 'Réessayer'.
- [ ] Étant donné 12480 votes alors '12 480 votes' est affiché en fr.

## 🧪 Tests à écrire

- [ ] Test widget GoatPage_selection_vide
- [ ] Test widget bouton_comparer_desactive
- [ ] Test widget duel_populaire_tap
- [ ] Test widget duels_echec_masque_section
- [ ] Golden test G-01 clair/sombre

## ♿ Accessibilité et i18n

- Les slots sont des boutons : 'Choisir le joueur A, vide'.
- Les duels : 'Duel Messi contre Xavi, 12 480 votes'.
- Texte d'intro lisible, contraste AA.

## 🔗 Dépendances

À réaliser après : `MOB-G-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.6
- CDC Flutter §7.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
