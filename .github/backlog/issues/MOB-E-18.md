> **MOB-E-18** · UX / Ergonomie · Priorité **P2** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

CDC Flutter §7.4 demande une animation de transition entre questions et un retour visuel immédiat respectant les tokens du design system.

## ✅ Objectif

Animer le passage d'une question à la suivante de façon fluide (60 fps).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-03` — Question
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__phone_light.webp?raw=true' width='230' alt='E-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__phone_dark.webp?raw=true' width='230' alt='E-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__tablet_light.webp?raw=true' width='330' alt='E-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-03_question__tablet_dark.webp?raw=true' width='330' alt='E-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Niveau 2 · Culé » · « 4/10 » · « Histoire · Question 4 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Valider »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-11%5D%22) · [API-JEUX-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-13%5D%22) · [API-JEUX-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-14%5D%22) · [API-JEUX-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-16%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [API-JEUX-36](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-36%5D%22) · [API-JEUX-37](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-37%5D%22) · [MOB-E-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-02%5D%22) · [MOB-E-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-03%5D%22) · [MOB-E-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-04%5D%22) · [MOB-E-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-05%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-07%5D%22) · [MOB-E-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-13%5D%22) · [MOB-E-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-30%5D%22) · [MOB-E-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-31%5D%22) · [MOB-E-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-32%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

#### `E-06` — Bonne réponse et explication
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__phone_light.webp?raw=true' width='230' alt='E-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__phone_dark.webp?raw=true' width='230' alt='E-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__tablet_light.webp?raw=true' width='330' alt='E-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__tablet_dark.webp?raw=true' width='330' alt='E-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Niveau 2 · Culé » · « 4/10 » · « Histoire · Question 4 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Bonne réponse ! » · « +15 pts » · « Rakitić ouvre le score dès la 4e minute, avant les buts de Suárez et Neymar (3-1). Le Barça réalise alors son deuxième triplé. » · « Question suivante »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-11%5D%22) · [API-JEUX-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-16%5D%22) · [API-JEUX-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-20%5D%22) · [MOB-E-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-02%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-16%5D%22) · [MOB-E-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-20%5D%22) · [MOB-E-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-31%5D%22) · [MOB-E-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-32%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

#### `E-07` — Mauvaise réponse et explication
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__phone_light.webp?raw=true' width='230' alt='E-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__phone_dark.webp?raw=true' width='230' alt='E-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__tablet_light.webp?raw=true' width='330' alt='E-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__tablet_dark.webp?raw=true' width='330' alt='E-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Niveau 2 · Culé » · « 4/10 » · « Histoire · Question 4 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Raté ! » · « 0 pt » · « Rakitić ouvre le score dès la 4e minute, avant les buts de Suárez et Neymar (3-1). Le Barça réalise alors son deuxième triplé. » · « Question suivante »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-16%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-17%5D%22) · [MOB-E-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-20%5D%22) · [MOB-E-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-32%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Transition : glissement horizontal 300 ms (`Curves.easeOutCubic`) ; la barre de progression se remplit en 250 ms.
- Le compteur « n/10 » et l'étiquette de catégorie changent avec un fondu 150 ms.
- Aucune animation si « Réduire les animations » (fondu instantané).

## 🛠️ Tâches

- [ ] Utiliser `AnimatedSwitcher` avec `SlideTransition` dans `QuizQuestionView` (clé = index).
- [ ] Animer `QuizProgressBar` via `TweenAnimationBuilder`.
- [ ] Précharger la question suivante (déjà en mémoire) pour éviter tout blocage.
- [ ] Lire `reduceMotion` depuis les réglages d'accessibilité.
- [ ] Profiler avec DevTools (aucune frame > 16 ms).
- [ ] Tests widget avec `pumpAndSettle`.
- [ ] Documenter les durées dans le design system.
- [ ] Golden de la barre à 4/10 et 5/10.

## ✔️ Critères d'acceptation

- [ ] Étant donné « Question suivante », quand elle est touchée, alors la nouvelle question glisse en 300 ms.
- [ ] Étant donné `reduceMotion`, quand la question change, alors le changement est instantané.
- [ ] Étant donné la barre à 4/10, quand on passe à 5/10, alors un segment se remplit en 250 ms.
- [ ] Étant donné un appareil d'entrée de gamme, quand la transition joue, alors aucun jank > 16 ms n'est observé.

## 🧪 Tests à écrire

- [ ] Widget test : AnimatedSwitcher.
- [ ] Widget test : reduceMotion.
- [ ] Golden : barre 4/10.
- [ ] Test de performance (timeline).

## 🔗 Dépendances

À réaliser après : `MOB-E-13` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
