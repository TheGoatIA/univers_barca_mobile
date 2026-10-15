> **MOB-E-23** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

E-11 : « Choisis tes thèmes. Aucun impact sur ton niveau ni ton classement. » ; catégories en puces (Joueurs, Histoire, Statistiques, Matchs, Trophées, La Masia), difficulté segmentée (Mon niveau / Facile / Difficile), curseur « Nombre de questions » (5 à 30, valeur 15), interrupteur « Afficher le chronomètre — 30 secondes par question » et « Lancer l'entraînement ».

## ✅ Objectif

Implémenter le formulaire de configuration et son envoi à `GET /quiz/practice`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-11` — Entraînement libre — configuration
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-11_entrainement-libre-configuration__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-11_entrainement-libre-configuration__phone_light.webp?raw=true' width='230' alt='E-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-11_entrainement-libre-configuration__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-11_entrainement-libre-configuration__phone_dark.webp?raw=true' width='230' alt='E-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-11_entrainement-libre-configuration__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-11_entrainement-libre-configuration__tablet_light.webp?raw=true' width='330' alt='E-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-11_entrainement-libre-configuration__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-11_entrainement-libre-configuration__tablet_dark.webp?raw=true' width='330' alt='E-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Entraînement libre » · « Choisis tes thèmes. Aucun impact sur ton niveau ni ton classement. » · « Catégories » · « Joueurs » · « Histoire » · « Statistiques » · « Matchs » · « Trophées » · « La Masia » · « Difficulté » · « Mon niveau » · « Facile » · « Difficile » · « Nombre de questions » · « Afficher le chronomètre » · « 30 secondes par question » · « Lancer l’entraînement »

**Composants repérés** : `btn`, `card`, `chip`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-JEUX-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-15%5D%22) · [MOB-E-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-24%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Au moins 1 catégorie obligatoire (défaut : toutes) ; bouton désactivé sinon.
- Curseur entier de 5 à 30, pas de 1, défaut 15 ; difficulté par défaut « Mon niveau ».
- Chronomètre désactivé par défaut ; mémoriser la dernière configuration localement.

## 🛠️ Tâches

- [ ] Créer `quiz_practice_config_page.dart` et `PracticeConfigCubit` (`categories:Set`, `difficulty`, `count`, `timerEnabled`).
- [ ] Créer `CategoryChip`, `DifficultySegmentedControl`, `QuestionCountSlider`.
- [ ] Valider (≥ 1 catégorie) et activer/désactiver « Lancer l'entraînement ».
- [ ] Sauvegarder la configuration dans les préférences locales.
- [ ] Appeler `GetPracticeSession(config)` puis `QuizStarted(practice)`.
- [ ] Gérer erreurs (pas assez de questions pour la combinaison : message dédié).
- [ ] Golden test E-11.
- [ ] Tests du cubit.

## ✔️ Critères d'acceptation

- [ ] Étant donné aucune catégorie, quand l'écran s'affiche, alors « Lancer l'entraînement » est désactivé.
- [ ] Étant donné le curseur à 15, quand « Lancer » est touché, alors la requête contient `count=15`.
- [ ] Étant donné la dernière config mémorisée, quand l'écran se rouvre, alors elle est restaurée.
- [ ] Étant donné « Facile », quand la session démarre, alors les questions sont de niveau inférieur à « Mon niveau ».

## 🧪 Tests à écrire

- [ ] bloc_test : validation catégories.
- [ ] Widget test : curseur 5-30.
- [ ] Golden test : E-11.
- [ ] Test : persistance de config.
- [ ] Widget test : lancement.

## ♿ Accessibilité et i18n

- Clés ARB : `practiceTitle`, `practiceSubtitle`, `categories`, `catPlayers`, `catHistory`, `catStats`, `catMatches`, `catTrophies`, `catMasia`, `difficulty`, `myLevel`, `easy`, `hard`, `questionCount`, `showTimer`, `timerSub`, `launchPractice`.
- Le curseur annonce « 15 questions ».

## 🔗 Dépendances

À réaliser après : `MOB-E-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.4
- CDC Global §2.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
