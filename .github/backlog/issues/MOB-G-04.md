> **MOB-G-04** · Fonctionnel · Priorité **P0** · Taille **L** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Le CDC nomme GoatComparatorBloc. Il pilote la sélection de deux joueurs, le chargement du duel et le vote, avec états distincts pour chaque écran de G-01 à G-07.

## ✅ Objectif

Implémenter événements, états et transitions du flux complet.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `G-01` — Sélection — aucun joueur
_Module : Comparateur GOAT_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-01_selection-aucun-joueur__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-01_selection-aucun-joueur__phone_light.webp?raw=true' width='230' alt='G-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-01_selection-aucun-joueur__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-01_selection-aucun-joueur__phone_dark.webp?raw=true' width='230' alt='G-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-01_selection-aucun-joueur__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-01_selection-aucun-joueur__tablet_light.webp?raw=true' width='330' alt='G-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-01_selection-aucun-joueur__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-01_selection-aucun-joueur__tablet_dark.webp?raw=true' width='330' alt='G-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Comparateur GOAT » · « Compare deux joueurs de l’histoire du club et donne ton avis. Aucun verdict n’est imposé : seule la communauté décide. » · « Choisir le joueur A » · « Choisir le joueur B » · « Duels populaires » · « vs » · « Messi · Xavi » · « 12 480 votes » · « Ronaldinho · Iniesta » · « 8 210 votes » · « Cruyff · Puyol » · « 3 960 votes » · « Comparer »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-GOAT-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-04%5D%22) · [API-GOAT-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-05%5D%22) · [API-GOAT-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-16%5D%22) · [API-GOAT-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-18%5D%22) · [API-GOAT-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-19%5D%22) · [API-GOAT-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-22%5D%22) · [API-GOAT-25](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-25%5D%22) · [MOB-G-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-02%5D%22) · [MOB-G-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-03%5D%22) · [MOB-G-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-05%5D%22) · [MOB-G-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-08%5D%22) · [MOB-G-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-15%5D%22) · [MOB-G-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-16%5D%22) · [MOB-G-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-17%5D%22)

#### `G-02` — Sélection — un joueur choisi
_Module : Comparateur GOAT_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-02_selection-un-joueur-choisi__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-02_selection-un-joueur-choisi__phone_light.webp?raw=true' width='230' alt='G-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-02_selection-un-joueur-choisi__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-02_selection-un-joueur-choisi__phone_dark.webp?raw=true' width='230' alt='G-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-02_selection-un-joueur-choisi__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-02_selection-un-joueur-choisi__tablet_light.webp?raw=true' width='330' alt='G-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-02_selection-un-joueur-choisi__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-02_selection-un-joueur-choisi__tablet_dark.webp?raw=true' width='330' alt='G-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Comparateur GOAT » · « Compare deux joueurs de l’histoire du club et donne ton avis. Aucun verdict n’est imposé : seule la communauté décide. » · « Messi » · « Attaquant » · « Joueur A » · « Choisir le joueur B » · « Duels populaires » · « vs » · « Messi · Xavi » · « 12 480 votes » · « Ronaldinho · Iniesta » · « 8 210 votes » · « Cruyff · Puyol » · « 3 960 votes » · « Comparer »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-GOAT-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-04%5D%22) · [API-GOAT-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-05%5D%22) · [API-GOAT-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-19%5D%22) · [API-GOAT-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-24%5D%22) · [MOB-G-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-06%5D%22) · [MOB-G-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-08%5D%22) · [MOB-G-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-17%5D%22)

#### `G-03` — Sélecteur de joueur
_Module : Comparateur GOAT_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-03_selecteur-de-joueur__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-03_selecteur-de-joueur__phone_light.webp?raw=true' width='230' alt='G-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-03_selecteur-de-joueur__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-03_selecteur-de-joueur__phone_dark.webp?raw=true' width='230' alt='G-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-03_selecteur-de-joueur__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-03_selecteur-de-joueur__tablet_light.webp?raw=true' width='330' alt='G-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-03_selecteur-de-joueur__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-03_selecteur-de-joueur__tablet_dark.webp?raw=true' width='330' alt='G-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Comparateur GOAT » · « Compare deux joueurs de l’histoire du club et donne ton avis. Aucun verdict n’est imposé : seule la communauté décide. » · « Messi » · « Attaquant » · « Joueur A » · « Choisir le joueur B » · « Duels populaires » · « vs » · « Messi · Xavi » · « 12 480 votes » · « Ronaldinho · Iniesta » · « 8 210 votes » · « Cruyff · Puyol » · « 3 960 votes » · « Comparer » · « Xa » · « Tous » · « Légendes » · « Effectif actuel » · « Xavi Hernández » · « Milieu · Espagne » · « Andrés Iniesta » · « Carles Puyol » · « Défenseur · Espagne »

**Composants repérés** : `btn`, `card`, `chip`, `search`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-GOAT-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-04%5D%22) · [API-GOAT-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-18%5D%22) · [API-GOAT-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-19%5D%22) · [API-GOAT-25](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-25%5D%22) · [MOB-G-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-03%5D%22) · [MOB-G-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-07%5D%22) · [MOB-G-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-08%5D%22) · [MOB-G-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-16%5D%22) · [MOB-G-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-17%5D%22)

#### `G-04` — Résultat — statistiques croisées
_Module : Comparateur GOAT_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-04_resultat-statistiques-croisees__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-04_resultat-statistiques-croisees__phone_light.webp?raw=true' width='230' alt='G-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-04_resultat-statistiques-croisees__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-04_resultat-statistiques-croisees__phone_dark.webp?raw=true' width='230' alt='G-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-04_resultat-statistiques-croisees__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-04_resultat-statistiques-croisees__tablet_light.webp?raw=true' width='330' alt='G-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-04_resultat-statistiques-croisees__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-04_resultat-statistiques-croisees__tablet_dark.webp?raw=true' width='330' alt='G-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Messi vs Xavi » · « Messi » · « Xavi » · « Matchs » · « Buts » · « Passes décisives » · « Trophées » · « Saisons » · « 0,86 » · « Buts par match » · « 0,11 » · « Qui est le GOAT à tes yeux ? » · « Ton vote est modifiable une fois par semaine. »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-GOAT-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-01%5D%22) · [API-GOAT-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-02%5D%22) · [API-GOAT-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-03%5D%22) · [API-GOAT-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-06%5D%22) · [API-GOAT-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-08%5D%22) · [API-GOAT-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-09%5D%22) · [API-GOAT-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-12%5D%22) · [API-GOAT-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-14%5D%22) · [API-GOAT-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-19%5D%22) · [API-GOAT-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-20%5D%22) · [API-GOAT-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-21%5D%22) · [API-GOAT-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-22%5D%22) · [API-GOAT-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-23%5D%22) · [MOB-G-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-01%5D%22) · [MOB-G-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-02%5D%22) · [MOB-G-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-03%5D%22) · [MOB-G-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-09%5D%22) · [MOB-G-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-11%5D%22) · [MOB-G-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-14%5D%22) · [MOB-G-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-15%5D%22) · [MOB-G-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-16%5D%22) · [MOB-G-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-17%5D%22)

#### `G-05` — Résultat — profil radar
_Module : Comparateur GOAT_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-05_resultat-profil-radar__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-05_resultat-profil-radar__phone_light.webp?raw=true' width='230' alt='G-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-05_resultat-profil-radar__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-05_resultat-profil-radar__phone_dark.webp?raw=true' width='230' alt='G-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-05_resultat-profil-radar__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-05_resultat-profil-radar__tablet_light.webp?raw=true' width='330' alt='G-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-05_resultat-profil-radar__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-05_resultat-profil-radar__tablet_dark.webp?raw=true' width='330' alt='G-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Messi vs Xavi » · « Messi » · « Xavi » · « Profil de jeu » · « Évolution des buts par saison »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-GOAT-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-02%5D%22) · [API-GOAT-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-03%5D%22) · [API-GOAT-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-06%5D%22) · [API-GOAT-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-07%5D%22) · [API-GOAT-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-14%5D%22) · [API-GOAT-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-19%5D%22) · [MOB-G-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-01%5D%22) · [MOB-G-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-10%5D%22) · [MOB-G-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-14%5D%22) · [MOB-G-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-16%5D%22) · [MOB-G-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-17%5D%22)

#### `G-06` — Vote enregistré
_Module : Comparateur GOAT_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-06_vote-enregistre__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-06_vote-enregistre__phone_light.webp?raw=true' width='230' alt='G-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-06_vote-enregistre__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-06_vote-enregistre__phone_dark.webp?raw=true' width='230' alt='G-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-06_vote-enregistre__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-06_vote-enregistre__tablet_light.webp?raw=true' width='330' alt='G-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-06_vote-enregistre__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-06_vote-enregistre__tablet_dark.webp?raw=true' width='330' alt='G-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Messi vs Xavi » · « Messi » · « Xavi » · « Résultat de la communauté » · « 12 481 votes · tu as voté pour Messi » · « 71 % » · « 29 % » · « Matchs » · « Buts » · « Passes décisives » · « Trophées » · « Saisons » · « 0,86 » · « Buts par match » · « 0,11 » · « Ton vote a bien été pris en compte »

**Composants repérés** : `card`, `toast`

</details>

**Issues liées sur ce même écran :** [API-GOAT-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-01%5D%22) · [API-GOAT-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-06%5D%22) · [API-GOAT-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-08%5D%22) · [API-GOAT-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-10%5D%22) · [API-GOAT-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-11%5D%22) · [API-GOAT-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-12%5D%22) · [API-GOAT-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-13%5D%22) · [API-GOAT-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-14%5D%22) · [API-GOAT-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-15%5D%22) · [API-GOAT-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-16%5D%22) · [API-GOAT-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-17%5D%22) · [API-GOAT-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-19%5D%22) · [API-GOAT-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-20%5D%22) · [API-GOAT-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-21%5D%22) · [API-GOAT-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-22%5D%22) · [API-GOAT-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-23%5D%22) · [API-GOAT-26](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-26%5D%22) · [MOB-G-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-01%5D%22) · [MOB-G-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-02%5D%22) · [MOB-G-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-03%5D%22) · [MOB-G-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-11%5D%22) · [MOB-G-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-12%5D%22) · [MOB-G-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-14%5D%22) · [MOB-G-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-15%5D%22) · [MOB-G-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-16%5D%22) · [MOB-G-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-17%5D%22)

#### `G-07` — Vote déjà effectué — erreur 409
_Module : Comparateur GOAT_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-07_vote-deja-effectue-erreur-409__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-07_vote-deja-effectue-erreur-409__phone_light.webp?raw=true' width='230' alt='G-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-07_vote-deja-effectue-erreur-409__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-07_vote-deja-effectue-erreur-409__phone_dark.webp?raw=true' width='230' alt='G-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-07_vote-deja-effectue-erreur-409__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-07_vote-deja-effectue-erreur-409__tablet_light.webp?raw=true' width='330' alt='G-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-07_vote-deja-effectue-erreur-409__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-07_vote-deja-effectue-erreur-409__tablet_dark.webp?raw=true' width='330' alt='G-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Messi vs Xavi » · « Messi » · « Xavi » · « Résultat de la communauté » · « 12 481 votes · tu as voté pour Messi » · « 71 % » · « 29 % » · « Déjà voté cette semaine » · « Tu pourras modifier ton vote dans » · « 3 jours » · « . Merci de ta participation ! »

**Composants repérés** : `btn`, `card`, `modal`

</details>

**Issues liées sur ce même écran :** [API-GOAT-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-01%5D%22) · [API-GOAT-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-06%5D%22) · [API-GOAT-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-08%5D%22) · [API-GOAT-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-09%5D%22) · [API-GOAT-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-10%5D%22) · [API-GOAT-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-12%5D%22) · [API-GOAT-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-17%5D%22) · [API-GOAT-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-18%5D%22) · [API-GOAT-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-19%5D%22) · [API-GOAT-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-20%5D%22) · [API-GOAT-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-24%5D%22) · [API-GOAT-25](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-25%5D%22) · [MOB-G-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-01%5D%22) · [MOB-G-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-02%5D%22) · [MOB-G-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-03%5D%22) · [MOB-G-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-11%5D%22) · [MOB-G-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-13%5D%22) · [MOB-G-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-16%5D%22) · [MOB-G-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-17%5D%22)

## 📐 Règles de gestion

- Événements : GoatStarted(preselectedA?), GoatPlayerSlotTapped(slot), GoatPlayerSelected(slot, player), GoatSlotCleared(slot), GoatCompareRequested, GoatPopularDuelTapped(duel), GoatVoteSubmitted(side), GoatRetryRequested.
- États : GoatSelection(a?, b?, popularDuels) couvrant G-01 (aucun) et G-02 (un joueur) ; GoatComparing ; GoatResult(comparison, voteStatus) ; GoatVoting ; GoatVoted ; GoatAlreadyVoted(nextEditableAt) ; GoatFailure.
- Le bouton 'Comparer' n'est actif que si A et B sont choisis et différents.
- Sélectionner le même joueur dans les deux slots est impossible (le joueur déjà pris est grisé dans le sélecteur).
- Un tap sur un duel populaire remplit A et B et lance directement la comparaison.
- Le vote : HTTP 201 → GoatVoted (toast + résultat mis à jour) ; 409 → GoatAlreadyVoted (modal G-07) ; hors-ligne → état d'erreur 'hors-ligne' sans changement de vote ; double tap protégé (droppable).

## 🛠️ Tâches

- [ ] Créer presentation/bloc/goat_comparator_{bloc,event,state}.dart (@injectable) avec bloc_concurrency (droppable pour le vote, restartable pour comparaison).
- [ ] Mapper chaque Failure vers un état ou un effet ponctuel (BlocListener one-shot via state.effect).
- [ ] Fournir les paramètres de route ?a=<id>&b=<id> pour pré-sélection (depuis la fiche joueur).
- [ ] Stocker myVote et nextEditableAt dans GoatResult.
- [ ] Calculer côté Bloc la couleur/identité A (grenat) et B (bleu).
- [ ] Documenter le diagramme d'états.

## ✔️ Critères d'acceptation

- [ ] Étant donné GoatStarted alors GoatSelection(a=null,b=null) et 3 duels populaires.
- [ ] Étant donné A choisi alors GoatSelection(a=Messi,b=null) et Comparer inactif.
- [ ] Étant donné A et B alors GoatCompareRequested mène à GoatComparing puis GoatResult.
- [ ] Étant donné un vote réussi alors GoatVoted(aPercent=71).
- [ ] Étant donné un 409 alors GoatAlreadyVoted avec nextEditableAt.
- [ ] Étant donné deux taps rapides sur Voter alors un seul appel est envoyé.

## 🧪 Tests à écrire

- [ ] bloc_test GoatComparatorBloc_selection_vide
- [ ] bloc_test _un_joueur_choisi
- [ ] bloc_test _compare_succes
- [ ] bloc_test _vote_succes
- [ ] bloc_test _vote_409
- [ ] bloc_test _vote_double_tap_droppable
- [ ] bloc_test _duel_populaire_lance_comparaison
- [ ] bloc_test _hors_ligne_vote

## 🔗 Dépendances

À réaliser après : `MOB-G-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.5
- CDC Global §2.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
