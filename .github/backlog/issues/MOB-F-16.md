> **MOB-F-16** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Ligne de temps des faits de jeu : buts avec score cumulé, mi-temps, cartons, remplacements.

## ✅ Objectif

Afficher la chronologie verticale des événements avec marque de mi-temps.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `F-09` — Match historique — événements
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-09_match-historique-evenements__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-09_match-historique-evenements__phone_light.webp?raw=true' width='230' alt='F-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-09_match-historique-evenements__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-09_match-historique-evenements__phone_dark.webp?raw=true' width='230' alt='F-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-09_match-historique-evenements__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-09_match-historique-evenements__tablet_light.webp?raw=true' width='330' alt='F-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-09_match-historique-evenements__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-09_match-historique-evenements__tablet_dark.webp?raw=true' width='330' alt='F-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Match historique » · « Ligue des champions · Finale » · « Barça » · « 3 – 1 » · « Mi-temps 1-1 » · « Man. United » · « 28 mai 2011 · » · « Wembley, Londres » · « Résumé » · « Compos » · « Événements » · « Contexte » · « 27' » · « But · Pedro » · « Barça 1 – 0 » · « 34' » · « But · Rooney » · « Barça 1 – 1 » · « 45' » · « Mi-temps » · « 54' » · « But · Messi » · « Barça 2 – 1 » · « 69' » · « But · Villa » · « Barça 3 – 1 » · « 88' » · « Remplacement » · « Keita remplace Xavi »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-03%5D%22) · [API-FOOT-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-16%5D%22) · [MOB-F-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-01%5D%22) · [MOB-F-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-13%5D%22) · [MOB-F-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-27%5D%22)

## 📐 Règles de gestion

- Ligne : minute ('27''), type + joueur ('But · Pedro'), score après événement ('Barça 1 – 0', 'Barça 1 – 1').
- Séparateur central 'Mi-temps' à 45' (sans joueur).
- Icônes : ballon (but), carton jaune/rouge, flèches (remplacement) ; couleur grenat pour le Barça, bleu pour l'adversaire.
- Temps additionnel affiché '45+2''.
- Tri croissant par minute ; événements simultanés triés par ordre de saisie.
- Liste vide → 'Aucun événement détaillé pour ce match'.

## 🛠️ Tâches

- [ ] Créer widgets/events_tab.dart, match_event_tile.dart, halftime_divider.dart.
- [ ] Mapper MatchEvent.type vers icône/libellé (ARB eventGoal, eventYellowCard, eventRedCard, eventSubstitution, eventHalfTime).
- [ ] Formater minute avec temps additionnel (45+2').
- [ ] Gérer la couleur par camp via tokens ; adapter dark mode.
- [ ] Ajouter l'état vide.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné les 4 buts de Wembley 2011 alors les scores cumulés 1-0, 1-1, 2-1, 3-1 sont affichés.
- [ ] Étant donné l'événement mi-temps alors le séparateur 'Mi-temps' apparaît entre 34' et 54'.
- [ ] Étant donné 45+2 alors '45+2'' est affiché.
- [ ] Étant donné aucune donnée alors le message d'absence s'affiche.

## 🧪 Tests à écrire

- [ ] Test widget EventsTab_scores_cumules
- [ ] Test widget halftime_divider
- [ ] Test unitaire formatage_minute_additionnelle
- [ ] Test widget evenements_vides
- [ ] Golden test evenements clair/sombre

## ♿ Accessibilité et i18n

- Chaque événement : 'Minute 27, but de Pedro, Barça 1 à 0'.

## 🔗 Dépendances

À réaliser après : `MOB-F-14` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.6
- CDC Flutter §7.5
- CDC Backend §3.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
