> **MOB-D-20** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Si le défi du jour est déjà joué, l'utilisateur voit « Reviens demain ! », un compte à rebours « 06:41 — avant le prochain », « Tu as déjà relevé le défi n°214 aujourd'hui. Un nouveau joueur mystère arrive à minuit. » et deux actions.

## ✅ Objectif

Empêcher le rejeu et orienter vers le résultat ou le quiz du jour.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `D-10` — Déjà joué — prochain défi
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-10_deja-joue-prochain-defi__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-10_deja-joue-prochain-defi__phone_light.webp?raw=true' width='230' alt='D-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-10_deja-joue-prochain-defi__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-10_deja-joue-prochain-defi__phone_dark.webp?raw=true' width='230' alt='D-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-10_deja-joue-prochain-defi__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-10_deja-joue-prochain-defi__tablet_light.webp?raw=true' width='330' alt='D-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-10_deja-joue-prochain-defi__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-10_deja-joue-prochain-defi__tablet_dark.webp?raw=true' width='330' alt='D-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Guess the Player » · « avant le prochain » · « Reviens demain ! » · « Tu as déjà relevé le défi n°214 aujourd'hui. Un nouveau joueur mystère arrive à minuit. » · « Revoir mon résultat » · « Jouer au quiz du jour »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-JEUX-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-01%5D%22) · [API-JEUX-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-02%5D%22) · [API-JEUX-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-05%5D%22) · [API-JEUX-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-18%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-D-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-04%5D%22) · [MOB-D-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-21%5D%22) · [MOB-D-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-28%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

## 📐 Règles de gestion

- Le serveur est la source de vérité : `status ∈ {won, lost}` renvoyé par `/today` → écran D-10 (jamais seulement un drapeau local).
- Compte à rebours HH:MM (secondes masquées au-delà de 1 h, MM:SS sous 1 h) basé sur `nextChallengeAt`.
- Actions : « Revoir mon résultat » → D-07 ou D-08 selon le statut, « Jouer au quiz du jour » → E-02/E-17.

## 🛠️ Tâches

- [ ] Créer `presentation/pages/guess_already_played_page.dart`.
- [ ] Réutiliser `CountdownTicker` du hub (issue `fn-games-hub-data`).
- [ ] À `remaining == 0`, recharger `/today` et proposer « Nouveau défi disponible » avec bouton « Jouer ».
- [ ] Rediriger automatiquement vers D-10 depuis `GuessPlayPage` si `state.status == alreadyPlayed`.
- [ ] Gérer le cas hors-ligne avec le cache du résultat.
- [ ] Analytics `guess_already_played_viewed`.
- [ ] Golden tests clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné un défi terminé, quand l'utilisateur ouvre `/games/guess`, alors D-10 s'affiche.
- [ ] Étant donné `remaining == 0`, quand le tick arrive, alors le nouveau défi est proposé sans redémarrer l'app.
- [ ] Étant donné « Revoir mon résultat », quand il est touché, alors D-07 (victoire) ou D-08 (défaite) s'affiche.
- [ ] Étant donné le mode hors-ligne, quand D-10 s'affiche, alors le compte à rebours fonctionne depuis le cache.

## 🧪 Tests à écrire

- [ ] Widget test : redirection vers D-10.
- [ ] Widget test : compte à rebours MM:SS.
- [ ] Widget test : bascule à minuit.
- [ ] Golden test : D-10.

## ♿ Accessibilité et i18n

- Clés ARB : `comeBackTomorrow`, `alreadyPlayedBody` (placeholder n°), `beforeNext`, `reviewMyResult`, `playDailyQuiz`.
- Le compte à rebours est annoncé toutes les minutes seulement (pas chaque seconde).

## 🔗 Dépendances

À réaliser après : `MOB-D-07` · `MOB-D-16` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.4
- CDC Global §2.15

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
