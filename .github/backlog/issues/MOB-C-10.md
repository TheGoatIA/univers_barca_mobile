> **MOB-C-10** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

En C-04 la carte devient « EN DIRECT 67' » : score « 2 – 1 », stade « Camp Nou », bouton blanc « Suivre le live » et bouton cloche carré translucide (rappel/notifications du match).

## ✅ Objectif

Afficher l'état live de la carte avec mise à jour périodique du score et de la minute.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `C-04` — Dashboard — match en direct
_Module : Accueil dashboard_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-04_dashboard-match-en-direct__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-04_dashboard-match-en-direct__phone_light.webp?raw=true' width='230' alt='C-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-04_dashboard-match-en-direct__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-04_dashboard-match-en-direct__phone_dark.webp?raw=true' width='230' alt='C-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-04_dashboard-match-en-direct__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-04_dashboard-match-en-direct__tablet_light.webp?raw=true' width='330' alt='C-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-04_dashboard-match-en-direct__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-04_dashboard-match-en-direct__tablet_dark.webp?raw=true' width='330' alt='C-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Salut Boris 👋 » · « Liga · J11 » · « EN DIRECT 67' » · « Barça » · « 2 – 1 » · « Camp Nou » · « Real Madrid » · « Suivre le live » · « Résolu » · « Guess the Player » · « Trouvé en 3 essais » · « Niveau 2 » · « Quiz du jour » · « 10 questions · Culé » · « oct. » · « Aujourd'hui dans l'histoire · 2011 » · « Le Barça de Guardiola enchaîne un 4-0 mémorable en Ligue des champions. » · « Lecture 1 min » · « Lire l'anecdote » · « jours de suite » · « Record personnel : 27 jours » · « Ton XI Fantasy · J11 » · « 4-3-3 · 62 pts » · « Ferme dans 1 j 4 h » · « Modifier » · « Classement amis » · « sur 12 »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-15%5D%22) · [API-FOOT-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-22%5D%22) · [API-FOOT-27](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-27%5D%22) · [API-FOOT-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-29%5D%22) · [API-FOOT-52](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-52%5D%22) · [MOB-C-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-02%5D%22) · [MOB-C-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-03%5D%22) · [MOB-C-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-09%5D%22) · [MOB-C-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-12%5D%22) · [MOB-C-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-16%5D%22) · [MOB-C-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-21%5D%22) · [MOB-C-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-22%5D%22) · [MOB-C-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-25%5D%22) · [MOB-C-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-26%5D%22) · [MOB-C-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-27%5D%22)

## 📐 Règles de gestion

- Source live : API football via `GET /matches/live` (matchs en direct ou à venir sous 24 h, CDC Backend §3.2).
- Intervalle de polling 30 s (valeur à ajuster selon quotas de l'API football, voir groupe football-data).
- Mode hors-ligne : le dernier score est affiché avec mention « Hors-ligne ».

## 🛠️ Tâches

- [ ] Étendre `NextMatchCard` : si `status == live`, remplacer « Prochain match » par la pastille rouge `LiveBadge` (« • EN DIRECT 67' »).
- [ ] Remplacer « VS » par le score (Barlow Condensed 56 sp, « 2 – 1 ») et la date par le stade (« Camp Nou », caption).
- [ ] Remplacer la barre compte à rebours par `AppButton` blanc « Suivre le live » (icône pouls) + bouton icône cloche 48×48.
- [ ] Polling : `Timer.periodic(30 s)` appelant `GET /matches/live` pendant que l'écran est visible ; arrêt en arrière-plan.
- [ ] Animer le changement de score (scale 1.0→1.15→1.0, 250 ms) et clignotement doux du point rouge (1 s).
- [ ] Le bouton « Suivre le live » ouvre `/home/match/:id?live=1` ; si le module Historique/live n'est pas prêt, ouvre le détail C-11.
- [ ] Bouton cloche : active/désactive le rappel de fin de match (notifications locales/push, cf. CDC Global §2.12) avec toast.
- [ ] Fin du match : passer au score final « Terminé » puis recharger le prochain match.

## ✔️ Critères d'acceptation

- [ ] Étant donné un match live à la 67e, quand la carte s'affiche, alors « EN DIRECT 67' » et « 2 – 1 » sont visibles.
- [ ] Étant donné un nouveau but détecté au polling, quand le score change, alors l'animation de score est jouée une fois.
- [ ] Étant donné l'app en arrière-plan, quand 5 minutes passent, alors aucun appel de polling n'est émis.
- [ ] Étant donné le match terminé, quand `status == finished`, alors la carte affiche le résultat final puis le prochain match après refresh.

## 🧪 Tests à écrire

- [ ] Test de widget : rendu live (golden clair/sombre).
- [ ] Test de widget : changement de score déclenche l'animation.
- [ ] Test unitaire : polling arrêté au `paused`.
- [ ] Test de widget : tap « Suivre le live » navigue.
- [ ] Test de bloc : transition scheduled → live → finished.

## ♿ Accessibilité et i18n

- Semantics : « Match en direct, 67e minute, Barça 2, Real Madrid 1 » ; ARB `liveBadge`, `followLive`, `matchFinished`.

## 🔗 Dépendances

À réaliser après : `MOB-C-08` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.3
- CDC Flutter §7.2
- CDC Backend §3.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
