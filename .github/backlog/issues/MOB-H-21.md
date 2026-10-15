> **MOB-H-21** · Écran · Priorité **P1** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

En touchant un joueur avec ses points, une feuille décompose le barème appliqué (buts, passes, clean sheet, minutes, cartons, buts encaissés).

## ✅ Objectif

Rendre le calcul transparent joueur par joueur.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-11` — Détail des points d’un joueur
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-11_detail-des-points-d-un-joueur__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-11_detail-des-points-d-un-joueur__phone_light.webp?raw=true' width='230' alt='H-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-11_detail-des-points-d-un-joueur__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-11_detail-des-points-d-un-joueur__phone_dark.webp?raw=true' width='230' alt='H-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-11_detail-des-points-d-un-joueur__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-11_detail-des-points-d-un-joueur__tablet_light.webp?raw=true' width='330' alt='H-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-11_detail-des-points-d-un-joueur__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-11_detail-des-points-d-un-joueur__tablet_dark.webp?raw=true' width='330' alt='H-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Fermeture des compositions dans » · « 1 j 04 h 12 min » · « J11 » · « ter Stegen » · « 6 pts » · « Koundé » · « 8 pts » · « Cubarsí » · « Araújo » · « 2 pts » · « Balde » · « 5 pts » · « De Jong » · « 7 pts » · « Pedri » · « 9 pts » · « Gavi » · « 3 pts » · « Yamal » · « 14 pts » · « Lewandowski » · « 11 pts » · « Raphinha » · « -1 pts » · « 11/11 » · « Équipe complète »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-FANT-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-08%5D%22) · [API-FANT-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-09%5D%22) · [API-FANT-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-10%5D%22) · [API-FANT-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-13%5D%22)

## 📐 Règles de gestion

- Chaque ligne = événement x occurrences x points du barème (ex. But milieu +6, Passe décisive +3, Titularisation ≥ 60 min +2).
- Total de la feuille = points du joueur ; capitaine : ligne 'Capitaine x2'.
- Les points proviennent des scoring_rules (configurables) renvoyées avec le détail, pas d'un barème figé dans l'app.
- Événements sans occurrence masqués.

## 🔄 Comportement et états

- Chargement squelette ; erreur -> retry.

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/presentation/widgets/player_points_sheet.dart.
- [ ] Entité PlayerPointsBreakdown + endpoint détail (champ breakdown de la réponse).
- [ ] Use case GetPlayerBreakdown.
- [ ] Mise en forme des lignes (+/-).
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné Yamal 14 pts alors la somme des lignes vaut 14 (capitaine inclus selon le serveur).
- [ ] Étant donné aucun carton alors aucune ligne carton.
- [ ] Étant donné un score négatif alors les lignes négatives sont en rouge.
- [ ] Étant donné la feuille alors elle se ferme par swipe.

## 🧪 Tests à écrire

- [ ] somme des lignes égale total
- [ ] lignes masquées si 0
- [ ] capitaine x2
- [ ] retry sur erreur

## ♿ Accessibilité et i18n

- Tableau accessible avec lignes lues 'But, plus 6 points'

## 🔗 Dépendances

À réaliser après : `MOB-H-20` · `MOB-H-24` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §3.12.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
