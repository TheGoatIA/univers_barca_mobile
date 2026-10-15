> **MOB-E-34** · Tests · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Parcours complet à couvrir : hub → intro → 10 questions → résultat → montée de niveau → classement → ligue.

## ✅ Objectif

Écrire la suite de tests (unitaires, bloc, golden, intégration).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-01` — Hub du quiz
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__phone_light.webp?raw=true' width='230' alt='E-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__phone_dark.webp?raw=true' width='230' alt='E-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__tablet_light.webp?raw=true' width='330' alt='E-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__tablet_dark.webp?raw=true' width='330' alt='E-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz » · « Ton niveau » · « Culé » · « 70 % de réussite sur les 10 dernières réponses · Passe au niveau » · « Socio » · « à 75 % » · « Quiz du jour » · « 10 questions · +150 pts max · 1 fois par jour » · « Jouer » · « Entraînement libre » · « Illimité · sans impact sur ton niveau » · « Classements » · « Amis, monde, cette semaine » · « Les 5 paliers » · « 1. Supporter occasionnel » · « 2. Culé » · « Actuel » · « 3. Socio » · « 4. Historien du Barça » · « 5. La Masia »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-12%5D%22) · [API-JEUX-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-14%5D%22) · [API-JEUX-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-18%5D%22) · [API-JEUX-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-21%5D%22) · [API-JEUX-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-32%5D%22) · [API-JEUX-34](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-34%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-E-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-01%5D%22) · [MOB-E-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-08%5D%22) · [MOB-E-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-09%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

#### `E-02` — Quiz du jour — introduction
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__phone_light.webp?raw=true' width='230' alt='E-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__phone_dark.webp?raw=true' width='230' alt='E-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__tablet_light.webp?raw=true' width='330' alt='E-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__tablet_dark.webp?raw=true' width='330' alt='E-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Prêt(e) pour le quiz ? » · « 10 questions calibrées sur ton niveau » · « Culé » · « . Tu as 30 secondes par question. » · « 10 questions » · « Histoire, joueurs, statistiques » · « 30 secondes » · « par question » · « Jusqu’à +150 points » · « bonus de rapidité » · « Commencer »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-13%5D%22) · [API-JEUX-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-14%5D%22) · [MOB-E-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-01%5D%22) · [MOB-E-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-03%5D%22) · [MOB-E-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-05%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-10%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

#### `E-03` — Question
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__phone_light.webp?raw=true' width='230' alt='E-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__phone_dark.webp?raw=true' width='230' alt='E-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__tablet_light.webp?raw=true' width='330' alt='E-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__tablet_dark.webp?raw=true' width='330' alt='E-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Niveau 2 · Culé » · « 4/10 » · « Histoire · Question 4 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Valider »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-11%5D%22) · [API-JEUX-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-13%5D%22) · [API-JEUX-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-14%5D%22) · [API-JEUX-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-16%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [API-JEUX-36](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-36%5D%22) · [API-JEUX-37](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-37%5D%22) · [MOB-E-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-02%5D%22) · [MOB-E-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-03%5D%22) · [MOB-E-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-04%5D%22) · [MOB-E-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-05%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-07%5D%22) · [MOB-E-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-13%5D%22) · [MOB-E-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-18%5D%22) · [MOB-E-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-30%5D%22) · [MOB-E-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-31%5D%22) · [MOB-E-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-32%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

#### `E-04` — Question — réponse sélectionnée
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__phone_light.webp?raw=true' width='230' alt='E-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__phone_dark.webp?raw=true' width='230' alt='E-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__tablet_light.webp?raw=true' width='330' alt='E-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__tablet_dark.webp?raw=true' width='330' alt='E-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Niveau 2 · Culé » · « 4/10 » · « Histoire · Question 4 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Valider »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-16%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-14%5D%22) · [MOB-E-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-32%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

#### `E-05` — Question — temps presque écoulé
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__phone_light.webp?raw=true' width='230' alt='E-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__phone_dark.webp?raw=true' width='230' alt='E-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__tablet_light.webp?raw=true' width='330' alt='E-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__tablet_dark.webp?raw=true' width='330' alt='E-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Niveau 2 · Culé » · « 7/10 » · « Histoire · Question 7 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Valider »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-16%5D%22) · [MOB-E-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-07%5D%22) · [MOB-E-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-15%5D%22) · [MOB-E-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-32%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

#### `E-06` — Bonne réponse et explication
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__phone_light.webp?raw=true' width='230' alt='E-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__phone_dark.webp?raw=true' width='230' alt='E-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__tablet_light.webp?raw=true' width='330' alt='E-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__tablet_dark.webp?raw=true' width='330' alt='E-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Niveau 2 · Culé » · « 4/10 » · « Histoire · Question 4 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Bonne réponse ! » · « +15 pts » · « Rakitić ouvre le score dès la 4e minute, avant les buts de Suárez et Neymar (3-1). Le Barça réalise alors son deuxième triplé. » · « Question suivante »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-11%5D%22) · [API-JEUX-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-16%5D%22) · [API-JEUX-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-20%5D%22) · [MOB-E-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-02%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-16%5D%22) · [MOB-E-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-18%5D%22) · [MOB-E-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-20%5D%22) · [MOB-E-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-31%5D%22) · [MOB-E-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-32%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

#### `E-07` — Mauvaise réponse et explication
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__phone_light.webp?raw=true' width='230' alt='E-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__phone_dark.webp?raw=true' width='230' alt='E-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__tablet_light.webp?raw=true' width='330' alt='E-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__tablet_dark.webp?raw=true' width='330' alt='E-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Niveau 2 · Culé » · « 4/10 » · « Histoire · Question 4 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Raté ! » · « 0 pt » · « Rakitić ouvre le score dès la 4e minute, avant les buts de Suárez et Neymar (3-1). Le Barça réalise alors son deuxième triplé. » · « Question suivante »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-16%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-17%5D%22) · [MOB-E-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-18%5D%22) · [MOB-E-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-20%5D%22) · [MOB-E-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-32%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

#### `E-08` — Résultat de la session
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-08_resultat-de-la-session__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-08_resultat-de-la-session__phone_light.webp?raw=true' width='230' alt='E-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-08_resultat-de-la-session__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-08_resultat-de-la-session__phone_dark.webp?raw=true' width='230' alt='E-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-08_resultat-de-la-session__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-08_resultat-de-la-session__tablet_light.webp?raw=true' width='330' alt='E-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-08_resultat-de-la-session__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-08_resultat-de-la-session__tablet_dark.webp?raw=true' width='330' alt='E-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Résultat » · « 8/10 » · « bonnes réponses » · « Excellent travail ! » · « +120 » · « Points » · « Temps » · « 80 % » · « Réussite » · « Progression vers Socio » · « 75 % » · « Encore une bonne série pour monter de niveau. » · « Revoir les explications » · « Voir le classement »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-11%5D%22) · [API-JEUX-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-12%5D%22) · [API-JEUX-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-17%5D%22) · [API-JEUX-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-20%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-E-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-02%5D%22) · [MOB-E-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-05%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-08%5D%22) · [MOB-E-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-19%5D%22) · [MOB-E-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-20%5D%22) · [MOB-E-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-24%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

#### `E-09` — Montée de niveau
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-09_montee-de-niveau__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-09_montee-de-niveau__phone_light.webp?raw=true' width='230' alt='E-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-09_montee-de-niveau__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-09_montee-de-niveau__phone_dark.webp?raw=true' width='230' alt='E-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-09_montee-de-niveau__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-09_montee-de-niveau__tablet_light.webp?raw=true' width='330' alt='E-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-09_montee-de-niveau__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-09_montee-de-niveau__tablet_dark.webp?raw=true' width='330' alt='E-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Résultat » · « Niveau supérieur ! » · « Socio » · « Tu passes du niveau 2 au niveau 3. Les questions seront plus corsées — et rapporteront plus de points. » · « Continuer » · « Partager »

**Composants repérés** : `btn`, `modal`

</details>

**Issues liées sur ce même écran :** [API-JEUX-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-12%5D%22) · [API-JEUX-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-17%5D%22) · [MOB-E-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-08%5D%22) · [MOB-E-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-21%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

#### `E-10` — Retour au palier inférieur
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-10_retour-au-palier-inferieur__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-10_retour-au-palier-inferieur__phone_light.webp?raw=true' width='230' alt='E-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-10_retour-au-palier-inferieur__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-10_retour-au-palier-inferieur__phone_dark.webp?raw=true' width='230' alt='E-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-10_retour-au-palier-inferieur__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-10_retour-au-palier-inferieur__tablet_light.webp?raw=true' width='330' alt='E-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-10_retour-au-palier-inferieur__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-10_retour-au-palier-inferieur__tablet_dark.webp?raw=true' width='330' alt='E-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Résultat » · « On ajuste le tir » · « Pour que le quiz reste agréable, tu repasses au niveau » · « Culé » · « . Tu y remonteras vite ! » · « Compris »

**Composants repérés** : `btn`, `modal`

</details>

**Issues liées sur ce même écran :** [API-JEUX-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-12%5D%22) · [API-JEUX-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-17%5D%22) · [MOB-E-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-08%5D%22) · [MOB-E-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-22%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

#### `E-11` — Entraînement libre — configuration
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-11_entrainement-libre-configuration__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-11_entrainement-libre-configuration__phone_light.webp?raw=true' width='230' alt='E-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-11_entrainement-libre-configuration__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-11_entrainement-libre-configuration__phone_dark.webp?raw=true' width='230' alt='E-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-11_entrainement-libre-configuration__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-11_entrainement-libre-configuration__tablet_light.webp?raw=true' width='330' alt='E-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-11_entrainement-libre-configuration__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-11_entrainement-libre-configuration__tablet_dark.webp?raw=true' width='330' alt='E-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Entraînement libre » · « Choisis tes thèmes. Aucun impact sur ton niveau ni ton classement. » · « Catégories » · « Joueurs » · « Histoire » · « Statistiques » · « Matchs » · « Trophées » · « La Masia » · « Difficulté » · « Mon niveau » · « Facile » · « Difficile » · « Nombre de questions » · « Afficher le chronomètre » · « 30 secondes par question » · « Lancer l’entraînement »

**Composants repérés** : `btn`, `card`, `chip`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-JEUX-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-15%5D%22) · [MOB-E-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-23%5D%22) · [MOB-E-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-24%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

#### `E-12` — Entraînement — question
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-12_entrainement-question__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-12_entrainement-question__phone_light.webp?raw=true' width='230' alt='E-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-12_entrainement-question__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-12_entrainement-question__phone_dark.webp?raw=true' width='230' alt='E-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-12_entrainement-question__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-12_entrainement-question__tablet_light.webp?raw=true' width='330' alt='E-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-12_entrainement-question__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-12_entrainement-question__tablet_dark.webp?raw=true' width='330' alt='E-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Entraînement » · « Niveau 2 · Culé » · « 3/10 » · « Histoire · Question 3 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Valider »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-13%5D%22) · [API-JEUX-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-15%5D%22) · [MOB-E-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-03%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-07%5D%22) · [MOB-E-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-13%5D%22) · [MOB-E-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-24%5D%22) · [MOB-E-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-31%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

#### `E-13` — Classement mondial
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__phone_light.webp?raw=true' width='230' alt='E-13 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__phone_dark.webp?raw=true' width='230' alt='E-13 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__tablet_light.webp?raw=true' width='330' alt='E-13 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__tablet_dark.webp?raw=true' width='330' alt='E-13 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Classements » · « Amis » · « Monde » · « Cette semaine » · « Ce mois » · « Depuis toujours » · « Sofía R. » · « 1 840 » · « Mamadou D. » · « 2 120 » · « Kevin M. » · « 1 710 » · « Lucía F. » · « 1 580 » · « Aïcha N. » · « 1 495 » · « Yann M. » · « 1 410 » · « · · · » · « Boris T. » · « Toi »

**Composants repérés** : `avatar`, `card`, `chip`

</details>

**Issues liées sur ce même écran :** [API-JEUX-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-21%5D%22) · [API-JEUX-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-22%5D%22) · [API-JEUX-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-32%5D%22) · [API-JEUX-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-33%5D%22) · [API-JEUX-37](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-37%5D%22) · [MOB-E-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-02%5D%22) · [MOB-E-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-03%5D%22) · [MOB-E-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-05%5D%22) · [MOB-E-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-25%5D%22) · [MOB-E-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-26%5D%22) · [MOB-E-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-32%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

#### `E-14` — Classement entre amis
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-14_classement-entre-amis__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-14_classement-entre-amis__phone_light.webp?raw=true' width='230' alt='E-14 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-14_classement-entre-amis__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-14_classement-entre-amis__phone_dark.webp?raw=true' width='230' alt='E-14 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-14_classement-entre-amis__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-14_classement-entre-amis__tablet_light.webp?raw=true' width='330' alt='E-14 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-14_classement-entre-amis__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-14_classement-entre-amis__tablet_dark.webp?raw=true' width='330' alt='E-14 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Classements » · « Amis » · « Monde » · « Ligue « Les Culés du bureau » » · « 6 membres · code » · « BARCA-4X7Q » · « Aïcha Ngono » · « 1 420 » · « Mamadou Diallo » · « 1 310 » · « Boris T. » · « Toi » · « 1 180 » · « Lucía Fernández » · « Kevin Mballa »

**Composants repérés** : `avatar`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-21%5D%22) · [API-JEUX-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-22%5D%22) · [API-JEUX-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-23%5D%22) · [API-JEUX-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-24%5D%22) · [MOB-E-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-25%5D%22) · [MOB-E-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-27%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

#### `E-15` — Inviter des amis
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-15_inviter-des-amis__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-15_inviter-des-amis__phone_light.webp?raw=true' width='230' alt='E-15 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-15_inviter-des-amis__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-15_inviter-des-amis__phone_dark.webp?raw=true' width='230' alt='E-15 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-15_inviter-des-amis__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-15_inviter-des-amis__tablet_light.webp?raw=true' width='330' alt='E-15 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-15_inviter-des-amis__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-15_inviter-des-amis__tablet_dark.webp?raw=true' width='330' alt='E-15 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Inviter » · « Défie tes amis » · « Crée ta ligue privée : un classement hebdomadaire rien qu’entre vous. » · « Ton code d’invitation » · « Copier le code » · « Lien » · « Partager l’invitation »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-23%5D%22) · [API-JEUX-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-24%5D%22) · [MOB-E-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-28%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

#### `E-16` — Rejoindre avec un code
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-16_rejoindre-avec-un-code__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-16_rejoindre-avec-un-code__phone_light.webp?raw=true' width='230' alt='E-16 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-16_rejoindre-avec-un-code__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-16_rejoindre-avec-un-code__phone_dark.webp?raw=true' width='230' alt='E-16 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-16_rejoindre-avec-un-code__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-16_rejoindre-avec-un-code__tablet_light.webp?raw=true' width='330' alt='E-16 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-16_rejoindre-avec-un-code__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-16_rejoindre-avec-un-code__tablet_dark.webp?raw=true' width='330' alt='E-16 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Rejoindre une ligue » · « Saisis le code reçu d’un ami ou ouvre son lien d’invitation. » · « Code d’invitation » · « BARCA- » · « Les Culés du bureau » · « Créée par Aïcha · 6 membres » · « Rejoindre la ligue »

**Composants repérés** : `avatar`, `btn`, `card`, `input`

</details>

**Issues liées sur ce même écran :** [API-JEUX-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-23%5D%22) · [API-JEUX-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-24%5D%22) · [MOB-E-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-29%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

#### `E-17` — Quiz déjà joué
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-17_quiz-deja-joue__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-17_quiz-deja-joue__phone_light.webp?raw=true' width='230' alt='E-17 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-17_quiz-deja-joue__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-17_quiz-deja-joue__phone_dark.webp?raw=true' width='230' alt='E-17 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-17_quiz-deja-joue__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-17_quiz-deja-joue__tablet_light.webp?raw=true' width='330' alt='E-17 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-17_quiz-deja-joue__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-17_quiz-deja-joue__tablet_dark.webp?raw=true' width='330' alt='E-17 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Quiz du jour terminé » · « Tu as fait 8/10 aujourd’hui. Le prochain quiz arrive demain — en attendant, entraîne-toi librement ! » · « Entraînement libre » · « Voir mon résultat »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-JEUX-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-14%5D%22) · [API-JEUX-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-17%5D%22) · [API-JEUX-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-18%5D%22) · [MOB-E-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-04%5D%22) · [MOB-E-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-12%5D%22) · [MOB-E-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-30%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

#### `E-18` — Chargement des questions
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-18_chargement-des-questions__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-18_chargement-des-questions__phone_light.webp?raw=true' width='230' alt='E-18 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-18_chargement-des-questions__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-18_chargement-des-questions__phone_dark.webp?raw=true' width='230' alt='E-18 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-18_chargement-des-questions__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-18_chargement-des-questions__tablet_light.webp?raw=true' width='330' alt='E-18 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-18_chargement-des-questions__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-18_chargement-des-questions__tablet_dark.webp?raw=true' width='330' alt='E-18 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Préparation de ton quiz » · « Sélection de questions adaptées à ton niveau… »

**Composants repérés** : `spinner`

</details>

**Issues liées sur ce même écran :** [API-JEUX-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-13%5D%22) · [API-JEUX-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-14%5D%22) · [MOB-E-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-04%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-11%5D%22) · [MOB-E-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-30%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22)

## 📐 Règles de gestion

- Couverture ≥ 80 % domaine + BLoC (CDC Flutter §10.2).
- Goldens 2 tailles x 2 thèmes pour E-01, E-02, E-03, E-06, E-07, E-08, E-09, E-11, E-13, E-14.
- Scénarios : parcours complet, timeout, déjà joué, montée/descente de niveau, entraînement, rejoindre une ligue.

## 🛠️ Tâches

- [ ] Créer `test/features/quiz/{bloc,cubit,data,presentation}` et fixtures.
- [ ] Créer `integration_test/quiz_flow_test.dart` avec serveur simulé.
- [ ] Ajouter `test/goldens/quiz/` et script de mise à jour.
- [ ] Simuler le temps avec `fake_async` / horloge injectée.
- [ ] Ajouter les tests de contrat anti-triche.
- [ ] Intégrer au job CI `flutter test --coverage`.
- [ ] Publier le rapport lcov.
- [ ] Documenter dans le README.

## ✔️ Critères d'acceptation

- [ ] Étant donné le serveur simulé, quand le scénario complet s'exécute, alors E-08 affiche 8/10 et +120.
- [ ] Étant donné une réponse à 20 s du début, quand le temps s'écoule, alors le minuteur affiche 00:10 (30 - 20).
- [ ] Étant donné un résumé `levelChange:'up'`, quand E-08 est fermé, alors E-09 s'affiche.
- [ ] Étant donné la CI, quand la PR est ouverte, alors la couverture ≥ 80 % est vérifiée.

## 🧪 Tests à écrire

- [ ] Intégration : parcours quiz du jour.
- [ ] Intégration : entraînement libre.
- [ ] Intégration : rejoindre une ligue.
- [ ] Golden : suite complète.
- [ ] bloc_test : montée/descente de niveau.

## 🔗 Dépendances

À réaliser après : `MOB-E-19` · `MOB-E-22` · `MOB-E-23` · `MOB-E-27` · `MOB-E-29` · `MOB-E-12` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §10

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
