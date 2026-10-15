> **MOB-L-08** · Écran · Priorité **P1** · Taille **L** · Phase 1 — MVP

## 🎯 Contexte

La bascule sur l'icône calendrier affiche un mois sous forme de grille avec les jours de match marqués et le détail du jour sélectionné.

## ✅ Objectif

Implémenter la vue mois de L-02.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `L-02` — Vue mensuelle
_Module : Calendrier et export agenda_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-02_vue-mensuelle__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-02_vue-mensuelle__phone_light.webp?raw=true' width='230' alt='L-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-02_vue-mensuelle__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-02_vue-mensuelle__phone_dark.webp?raw=true' width='230' alt='L-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-02_vue-mensuelle__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-02_vue-mensuelle__tablet_light.webp?raw=true' width='330' alt='L-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-02_vue-mensuelle__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-02_vue-mensuelle__tablet_dark.webp?raw=true' width='330' alt='L-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Calendrier » · « Octobre 2026 » · « Samedi 24 octobre » · « oct. » · « FC Barcelone » · « Real Madrid » · « Liga »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-CAL-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-05%5D%22) · [API-CAL-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-18%5D%22) · [API-CAL-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-22%5D%22) · [API-FOOT-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-13%5D%22) · [MOB-L-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-04%5D%22) · [MOB-L-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-05%5D%22) · [MOB-L-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-28%5D%22) · [MOB-L-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-29%5D%22)

## 📐 Règles de gestion

- Titre mois 'Octobre 2026' avec flèches précédent/suivant et swipe horizontal.
- Grille 7 colonnes (lundi premier jour en fr/es, dimanche en en selon locale) ; jours avec match marqués d'un point de la couleur de la compétition.
- Jour sélectionné (ex. samedi 24 octobre) : libellé 'Samedi 24 octobre' + carte du match ('FC Barcelone – Real Madrid · 20:00 · Liga').
- Plusieurs matchs le même jour : liste empilée ; aucun match : 'Aucun match ce jour'.
- Le jour courant est cerclé ; le mois suit les filtres de compétition.
- Transition liste↔mois : fondu 200 ms ; sélection mémorisée au retour.

## 🛠️ Tâches

- [ ] Créer widgets/month_calendar_view.dart (grille CustomScrollView/Table ou table_calendar).
- [ ] Créer day_cell.dart, selected_day_matches.dart.
- [ ] Brancher CalendarMonthChanged/CalendarDaySelected.
- [ ] Gérer premier jour de semaine via MaterialLocalizations.
- [ ] Charger mois adjacents (préchargement ±1 mois).
- [ ] ARB calendarMonthEmptyDay, jours de semaine.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné octobre 2026 alors le 24 est marqué d'un point.
- [ ] Étant donné le tap sur le 24 alors la carte Barça–Real Madrid s'affiche.
- [ ] Étant donné un jour sans match alors 'Aucun match ce jour'.
- [ ] Étant donné le swipe gauche alors le mois suivant s'affiche.

## 🧪 Tests à écrire

- [ ] Test widget MonthView_points_jours_match
- [ ] Test widget selection_jour
- [ ] Test widget navigation_mois_swipe
- [ ] Test widget premier_jour_semaine_locale
- [ ] Golden test L-02 clair/sombre

## ♿ Accessibilité et i18n

- Chaque jour : 'Samedi 24 octobre, 1 match'.
- Navigation clavier/switch access des jours.

## 🔗 Dépendances

À réaliser après : `MOB-L-05` · `MOB-L-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.9
- CDC Flutter §7.8

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
