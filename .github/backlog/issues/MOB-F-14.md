> **MOB-F-14** · Écran · Priorité **P0** · Taille **L** · Phase 1 — MVP

## 🎯 Contexte

Le détail d'un match s'ouvre sur un bandeau grenat/bleu avec écussons, score et lieu, puis l'onglet Résumé (buteurs et barres de statistiques comparées).

## ✅ Objectif

Implémenter l'en-tête persistant, le sélecteur d'onglets et le contenu Résumé de F-07.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `F-07` — Match historique — résumé
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-07_match-historique-resume__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-07_match-historique-resume__phone_light.webp?raw=true' width='230' alt='F-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-07_match-historique-resume__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-07_match-historique-resume__phone_dark.webp?raw=true' width='230' alt='F-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-07_match-historique-resume__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-07_match-historique-resume__tablet_light.webp?raw=true' width='330' alt='F-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-07_match-historique-resume__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-07_match-historique-resume__tablet_dark.webp?raw=true' width='330' alt='F-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Match historique » · « Ligue des champions · Finale » · « Barça » · « 3 – 1 » · « Mi-temps 1-1 » · « Man. United » · « 28 mai 2011 · » · « Wembley, Londres » · « Résumé » · « Compos » · « Événements » · « Contexte » · « Buteurs » · « 27' » · « Pedro » · « Barça · passe de Xavi » · « 34' » · « Rooney » · « 54' » · « Messi » · « 69' » · « Villa » · « Barça · passe de Messi » · « Statistiques du match » · « 63% » · « Possession » · « 37% » · « Tirs » · « Tirs cadrés » · « Corners »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-03%5D%22) · [API-FOOT-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-16%5D%22) · [API-FOOT-42](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-42%5D%22) · [MOB-F-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-01%5D%22) · [MOB-F-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-02%5D%22) · [MOB-F-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-03%5D%22) · [MOB-F-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-04%5D%22) · [MOB-F-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-13%5D%22) · [MOB-F-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-19%5D%22) · [MOB-F-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-24%5D%22) · [MOB-F-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-25%5D%22) · [MOB-F-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-26%5D%22) · [MOB-F-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-27%5D%22)

## 📐 Règles de gestion

- Barre : flèche retour, titre 'MATCH HISTORIQUE', icônes Partager et Favori (signet) à droite.
- Bandeau dégradé : puce 'Ligue des champions · Finale', écussons FCB (Barça) et MUN (Man. United), score '3 – 1' en Barlow Condensed, sous-texte 'Mi-temps 1-1', ligne '28 mai 2011 · Wembley, Londres' avec icônes calendrier/lieu.
- Sélecteur segmenté : Résumé · Compos · Événements · Contexte (onglet actif = pilule blanche).
- Carte 'BUTEURS' : minute ('27''), icône ballon (rose pour le Barça, bleu pour l'adversaire), nom en gras, sous-ligne 'Barça · passe de Xavi' ou 'Man. United'.
- Carte 'STATISTIQUES DU MATCH' : lignes valeur gauche / libellé / valeur droite avec double barre (grenat = domicile, bleu = extérieur) — Possession 63 % / 37 %, Tirs 13 / 7, Tirs cadrés 6 / 3, Corners 7 / 3.
- Les barres s'animent de 0 à leur longueur en 600 ms à l'apparition (courbe easeOutCubic), désactivé si réduction d'animations.
- Si une statistique est absente (données anciennes) la ligne n'est pas affichée ; si aucune stat, la carte est masquée.

## 🛠️ Tâches

- [ ] Créer presentation/pages/historical_match_page.dart (route /history/match/:id) avec DefaultTabController/TabBarView ou PageView.
- [ ] Créer widgets/match_header_banner.dart, match_tab_selector.dart, scorers_card.dart, scorer_tile.dart, match_stats_card.dart, stat_compare_bar.dart.
- [ ] Utiliser des écussons génériques (initiales FCB/MUN) – aucune image protégée ; widget TeamCrest(shortName, color).
- [ ] Calculer la longueur des barres proportionnellement home/(home+away) ; gérer 0/0.
- [ ] Brancher les actions Partager (share_plus) et Favori (voir issue dédiée).
- [ ] Ajouter les clés ARB (matchHistoricTitle, scorersTitle, matchStatsTitle, statPossession, statShots, statShotsOnTarget, statCorners).
- [ ] Golden tests clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné le match Wembley 2011 alors '3 – 1', 'Mi-temps 1-1', '28 mai 2011 · Wembley, Londres' sont affichés.
- [ ] Étant donné quatre buteurs alors ils sont listés dans l'ordre chronologique 27', 34', 54', 69'.
- [ ] Étant donné possession 63/37 alors les barres sont proportionnelles.
- [ ] Étant donné des statistiques absentes alors la carte statistiques n'est pas rendue.
- [ ] Étant donné le thème sombre alors les contrastes restent AA.

## 🧪 Tests à écrire

- [ ] Test widget MatchHeaderBanner_affiche_score_et_lieu
- [ ] Test widget ScorersCard_ordre_chrono
- [ ] Test widget StatCompareBar_proportions
- [ ] Test widget stats_absentes_masquees
- [ ] Golden test resume clair/sombre

## ♿ Accessibilité et i18n

- Semantics du bandeau : 'Ligue des champions, finale. FC Barcelone 3, Manchester United 1, mi-temps 1-1, 28 mai 2011, Wembley, Londres'.
- Chaque barre de statistique : 'Possession : Barça 63 pour cent, Man. United 37 pour cent'.
- Onglets : Semantics(selected, button) ; icônes avec labels.

## 🔗 Dépendances

À réaliser après : `MOB-F-13` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.6
- CDC Flutter §7.5
- CDC Backend §3.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
