> **MOB-G-10** · Écran · Priorité **P1** · Taille **L** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Deux visualisations : radar 6 axes superposant les profils, et courbe des buts par saison.

## ✅ Objectif

Implémenter les graphiques G-05 en CustomPainter (ou fl_chart) accessibles.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `G-05` — Résultat — profil radar
_Module : Comparateur GOAT_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-05_resultat-profil-radar__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-05_resultat-profil-radar__phone_light.webp?raw=true' width='230' alt='G-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-05_resultat-profil-radar__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-05_resultat-profil-radar__phone_dark.webp?raw=true' width='230' alt='G-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-05_resultat-profil-radar__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-05_resultat-profil-radar__tablet_light.webp?raw=true' width='330' alt='G-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-05_resultat-profil-radar__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-05_resultat-profil-radar__tablet_dark.webp?raw=true' width='330' alt='G-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Messi vs Xavi » · « Messi » · « Xavi » · « Profil de jeu » · « Évolution des buts par saison »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-GOAT-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-02%5D%22) · [API-GOAT-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-03%5D%22) · [API-GOAT-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-06%5D%22) · [API-GOAT-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-07%5D%22) · [API-GOAT-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-14%5D%22) · [API-GOAT-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-GOAT-19%5D%22) · [MOB-G-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-01%5D%22) · [MOB-G-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-04%5D%22) · [MOB-G-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-14%5D%22) · [MOB-G-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-16%5D%22) · [MOB-G-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-17%5D%22)

## 📐 Règles de gestion

- Radar : axes Dribble, Vitesse, Vision, Passe, Finition, Défense ; 3-4 anneaux de repère ; polygones A (grenat, remplissage 25 % d'opacité) et B (bleu) ; légende 'Messi / Xavi'.
- Courbe 'Évolution des buts par saison' : une série par joueur, aire sous la courbe A, point final marqué ; axe X saisons, axe Y buts (graduations auto).
- Les saisons manquantes sont interpolées par rupture de ligne (pas de zéro fictif).
- Animation de tracé 800 ms ; réduction d'animations → rendu final immédiat.
- Données radar absentes → carte masquée ; goalsBySeason vide → message 'Évolution non disponible'.
- Le même widget radar est réutilisé par la fiche joueur (F-11) en mode un seul joueur.

## 🛠️ Tâches

- [ ] Créer widgets/radar_chart.dart (CustomPainter, paramètres axes/séries/couleurs depuis le thème).
- [ ] Créer widgets/goals_line_chart.dart (CustomPainter ou fl_chart LineChart).
- [ ] Fournir une alternative textuelle (tableau) accessible.
- [ ] Optimiser avec RepaintBoundary et shouldRepaint.
- [ ] Brancher dans goat_result_page.dart (section scrollable sous les stats ou onglet selon maquette).
- [ ] ARB goatRadarTitle, axes, goatGoalsEvolutionTitle.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné 2 joueurs alors deux polygones et la légende sont dessinés.
- [ ] Étant donné une valeur 100 alors le sommet touche l'anneau extérieur.
- [ ] Étant donné goalsBySeason vide alors message de repli.
- [ ] Étant donné reduce motion alors pas d'animation de tracé.

## 🧪 Tests à écrire

- [ ] Test widget RadarChart_deux_series
- [ ] Test unitaire calcul_coordonnees_radar
- [ ] Test widget courbe_saisons_manquantes
- [ ] Test widget repli_donnees_absentes
- [ ] Golden test G-05 clair/sombre

## ♿ Accessibilité et i18n

- Semantics du radar : 'Profil de jeu : Messi dribble 95, vitesse 85…, Xavi …'.
- Tableau alternatif pour lecteurs d'écran.
- Couleurs distinguables aussi par motif/épaisseur.

## 🔗 Dépendances

À réaliser après : `MOB-G-09` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.6
- CDC Flutter §7.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
