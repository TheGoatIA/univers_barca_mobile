> **MOB-E-32** · UX / Ergonomie · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Le quiz chronométré est exigeant : lecteur d'écran, texte agrandi et daltonisme ne doivent pas pénaliser (CDC Flutter §9.6).

## ✅ Objectif

Assurer l'accessibilité de tous les états du quiz.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-03` — Question
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__phone_light.webp?raw=true' width='230' alt='E-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__phone_dark.webp?raw=true' width='230' alt='E-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__tablet_light.webp?raw=true' width='330' alt='E-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__tablet_dark.webp?raw=true' width='330' alt='E-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Niveau 2 · Culé » · « 4/10 » · « Histoire · Question 4 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Valider »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-11%5D%22) · [API-JEUX-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-13%5D%22) · [API-JEUX-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-14%5D%22) · [API-JEUX-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-16%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [API-JEUX-36](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-36%5D%22) · [API-JEUX-37](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-37%5D%22) · [MOB-E-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-02%5D%22) · [MOB-E-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-03%5D%22) · [MOB-E-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-04%5D%22) · [MOB-E-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-05%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-07%5D%22) · [MOB-E-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-13%5D%22) · [MOB-E-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-18%5D%22) · [MOB-E-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-30%5D%22) · [MOB-E-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-31%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

#### `E-04` — Question — réponse sélectionnée
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__phone_light.webp?raw=true' width='230' alt='E-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__phone_dark.webp?raw=true' width='230' alt='E-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__tablet_light.webp?raw=true' width='330' alt='E-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__tablet_dark.webp?raw=true' width='330' alt='E-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Niveau 2 · Culé » · « 4/10 » · « Histoire · Question 4 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Valider »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-16%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-14%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

#### `E-05` — Question — temps presque écoulé
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__phone_light.webp?raw=true' width='230' alt='E-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__phone_dark.webp?raw=true' width='230' alt='E-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__tablet_light.webp?raw=true' width='330' alt='E-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__tablet_dark.webp?raw=true' width='330' alt='E-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Niveau 2 · Culé » · « 7/10 » · « Histoire · Question 7 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Valider »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-16%5D%22) · [MOB-E-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-07%5D%22) · [MOB-E-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-15%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

#### `E-06` — Bonne réponse et explication
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__phone_light.webp?raw=true' width='230' alt='E-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__phone_dark.webp?raw=true' width='230' alt='E-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__tablet_light.webp?raw=true' width='330' alt='E-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__tablet_dark.webp?raw=true' width='330' alt='E-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Niveau 2 · Culé » · « 4/10 » · « Histoire · Question 4 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Bonne réponse ! » · « +15 pts » · « Rakitić ouvre le score dès la 4e minute, avant les buts de Suárez et Neymar (3-1). Le Barça réalise alors son deuxième triplé. » · « Question suivante »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-11%5D%22) · [API-JEUX-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-16%5D%22) · [API-JEUX-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-20%5D%22) · [MOB-E-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-02%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-16%5D%22) · [MOB-E-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-18%5D%22) · [MOB-E-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-20%5D%22) · [MOB-E-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-31%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

#### `E-07` — Mauvaise réponse et explication
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__phone_light.webp?raw=true' width='230' alt='E-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__phone_dark.webp?raw=true' width='230' alt='E-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__tablet_light.webp?raw=true' width='330' alt='E-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__tablet_dark.webp?raw=true' width='330' alt='E-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Niveau 2 · Culé » · « 4/10 » · « Histoire · Question 4 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Raté ! » · « 0 pt » · « Rakitić ouvre le score dès la 4e minute, avant les buts de Suárez et Neymar (3-1). Le Barça réalise alors son deuxième triplé. » · « Question suivante »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-16%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-17%5D%22) · [MOB-E-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-18%5D%22) · [MOB-E-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-20%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

#### `E-13` — Classement mondial
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__phone_light.webp?raw=true' width='230' alt='E-13 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__phone_dark.webp?raw=true' width='230' alt='E-13 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__tablet_light.webp?raw=true' width='330' alt='E-13 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__tablet_dark.webp?raw=true' width='330' alt='E-13 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Classements » · « Amis » · « Monde » · « Cette semaine » · « Ce mois » · « Depuis toujours » · « Sofía R. » · « 1 840 » · « Mamadou D. » · « 2 120 » · « Kevin M. » · « 1 710 » · « Lucía F. » · « 1 580 » · « Aïcha N. » · « 1 495 » · « Yann M. » · « 1 410 » · « · · · » · « Boris T. » · « Toi »

**Composants repérés** : `avatar`, `card`, `chip`

</details>

**Issues liées sur ce même écran :** [API-JEUX-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-21%5D%22) · [API-JEUX-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-22%5D%22) · [API-JEUX-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-32%5D%22) · [API-JEUX-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-33%5D%22) · [API-JEUX-37](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-37%5D%22) · [MOB-E-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-02%5D%22) · [MOB-E-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-03%5D%22) · [MOB-E-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-05%5D%22) · [MOB-E-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-25%5D%22) · [MOB-E-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-26%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Zones tactiles ≥ 44 x 44 dp ; contrastes WCAG AA ; le vert/rouge est doublé d'icônes coche/croix.
- Option « Chronomètre étendu » : si TalkBack/VoiceOver est actif, proposer d'allonger à 60 s (à confirmer avec l'API, sinon désactiver le chrono en entraînement).
- Annonces : décompte à 10 s, 5 s ; résultat de réponse ; passage de question.

## 🛠️ Tâches

- [ ] Ajouter `Semantics` sur `OptionCard`, `TimerBadge`, `QuizProgressBar` (« Question 4 sur 10 »).
- [ ] Utiliser `SemanticsService.announce` aux seuils.
- [ ] Tester `textScaleFactor` 2.0 avec scroll.
- [ ] Mettre `excludeSemantics` sur les décorations.
- [ ] Vérifier l'ordre de focus (énoncé → options → Valider).
- [ ] Tests `meetsGuideline` (tap target, contrast, labeled).
- [ ] Documenter le comportement avec lecteur d'écran.
- [ ] Test manuel TalkBack/VoiceOver (checklist).

## ✔️ Critères d'acceptation

- [ ] Étant donné TalkBack, quand une question s'affiche, alors l'énoncé puis les 4 options sont lus dans l'ordre.
- [ ] Étant donné 5 s restantes, quand le seuil est atteint, alors l'annonce est faite.
- [ ] Étant donné un texte 200 %, quand E-03 s'affiche, alors tout est accessible par scroll.
- [ ] Étant donné une bonne réponse, quand le retour s'affiche, alors l'état n'est pas transmis par la couleur seule.

## 🧪 Tests à écrire

- [ ] Test : `androidTapTargetGuideline`.
- [ ] Test : `textContrastGuideline`.
- [ ] Widget test : labels sémantiques.
- [ ] Widget test : textScale 2.0.

## ♿ Accessibilité et i18n

- Clés ARB : `questionOf`, `timerSemantics`, `optionSemantics`.

## 🔗 Dépendances

À réaliser après : `MOB-E-13` · `MOB-E-17` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.6
- CDC Global §3.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
