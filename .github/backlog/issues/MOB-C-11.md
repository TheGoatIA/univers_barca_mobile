> **MOB-C-11** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

En C-09 aucun match n'est connu : la carte affiche l'écusson FCB, « Pas de match programmé », « Le prochain calendrier sera bientôt publié. Profite-en pour jouer au quiz du jour ! » et un bouton « Voir le calendrier ».

## ✅ Objectif

Gérer l'état vide de la carte prochain match, comme exigé par le critère d'acceptation « état alternatif informatif » (CDC Global §2.15).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `C-09` — Dashboard — aucun match programmé
_Module : Accueil dashboard_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-09_dashboard-aucun-match-programme__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-09_dashboard-aucun-match-programme__phone_light.webp?raw=true' width='230' alt='C-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-09_dashboard-aucun-match-programme__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-09_dashboard-aucun-match-programme__phone_dark.webp?raw=true' width='230' alt='C-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-09_dashboard-aucun-match-programme__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-09_dashboard-aucun-match-programme__tablet_light.webp?raw=true' width='330' alt='C-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-09_dashboard-aucun-match-programme__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-09_dashboard-aucun-match-programme__tablet_dark.webp?raw=true' width='330' alt='C-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Salut Boris 👋 » · « Pas de match programmé » · « Le prochain calendrier sera bientôt publié. Profite-en pour jouer au quiz du jour ! » · « Voir le calendrier » · « À jouer » · « Guess the Player » · « 6 essais · 1 joueur mystère » · « Niveau 2 » · « Quiz du jour » · « 10 questions · Culé » · « oct. » · « Aujourd'hui dans l'histoire · 2011 » · « Le Barça de Guardiola enchaîne un 4-0 mémorable en Ligue des champions. » · « Lecture 1 min » · « Lire l'anecdote » · « jours de suite » · « Record personnel : 27 jours » · « Ton XI Fantasy · J11 » · « 4-3-3 · 62 pts » · « Ferme dans 1 j 4 h » · « Modifier » · « Classement amis » · « sur 12 »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-14%5D%22) · [MOB-C-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-02%5D%22) · [MOB-C-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-03%5D%22) · [MOB-C-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-16%5D%22) · [MOB-C-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-25%5D%22) · [MOB-C-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-26%5D%22) · [MOB-C-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-27%5D%22)

## 📐 Règles de gestion

- Pas de match programmé ≠ erreur (CDC Global §2.15).
- Texte d'invitation vers le quiz du jour, issu de la maquette.
- Le bouton « Voir le calendrier » mène au module Calendrier.

## 🛠️ Tâches

- [ ] Créer `NextMatchEmptyCard` avec fond `surface` bordure subtile (pas de dégradé), écusson FCB, titre h2 et texte body.
- [ ] Bouton secondaire `AppButton` « Voir le calendrier » → route `/calendar` (module calendrier ; désactivé avec toast « Bientôt disponible » si la route n'existe pas encore).
- [ ] Brancher la condition : `NextMatchState.empty` quand l'API renvoie 0 match programmé (jamais sur erreur).
- [ ] Rendre la carte quiz du jour mise en avant (aucun changement de style) mais ajouter un lien interne vers le quiz depuis le texte.
- [ ] Gérer le cas « saison terminée » : même carte, aucune date promise.
- [ ] Ajouter les clés ARB et golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné une réponse sans match, quand le dashboard charge, alors `NextMatchEmptyCard` est affiché et pas une erreur.
- [ ] Étant donné un tap sur « Voir le calendrier », quand la route existe, alors le calendrier s'ouvre.
- [ ] Étant donné une erreur réseau, quand la carte ne peut charger, alors c'est la carte d'erreur (pas l'état vide) qui s'affiche.
- [ ] Étant donné un match programmé publié plus tard, quand l'utilisateur tire pour rafraîchir, alors la carte héro remplace la carte vide.

## 🧪 Tests à écrire

- [ ] Test de widget : textes exacts de C-09.
- [ ] Golden clair/sombre.
- [ ] Test de bloc : liste vide → `empty`.
- [ ] Test de bloc : erreur → `failure` ≠ `empty`.
- [ ] Test de widget : tap bouton.

## ♿ Accessibilité et i18n

- ARB : `nextMatchEmptyTitle`, `nextMatchEmptyBody`, `seeCalendar`.

## 🔗 Dépendances

À réaliser après : `MOB-C-08` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.3
- CDC Flutter §7.2
- CDC Global §2.15

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
