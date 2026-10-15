> **MOB-F-22** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Tableau 'Buts et passes par saison' toutes compétitions, avec la mention 'Données de démonstration' tant que les stats ne sont pas réelles.

## ✅ Objectif

Afficher le graphique et le tableau saison par saison.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `F-12` — Fiche joueur — statistiques
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-12_fiche-joueur-statistiques__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-12_fiche-joueur-statistiques__phone_light.webp?raw=true' width='230' alt='F-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-12_fiche-joueur-statistiques__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-12_fiche-joueur-statistiques__phone_dark.webp?raw=true' width='230' alt='F-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-12_fiche-joueur-statistiques__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-12_fiche-joueur-statistiques__tablet_light.webp?raw=true' width='330' alt='F-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-12_fiche-joueur-statistiques__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-12_fiche-joueur-statistiques__tablet_dark.webp?raw=true' width='330' alt='F-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Lamine Yamal » · « Aperçu » · « Statistiques » · « Biographie » · « Buts et passes par saison » · « Toutes compétitions » · « Saison » · « Matchs » · « Buts » · « Passes » · « Trophées » · « 26/27 » · « 25/26 » · « 24/25 » · « 23/24 » · « Données de démonstration »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-11%5D%22) · [API-FOOT-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-12%5D%22) · [MOB-F-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-20%5D%22) · [MOB-F-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-27%5D%22)

## 📐 Règles de gestion

- Titre 'Buts et passes par saison' + sous-titre 'Toutes compétitions'.
- Tableau : colonnes Saison, Matchs, Buts, Passes, Trophées ; lignes 26/27, 25/26, 24/25, 23/24 (ordre décroissant).
- Mini-graphique en barres groupées buts/passes par saison (CustomPainter, couleurs grenat/bleu).
- Bandeau 'Données de démonstration' si isDemoData=true.
- Ligne de total en pied de tableau ; défilement horizontal si > 5 colonnes sur petit écran.
- Aucune saison → 'Statistiques non disponibles'.

## 🛠️ Tâches

- [ ] Créer widgets/player_stats_tab.dart, season_stats_table.dart, goals_assists_chart.dart, demo_data_banner.dart.
- [ ] Implémenter formatage numérique localisé (NumberFormat).
- [ ] Gérer l'état vide et ARB (statsTitle, statsAllCompetitions, statsDemoData, colSeason, colMatches, colGoals, colAssists, colTrophies).
- [ ] Tests de rendu avec 20+ saisons (scroll).
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné 4 saisons alors 4 lignes sont affichées en ordre décroissant.
- [ ] Étant donné isDemoData=true alors le bandeau 'Données de démonstration' est visible.
- [ ] Étant donné aucune saison alors 'Statistiques non disponibles'.
- [ ] Étant donné 25 saisons alors le tableau défile sans débordement.

## 🧪 Tests à écrire

- [ ] Test widget SeasonStatsTable_ordre_desc
- [ ] Test widget DemoDataBanner_visibilite
- [ ] Test widget stats_vides
- [ ] Test widget chart_rendu
- [ ] Golden test stats clair

## ♿ Accessibilité et i18n

- Tableau exposé avec Semantics par ligne : 'Saison 25/26, 52 matchs, 18 buts, 12 passes, 2 trophées'.

## 🔗 Dépendances

À réaliser après : `MOB-F-21` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.5
- CDC Backend §3.2
- CDC Global §2.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
