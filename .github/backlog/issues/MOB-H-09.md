> **MOB-H-09** · Écran · Priorité **P0** · Taille **L** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Première vue de l'onglet Fantasy : grande carte dégradée grenat 'COMPOSE TON XI', bandeau de compte à rebours, carte 'Ma saison' (774 points, 3e entre amis, 18 432e monde) et histogramme 'DERNIÈRES JOURNÉES'.

## ✅ Objectif

Implémenter l'écran d'accueil fidèle à la maquette, alimenté par FantasyTeamBloc et le résumé de saison.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-01` — Accueil Fantasy
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-01_accueil-fantasy__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-01_accueil-fantasy__phone_light.webp?raw=true' width='230' alt='H-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-01_accueil-fantasy__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-01_accueil-fantasy__phone_dark.webp?raw=true' width='230' alt='H-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-01_accueil-fantasy__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-01_accueil-fantasy__tablet_light.webp?raw=true' width='330' alt='H-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-01_accueil-fantasy__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-01_accueil-fantasy__tablet_dark.webp?raw=true' width='330' alt='H-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Compose ton XI » · « Choisis tes 11 joueurs avant le coup d'envoi. Leurs performances réelles font tes points. » · « Modifier mon équipe » · « Fermeture des compositions dans » · « 1 j 04 h 12 min » · « J11 » · « Ma saison » · « Détails » · « Points » · « 3e » · « Amis » · « 18 432e » · « Monde » · « Dernières journées »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-H-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-03%5D%22) · [MOB-H-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-07%5D%22) · [MOB-H-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-08%5D%22) · [MOB-H-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-30%5D%22) · [MOB-H-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-33%5D%22) · [MOB-H-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-34%5D%22)

## 📐 Règles de gestion

- Carte héro : badge 'Journée 11', titre 'COMPOSE TON XI', texte 'Choisis tes 11 joueurs avant le coup d'envoi. Leurs performances réelles font tes points.', bouton blanc 'Modifier mon équipe' (icône maillot) -> /fantasy/team.
- Ma saison : 3 métriques Points / Amis (rang en 'e' ordinal : 3e) / Monde (18 432e) ; lien 'Détails' -> Classement.
- Dernières journées : histogramme des 5 dernières journées, barre de la journée courante en bleu, les autres en grenat ; tap sur barre -> H-10 de cette journée.
- Nombres formatés selon la locale (774, 18 432) ; ordinal localisé ('3e', '3rd', '3.º').

## 🔄 Comportement et états

- Chargement : squelette pour carte héro, bandeau et métriques ; erreur : AppErrorView avec Réessayer ; hors-ligne : cache + bandeau.
- Pull-to-refresh recharge équipe, saison et historique.
- Si équipe déjà complète, le bouton devient 'Modifier mon équipe' ; si aucune équipe -> écran H-16 ; si module désactivé -> H-17.

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/presentation/pages/fantasy_home_view.dart.
- [ ] Créer widgets hero_compose_card.dart, season_summary_card.dart, gameweek_history_chart.dart (CustomPainter ou fl_chart BarChart).
- [ ] Créer l'entité FantasySeasonSummary (points, friendsRank, worldRank, history[5]).
- [ ] Brancher le use case GetSeasonSummary (dérivé de /fantasy/leaderboard me + scores).
- [ ] Ajouter le dégradé et motif de bandes via les tokens de core/theme.
- [ ] Ajouter RefreshIndicator.
- [ ] Clés ARB : fantasyComposeTitle, fantasyComposeSubtitle, fantasyEditTeam, fantasySeason, fantasyDetails, fantasyLastGameweeks.
- [ ] Test golden clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné une équipe existante quand l'écran charge alors la carte héro et les trois métriques s'affichent.
- [ ] Étant donné un tap sur 'Modifier mon équipe' alors la vue Mon équipe s'ouvre.
- [ ] Étant donné un tap sur la barre J9 alors le résultat de la journée 9 s'ouvre.
- [ ] Étant donné le réseau coupé alors les données en cache s'affichent avec un indicateur hors-ligne.

## 🧪 Tests à écrire

- [ ] widget: textes de la carte héro
- [ ] widget: rang ordinal 3e
- [ ] widget: tap barre ouvre résultat journée
- [ ] widget: squelette pendant chargement
- [ ] golden clair
- [ ] golden sombre

## ♿ Accessibilité et i18n

- Histogramme avec Semantics 'Journée 9 : 82 points'
- Contraste texte blanc sur dégradé >= 4.5:1
- Textes jusqu'à 200 % sans troncature

## 🔗 Dépendances

À réaliser après : `MOB-H-07` · `MOB-H-08` · `MOB-H-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.6
- CDC Global §2.7

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
