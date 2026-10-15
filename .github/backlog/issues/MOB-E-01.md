> **MOB-E-01** · Infrastructure · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Le quiz s'insère dans l'onglet « Jeux » : le hub E-01 est accessible depuis la carte « Quiz adaptatif » du hub des jeux (D-01) et le dashboard.

## ✅ Objectif

Créer `lib/features/quiz/` (domain/data/presentation) et déclarer toutes les routes go_router du quiz.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-01` — Hub du quiz
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__phone_light.webp?raw=true' width='230' alt='E-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__phone_dark.webp?raw=true' width='230' alt='E-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__tablet_light.webp?raw=true' width='330' alt='E-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-01_hub-du-quiz__tablet_dark.webp?raw=true' width='330' alt='E-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz » · « Ton niveau » · « Culé » · « 70 % de réussite sur les 10 dernières réponses · Passe au niveau » · « Socio » · « à 75 % » · « Quiz du jour » · « 10 questions · +150 pts max · 1 fois par jour » · « Jouer » · « Entraînement libre » · « Illimité · sans impact sur ton niveau » · « Classements » · « Amis, monde, cette semaine » · « Les 5 paliers » · « 1. Supporter occasionnel » · « 2. Culé » · « Actuel » · « 3. Socio » · « 4. Historien du Barça » · « 5. La Masia »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-12%5D%22) · [API-JEUX-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-14%5D%22) · [API-JEUX-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-18%5D%22) · [API-JEUX-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-21%5D%22) · [API-JEUX-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-32%5D%22) · [API-JEUX-34](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-34%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-E-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-08%5D%22) · [MOB-E-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-09%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

#### `E-02` — Quiz du jour — introduction
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__phone_light.webp?raw=true' width='230' alt='E-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__phone_dark.webp?raw=true' width='230' alt='E-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__tablet_light.webp?raw=true' width='330' alt='E-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-02_quiz-du-jour-introduction__tablet_dark.webp?raw=true' width='330' alt='E-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Prêt(e) pour le quiz ? » · « 10 questions calibrées sur ton niveau » · « Culé » · « . Tu as 30 secondes par question. » · « 10 questions » · « Histoire, joueurs, statistiques » · « 30 secondes » · « par question » · « Jusqu’à +150 points » · « bonus de rapidité » · « Commencer »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-13%5D%22) · [API-JEUX-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-14%5D%22) · [MOB-E-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-03%5D%22) · [MOB-E-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-05%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-10%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Routes : `/games/quiz` (hub), `/games/quiz/intro`, `/games/quiz/play`, `/games/quiz/result`, `/games/quiz/practice`, `/games/quiz/practice/play`, `/games/leaderboard`, `/games/leaderboard/invite`, `/games/leaderboard/join?code=`.
- Le déroulé d'une session (question, retour, résultat) est plein écran, sans barre de navigation, avec croix de sortie confirmée par une boîte de dialogue.
- Deep link d'invitation : `univers-barca://league/join?code=BARCA-4X7Q` (CDC Flutter §6.1) et lien web équivalent.

## 🛠️ Tâches

- [ ] Créer `lib/features/quiz/{domain/{entities,repositories,usecases},data/{datasources,models,repositories},presentation/{bloc,cubit,pages,widgets}}`.
- [ ] Ajouter les constantes dans `core/constants/route_constants.dart` (`quiz`, `quizIntro`, `quizPlay`, `quizResult`, `quizPractice`, `quizPracticePlay`, `leaderboard`, `leaderboardInvite`, `leaderboardJoin`).
- [ ] Déclarer les `GoRoute` dans `routes/app_router.dart` ; `parentNavigatorKey: rootNavigatorKey` pour les routes plein écran.
- [ ] Créer `QuizSessionArgs` / `QuizResultArgs` typés pour `extra`, avec repli de rechargement.
- [ ] Enregistrer les dépendances DI `@injectable` et régénérer `injection.config.dart`.
- [ ] Ajouter la configuration du schéma de lien d'invitation dans `AndroidManifest.xml` et `Info.plist` (Associated Domains).
- [ ] Créer un `README.md` de feature (ordre E-01 → E-02 → E-18 → E-03 … E-08).
- [ ] Ajouter pages vides branchées sur `AppLoading`.

## ✔️ Critères d'acceptation

- [ ] Étant donné l'app authentifiée, quand l'utilisateur ouvre `/games/quiz`, alors `QuizHubPage` s'affiche.
- [ ] Étant donné un lien d'invitation, quand l'app est ouverte, alors l'écran de saisie de code E-16 est pré-rempli.
- [ ] Étant donné une route plein écran, quand elle s'affiche, alors la barre de navigation est masquée.
- [ ] Étant donné `flutter analyze`, quand la feature est ajoutée, alors aucun avertissement n'est émis.

## 🧪 Tests à écrire

- [ ] Test de routage : `/games/quiz` rend la page hub.
- [ ] Test de routage : `/games/leaderboard/join?code=BARCA-4X7Q` pré-remplit le code.
- [ ] Test d'injection : `getIt<QuizSessionBloc>()`.
- [ ] Test : barre de navigation masquée sur `/games/quiz/play`.

## ♿ Accessibilité et i18n

- Clés ARB `quizTitle`, `leaderboardsTitle`.

## 📚 Références

- CDC Flutter §7.4
- CDC Flutter §6.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
