> **MOB-G-06** · Écran · Priorité **P0** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Après sélection du joueur A, sa carte affiche nom et poste, le slot B reste à choisir.

## ✅ Objectif

Implémenter l'état intermédiaire de G-02 avec animation d'entrée du joueur choisi.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `G-02` — Sélection — un joueur choisi
_Module : Comparateur GOAT_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-02_selection-un-joueur-choisi__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-02_selection-un-joueur-choisi__phone_light.webp?raw=true' width='230' alt='G-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-02_selection-un-joueur-choisi__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-02_selection-un-joueur-choisi__phone_dark.webp?raw=true' width='230' alt='G-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-02_selection-un-joueur-choisi__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-02_selection-un-joueur-choisi__tablet_light.webp?raw=true' width='330' alt='G-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-02_selection-un-joueur-choisi__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-02_selection-un-joueur-choisi__tablet_dark.webp?raw=true' width='330' alt='G-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Comparateur GOAT » · « Compare deux joueurs de l’histoire du club et donne ton avis. Aucun verdict n’est imposé : seule la communauté décide. » · « Messi » · « Attaquant » · « Joueur A » · « Choisir le joueur B » · « Duels populaires » · « vs » · « Messi · Xavi » · « 12 480 votes » · « Ronaldinho · Iniesta » · « 8 210 votes » · « Cruyff · Puyol » · « 3 960 votes » · « Comparer »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-GOAT-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-04%5D%22) · [API-GOAT-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-05%5D%22) · [API-GOAT-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-19%5D%22) · [API-GOAT-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-24%5D%22) · [MOB-G-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-04%5D%22) · [MOB-G-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-08%5D%22) · [MOB-G-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-17%5D%22)

## 📐 Règles de gestion

- Carte A remplie : avatar, 'Messi', 'Attaquant', étiquette 'Joueur A' ; slot B : 'Choisir le joueur B'.
- Tap sur la carte remplie → rouvre le sélecteur pour changer ; icône x pour vider le slot.
- Animation : le joueur choisi apparaît avec fondu + léger scale (0,95→1, 250 ms) ; coupée si réduction d'animations.
- 'Comparer' reste désactivé tant que B est vide.
- Les duels populaires restent affichés.

## 🛠️ Tâches

- [ ] Étendre player_slot_card.dart avec l'état rempli (avatar, nom, poste, étiquette).
- [ ] Ajouter AnimatedSwitcher + ScaleTransition.
- [ ] Implémenter GoatSlotCleared dans l'UI.
- [ ] Ajouter ARB goatPlayerA/B, goatClearSlot.
- [ ] Golden test et test widget d'animation.

## ✔️ Critères d'acceptation

- [ ] Étant donné A=Messi alors 'Messi', 'Attaquant', 'Joueur A' sont visibles.
- [ ] Étant donné le tap sur x alors le slot A redevient vide.
- [ ] Étant donné B vide alors Comparer reste désactivé.
- [ ] Étant donné disableAnimations alors pas d'animation.

## 🧪 Tests à écrire

- [ ] Test widget slot_rempli_textes
- [ ] Test widget slot_clear
- [ ] Test widget comparer_inactif_si_B_vide
- [ ] Golden test G-02

## ♿ Accessibilité et i18n

- 'Joueur A : Messi, attaquant. Toucher pour changer'.
- Bouton vider avec label 'Retirer Messi'.

## 🔗 Dépendances

À réaliser après : `MOB-G-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
