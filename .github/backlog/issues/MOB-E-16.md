> **MOB-E-16** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

E-06 : l'option juste passe en vert avec coche, un encart « Bonne réponse ! +15 pts » affiche l'explication (« Rakitić ouvre le score dès la 4e minute… ») et le bouton devient « Question suivante ».

## ✅ Objectif

Implémenter le retour immédiat positif.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-06` — Bonne réponse et explication
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__phone_light.webp?raw=true' width='230' alt='E-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__phone_dark.webp?raw=true' width='230' alt='E-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__tablet_light.webp?raw=true' width='330' alt='E-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-06_bonne-reponse-et-explication__tablet_dark.webp?raw=true' width='330' alt='E-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Niveau 2 · Culé » · « 4/10 » · « Histoire · Question 4 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Bonne réponse ! » · « +15 pts » · « Rakitić ouvre le score dès la 4e minute, avant les buts de Suárez et Neymar (3-1). Le Barça réalise alors son deuxième triplé. » · « Question suivante »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-11%5D%22) · [API-JEUX-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-16%5D%22) · [API-JEUX-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-20%5D%22) · [MOB-E-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-02%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-18%5D%22) · [MOB-E-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-20%5D%22) · [MOB-E-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-31%5D%22) · [MOB-E-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-32%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Seule la réponse serveur détermine l'état (`isCorrect`, `correctOption`).
- Encart vert sous la liste : icône coche, « Bonne réponse ! », pastille « +{points} pts », texte d'explication localisé.
- « Question suivante » remplace « Valider » ; à la 10e question le libellé devient « Voir le résultat ».

## 🛠️ Tâches

- [ ] Créer `AnswerFeedbackCard(correct, points, explanation)`.
- [ ] Mettre `OptionState.correct` (fond vert clair, bordure, icône coche).
- [ ] Animer l'apparition (fade + slide 250 ms) et un `HapticFeedback.lightImpact`.
- [ ] Gérer le scroll automatique vers l'encart si l'écran est court.
- [ ] Brancher `QuizNextRequested`.
- [ ] Golden test E-06.
- [ ] Analytics `quiz_answer{correct:true}`.
- [ ] Tests widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné une réponse correcte, quand E-06 s'affiche, alors l'option est verte et « +15 pts » est visible.
- [ ] Étant donné l'explication fournie, quand l'encart s'affiche, alors le texte complet est lisible.
- [ ] Étant donné la 10e question, quand le feedback s'affiche, alors le bouton est « Voir le résultat ».
- [ ] Étant donné un texte 200 %, quand l'encart s'affiche, alors il est atteignable en scroll.

## 🧪 Tests à écrire

- [ ] Golden test : E-06 clair/sombre.
- [ ] Widget test : points affichés.
- [ ] Widget test : libellé de la dernière question.
- [ ] Widget test : scroll auto.

## ♿ Accessibilité et i18n

- Clés ARB : `correctAnswer`, `pointsShort`, `nextQuestion`, `seeResult`.
- Annonce « Bonne réponse, plus 15 points ».

## 🔗 Dépendances

À réaliser après : `MOB-E-14` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.4
- CDC Flutter §7.4 (retour visuel immédiat)

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
