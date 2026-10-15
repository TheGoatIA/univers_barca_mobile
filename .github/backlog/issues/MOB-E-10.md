> **MOB-E-10** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Avant de commencer, E-02 résume les règles : « Prêt(e) pour le quiz ? 10 questions calibrées sur ton niveau Culé. Tu as 30 secondes par question. », trois cartes (10 questions — Histoire, joueurs, statistiques ; 30 secondes par question ; Jusqu'à +150 points bonus de rapidité) et « Commencer ».

## ✅ Objectif

Implémenter E-02 et lancer la session au tap sur « Commencer ».

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-02` — Quiz du jour — introduction
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__phone_light.webp?raw=true' width='230' alt='E-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__phone_dark.webp?raw=true' width='230' alt='E-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__tablet_light.webp?raw=true' width='330' alt='E-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__tablet_dark.webp?raw=true' width='330' alt='E-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Prêt(e) pour le quiz ? » · « 10 questions calibrées sur ton niveau » · « Culé » · « . Tu as 30 secondes par question. » · « 10 questions » · « Histoire, joueurs, statistiques » · « 30 secondes » · « par question » · « Jusqu’à +150 points » · « bonus de rapidité » · « Commencer »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-13%5D%22) · [API-JEUX-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-14%5D%22) · [MOB-E-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-01%5D%22) · [MOB-E-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-03%5D%22) · [MOB-E-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-05%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Le niveau affiché est celui du serveur (`levelAtStart`).
- « Commencer » démarre le chronomètre de la première question seulement après l'affichage de celle-ci (pas d'injustice liée au chargement).
- Un quiz du jour déjà joué ne peut pas être relancé : redirection vers E-17.

## 🛠️ Tâches

- [ ] Créer `presentation/pages/quiz_intro_page.dart`.
- [ ] Créer `InfoRowCard(icon,title,subtitle)` ×3.
- [ ] Appeler `QuizStarted(daily)` à l'ouverture pour précharger les questions (E-18 si lent).
- [ ] Bouton `AppButton` « Commencer » → `QuizPlayPage`.
- [ ] Croix de fermeture → hub.
- [ ] Gérer erreur réseau avec `AppErrorView` + Réessayer.
- [ ] Analytics `quiz_intro_viewed`.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné le niveau Culé, quand E-02 s'affiche, alors le texte indique « Culé » et « 30 secondes par question ».
- [ ] Étant donné « Commencer », quand il est touché, alors la question 1/10 s'affiche avec 00:30.
- [ ] Étant donné un quiz déjà joué, quand E-02 est demandé, alors E-17 s'affiche.
- [ ] Étant donné une erreur réseau, quand E-02 s'ouvre, alors un état d'erreur avec « Réessayer » est visible.

## 🧪 Tests à écrire

- [ ] Golden test : E-02 clair/sombre.
- [ ] Widget test : démarrage.
- [ ] Widget test : redirection E-17.
- [ ] Widget test : erreur réseau.

## ♿ Accessibilité et i18n

- Clés ARB : `quizReadyTitle`, `quizReadyBody` (placeholder niveau), `tenQuestions`, `tenQuestionsSub`, `thirtySeconds`, `perQuestion`, `upTo150`, `speedBonus`, `start`.

## 🔗 Dépendances

À réaliser après : `MOB-E-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.4
- CDC Global §2.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
