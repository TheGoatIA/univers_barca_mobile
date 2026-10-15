> **MOB-E-15** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

E-05 (00:04, question 7/10) signale l'urgence : minuteur en rouge, pulsation, vibration légère.

## ✅ Objectif

Implémenter le retour visuel/haptique du seuil critique (≤ 5 s) et l'expiration.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-05` — Question — temps presque écoulé
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__phone_light.webp?raw=true' width='230' alt='E-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__phone_dark.webp?raw=true' width='230' alt='E-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__tablet_light.webp?raw=true' width='330' alt='E-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-05_question-temps-presque-ecoule__tablet_dark.webp?raw=true' width='330' alt='E-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Niveau 2 · Culé » · « 7/10 » · « Histoire · Question 7 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Valider »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-16%5D%22) · [MOB-E-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-07%5D%22) · [MOB-E-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-32%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- À ≤ 5 s : minuteur et icône en couleur `error`, pulsation 1 Hz ; à 0 : bascule vers le feedback « Temps écoulé » (0 pt).
- Vibration courte à 5 s et à 0 s (désactivable via réglages système).
- Respect de « Réduire les animations » : couleur seule, pas de pulsation.

## 🛠️ Tâches

- [ ] Ajouter `isCritical` à `TimerBadge` (couleur + `ScaleTransition`).
- [ ] Brancher `QuizTimerCubit.isCritical` et `HapticFeedback.vibrate`.
- [ ] Émettre `QuizTimeExpired` à 0.
- [ ] Afficher le feedback timeout (voir issue E-07).
- [ ] Annoncer `SemanticsService.announce('5 secondes restantes')` une seule fois.
- [ ] Golden test E-05.
- [ ] Tests fake_async.
- [ ] Documenter les seuils dans la feature.

## ✔️ Critères d'acceptation

- [ ] Étant donné 4 s restantes, quand E-05 s'affiche, alors le minuteur est rouge.
- [ ] Étant donné 0 s, quand le tick arrive, alors la question est soumise sans réponse.
- [ ] Étant donné `reduceMotion`, quand le seuil est atteint, alors la pulsation est absente.
- [ ] Étant donné le lecteur d'écran, quand 5 s restent, alors l'annonce est faite une fois.

## 🧪 Tests à écrire

- [ ] Widget test : couleur critique.
- [ ] Test fake_async : expiration.
- [ ] Golden test : E-05.
- [ ] Widget test : reduceMotion.

## ♿ Accessibilité et i18n

- Clé ARB `secondsRemaining` (pluriel ICU).

## 🔗 Dépendances

À réaliser après : `MOB-E-07` · `MOB-E-13` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
