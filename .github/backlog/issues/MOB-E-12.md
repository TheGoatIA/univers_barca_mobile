> **MOB-E-12** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Si le quiz du jour est terminé, E-17 indique « Quiz du jour terminé — Tu as fait 8/10 aujourd'hui. Le prochain quiz arrive demain — en attendant, entraîne-toi librement ! » avec « Entraînement libre » et « Voir mon résultat ».

## ✅ Objectif

Empêcher le rejeu et rediriger.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-17` — Quiz déjà joué
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-17_quiz-deja-joue__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-17_quiz-deja-joue__phone_light.webp?raw=true' width='230' alt='E-17 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-17_quiz-deja-joue__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-17_quiz-deja-joue__phone_dark.webp?raw=true' width='230' alt='E-17 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-17_quiz-deja-joue__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-17_quiz-deja-joue__tablet_light.webp?raw=true' width='330' alt='E-17 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-17_quiz-deja-joue__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-17_quiz-deja-joue__tablet_dark.webp?raw=true' width='330' alt='E-17 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Quiz du jour terminé » · « Tu as fait 8/10 aujourd’hui. Le prochain quiz arrive demain — en attendant, entraîne-toi librement ! » · « Entraînement libre » · « Voir mon résultat »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-JEUX-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-14%5D%22) · [API-JEUX-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-17%5D%22) · [API-JEUX-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-18%5D%22) · [MOB-E-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-04%5D%22) · [MOB-E-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-30%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Source de vérité : 409 `QUIZ_ALREADY_PLAYED` ou statut du hub ; score affiché issu du dernier résumé de session.
- « Voir mon résultat » ouvre E-08 en lecture seule (sans reverser de points).
- Aucune session du jour ne peut être relancée avant le prochain quiz (minuit, fuseau serveur).

## 🛠️ Tâches

- [ ] Créer `presentation/pages/quiz_already_played_page.dart`.
- [ ] Récupérer le résumé via `GetSessionSummary(sessionId)` (cache Drift).
- [ ] Boutons : « Entraînement libre » → E-11, « Voir mon résultat » → E-08.
- [ ] Rediriger depuis E-02 / hub si statut terminé.
- [ ] Gérer hors-ligne avec résumé en cache.
- [ ] Analytics `quiz_already_played_viewed`.
- [ ] Golden test.
- [ ] Test de redirection.

## ✔️ Critères d'acceptation

- [ ] Étant donné un quiz terminé (8/10), quand E-17 s'affiche, alors « Tu as fait 8/10 aujourd'hui » est visible.
- [ ] Étant donné « Voir mon résultat », quand il est touché, alors E-08 s'affiche sans modifier les points.
- [ ] Étant donné « Entraînement libre », quand il est touché, alors E-11 s'ouvre.
- [ ] Étant donné le hors-ligne, quand E-17 s'affiche, alors le score vient du cache.

## 🧪 Tests à écrire

- [ ] Widget test : score affiché.
- [ ] Widget test : redirection depuis E-02.
- [ ] Golden test : E-17.
- [ ] Widget test : actions.

## ♿ Accessibilité et i18n

- Clés ARB : `dailyQuizDone`, `dailyQuizDoneBody` (placeholders), `viewMyResult`.

## 🔗 Dépendances

À réaliser après : `MOB-E-09` · `MOB-E-08` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.4
- CDC Global §2.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
