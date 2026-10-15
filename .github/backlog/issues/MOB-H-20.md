> **MOB-H-20** · Écran · Priorité **P0** · Taille **L** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Après le coup de sifflet final : bandeau 'Journée 10 terminée · Points calculés après le coup de sifflet final' et points par joueur (ter Stegen 6, Koundé 8, Araújo 2, Balde 5, De Jong 7, Pedri 9, Gavi 3, Yamal 14, Lewandowski 11, Raphinha -1).

## ✅ Objectif

Afficher le score de la journée et les points individuels, capitaine doublé.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-10` — Résultat de la journée
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-10_resultat-de-la-journee__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-10_resultat-de-la-journee__phone_light.webp?raw=true' width='230' alt='H-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-10_resultat-de-la-journee__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-10_resultat-de-la-journee__phone_dark.webp?raw=true' width='230' alt='H-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-10_resultat-de-la-journee__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-10_resultat-de-la-journee__tablet_light.webp?raw=true' width='330' alt='H-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-10_resultat-de-la-journee__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-10_resultat-de-la-journee__tablet_dark.webp?raw=true' width='330' alt='H-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Journée 10 terminée » · « Points calculés après le coup de sifflet final » · « ter Stegen » · « 6 pts » · « Koundé » · « 8 pts » · « Cubarsí » · « Araújo » · « 2 pts » · « Balde » · « 5 pts » · « De Jong » · « 7 pts » · « Pedri » · « 9 pts » · « Gavi » · « 3 pts » · « Yamal » · « 14 pts » · « Lewandowski » · « 11 pts » · « Raphinha » · « -1 pts » · « 11/11 » · « Équipe complète » · « Formation »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-H-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-01%5D%22) · [MOB-H-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-31%5D%22) · [MOB-H-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-34%5D%22)

## 📐 Règles de gestion

- Points calculés par le job compute-fantasy-scores (déclenché à la fin du match) à partir des statistiques réelles ; le mobile n'invente aucun calcul.
- Total journée = somme des points, capitaine x2 ; valeur affichée par le serveur (fantasy_gameweek_scores.points).
- Couleurs : points positifs vert, négatifs rouge (Raphinha -1 pts).
- Tap sur un joueur -> détail (H-11).

## 🔄 Comportement et états

- Tant que computed_at est absent : bandeau 'En attente du calcul' sans points.
- Sélecteur de journée précédente/suivante.

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/presentation/pages/gameweek_result_view.dart.
- [ ] Créer GameweekResultBanner et PlayerPointsBadge.
- [ ] Ajouter GetGameweekScore use case.
- [ ] Navigation précédente/suivante.
- [ ] Clés ARB.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné une journée scorée alors chaque joueur affiche ses points.
- [ ] Étant donné un score négatif alors il est affiché en rouge avec le signe moins.
- [ ] Étant donné computed_at absent alors l'attente est affichée.
- [ ] Étant donné le capitaine alors ses points sont doublés dans le total.

## 🧪 Tests à écrire

- [ ] widget: points négatifs en rouge
- [ ] widget: capitaine x2
- [ ] widget: état en attente
- [ ] widget: navigation journée
- [ ] golden

## ♿ Accessibilité et i18n

- Annonce 'Yamal, 14 points'
- Ne pas coder l'information uniquement par la couleur (signe + / -)

## 🔗 Dépendances

À réaliser après : `MOB-H-10` · `MOB-H-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.6
- CDC Backend §3.12.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
