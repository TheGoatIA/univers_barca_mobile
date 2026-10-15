> **MOB-E-17** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

E-07 : l'option choisie passe en rouge, l'option juste est révélée en vert, l'encart annonce « Raté ! 0 pt » avec la même explication.

## ✅ Objectif

Implémenter le retour négatif non culpabilisant, y compris le cas « temps écoulé ».

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-07` — Mauvaise réponse et explication
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__phone_light.webp?raw=true' width='230' alt='E-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__phone_dark.webp?raw=true' width='230' alt='E-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__tablet_light.webp?raw=true' width='330' alt='E-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-07_mauvaise-reponse-et-explication__tablet_dark.webp?raw=true' width='330' alt='E-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Niveau 2 · Culé » · « 4/10 » · « Histoire · Question 4 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Raté ! » · « 0 pt » · « Rakitić ouvre le score dès la 4e minute, avant les buts de Suárez et Neymar (3-1). Le Barça réalise alors son deuxième triplé. » · « Question suivante »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-16%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-18%5D%22) · [MOB-E-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-20%5D%22) · [MOB-E-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-32%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Option erronée : rouge avec croix ; bonne option : vert avec coche (les deux visibles).
- Temps écoulé : titre « Temps écoulé ! 0 pt », aucune option rouge, bonne réponse révélée.
- Même bouton « Question suivante » ; aucun son agressif ; vibration courte seulement.

## 🛠️ Tâches

- [ ] Mettre `OptionState.wrong` (fond rouge clair, bordure, icône croix).
- [ ] Étendre `AnswerFeedbackCard` avec la variante `wrong` et `timeout`.
- [ ] Ajouter les clés ARB `wrongAnswer`, `timeUp`.
- [ ] Animation de secousse 200 ms de l'option erronée (désactivable).
- [ ] Brancher `explanation` et `correctOption` de l'API.
- [ ] Golden tests E-07 et timeout.
- [ ] Analytics `quiz_answer{correct:false, timeout}`.
- [ ] Tests widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné une mauvaise réponse, quand E-07 s'affiche, alors l'option choisie est rouge et la bonne réponse est verte.
- [ ] Étant donné un timeout, quand le feedback s'affiche, alors « Temps écoulé ! » et « 0 pt » sont visibles.
- [ ] Étant donné `reduceMotion`, quand la mauvaise réponse est affichée, alors aucune secousse n'est jouée.
- [ ] Étant donné le feedback, quand on touche « Question suivante », alors la question suivante se charge.

## 🧪 Tests à écrire

- [ ] Golden test : E-07.
- [ ] Golden test : timeout.
- [ ] Widget test : deux options colorées.
- [ ] Widget test : reduceMotion.

## ♿ Accessibilité et i18n

- Annonce « Mauvaise réponse. La bonne réponse était Ivan Rakitić ».

## 🔗 Dépendances

À réaliser après : `MOB-E-16` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
