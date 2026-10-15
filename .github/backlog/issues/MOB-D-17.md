> **MOB-D-17** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Au 6e essai raté, l'écran « Pas cette fois » révèle « C'était Frenkie de Jong », ses caractéristiques (« Milieu · Pays-Bas · N°21 · ex-Ajax »), rassure sur la série (« Ta série de 12 jours est conservée ») et propose le partage et la fiche joueur.

## ✅ Objectif

Implémenter l'écran de défaite D-08, bienveillant et sans culpabilisation.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `D-08` — Défaite — révélation
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-08_defaite-revelation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-08_defaite-revelation__phone_light.webp?raw=true' width='230' alt='D-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-08_defaite-revelation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-08_defaite-revelation__phone_dark.webp?raw=true' width='230' alt='D-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-08_defaite-revelation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-08_defaite-revelation__tablet_light.webp?raw=true' width='330' alt='D-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-08_defaite-revelation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-08_defaite-revelation__tablet_dark.webp?raw=true' width='330' alt='D-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Résultat » · « Défi n°214 » · « Pas cette fois » · « C’était Frenkie de Jong » · « Milieu · Pays-Bas · N°21 · ex-Ajax » · « Ta série de 12 jours est conservée » · « Jouer suffit à la maintenir. » · « Partager mon résultat » · « Voir la fiche du joueur »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-01%5D%22) · [API-JEUX-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-07%5D%22) · [API-JEUX-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-09%5D%22) · [API-JEUX-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-19%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-D-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-06%5D%22) · [MOB-D-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-15%5D%22) · [MOB-D-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-25%5D%22) · [MOB-D-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-28%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

## 📐 Règles de gestion

- Titre « Pas cette fois », avatar sans coche (bordure neutre), couleur d'accent bleue (pas rouge agressif).
- Message de série : « Ta série de {n} jours est conservée. Jouer suffit à la maintenir. » (affiché seulement si `streak > 0`).
- « Voir la fiche du joueur » ouvre la fiche `players/:id` existante de la feature `players` ; « Partager mon résultat » ouvre D-09 (grille 6/6 en échec : `X/6`).

## 🛠️ Tâches

- [ ] Créer `GuessLossView` dans `guess_result_page.dart` (variante pilotée par `status == lost`).
- [ ] Récupérer `solution` depuis `AttemptResultModel` ; n'afficher le nom qu'à ce stade.
- [ ] Navigation `context.push('/players/${solution.id}')` vers la fiche existante.
- [ ] Réutiliser `ResultAvatar` et `ResultGrid` (6 rangées).
- [ ] Créer les textes avec pluriel ICU (`streakKept(count)`).
- [ ] Gérer le cas `solution` absente (erreur) : message neutre « Révélation indisponible » + bouton Réessayer.
- [ ] Analytics `guess_result_viewed{won:false}`.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné une défaite, quand D-08 s'affiche, alors le nom du joueur mystère et ses caractéristiques sont visibles.
- [ ] Étant donné une série de 12 jours, quand D-08 s'affiche, alors « Ta série de 12 jours est conservée » est visible.
- [ ] Étant donné « Voir la fiche du joueur », quand le bouton est touché, alors la fiche joueur correspondante s'ouvre.
- [ ] Étant donné une série de 0, quand D-08 s'affiche, alors la mention de série n'apparaît pas.

## 🧪 Tests à écrire

- [ ] Golden test : D-08 clair.
- [ ] Golden test : D-08 sombre.
- [ ] Widget test : navigation vers la fiche.
- [ ] Widget test : série à 0 masque le message.
- [ ] Widget test : solution absente.

## ♿ Accessibilité et i18n

- Clés ARB : `notThisTime`, `itWasPlayer`, `streakKept`, `viewPlayerCard`.

## 🔗 Dépendances

À réaliser après : `MOB-D-16` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.3
- CDC Global §2.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
