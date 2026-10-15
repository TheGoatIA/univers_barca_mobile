> **MOB-L-23** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Depuis la liste (long press) ou le détail, une feuille permet d'ajouter un seul match en choisissant rappel et agenda cible.

## ✅ Objectif

Implémenter la feuille L-14.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `L-14` — Ajouter un match à l’agenda
_Module : Calendrier et export agenda_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-14_ajouter-un-match-a-l-agenda__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-14_ajouter-un-match-a-l-agenda__phone_light.webp?raw=true' width='230' alt='L-14 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-14_ajouter-un-match-a-l-agenda__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-14_ajouter-un-match-a-l-agenda__phone_dark.webp?raw=true' width='230' alt='L-14 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-14_ajouter-un-match-a-l-agenda__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-14_ajouter-un-match-a-l-agenda__tablet_light.webp?raw=true' width='330' alt='L-14 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-14_ajouter-un-match-a-l-agenda__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-14_ajouter-un-match-a-l-agenda__tablet_dark.webp?raw=true' width='330' alt='L-14 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Calendrier » · « oct. » · « FC Barcelone » · « Real Madrid » · « Liga » · « Bayern Munich » · « Ligue des champions » · « nov. » · « Atlético Madrid » · « Villarreal » · « Coupe du Roi » · « Séville » · « Barça – Real Madrid » · « Sam. 24 oct. · 20:00 WAT · Liga » · « Rappel » · « 1 heure avant » · « Agenda » · « Agenda de l’appareil » · « Ajouter à l’agenda » · « Télécharger .ics »

**Composants repérés** : `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-CAL-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-03%5D%22) · [API-CAL-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-06%5D%22) · [API-CAL-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-09%5D%22) · [API-CAL-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-10%5D%22) · [API-CAL-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-12%5D%22) · [MOB-L-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-03%5D%22) · [MOB-L-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-05%5D%22) · [MOB-L-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-07%5D%22) · [MOB-L-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-11%5D%22) · [MOB-L-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-22%5D%22) · [MOB-L-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-28%5D%22) · [MOB-L-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-29%5D%22)

## 📐 Règles de gestion

- En-tête : écusson FCB, 'Barça – Real Madrid', 'Sam. 24 oct. · 20:00 WAT · Liga'.
- Ligne 'Rappel — 1 heure avant' (sélecteur : Au coup d'envoi, 15 minutes avant, 1 heure avant, 3 heures avant, La veille à 20:00, Aucun).
- Ligne 'Agenda — Agenda de l'appareil' (sélecteur des calendriers inscriptibles).
- Bouton 'Ajouter à l'agenda' (primaire) ; lien 'Télécharger .ics' (téléchargement du seul match, via /calendar/export.ics?matchId=… proposition) .
- Le rappel initial = rappel par défaut de L-15 ; modification locale à cette feuille uniquement.
- Succès : fermeture + toast ; si permission absente → L-12.

## 🛠️ Tâches

- [ ] Créer widgets/add_match_sheet.dart et AddMatchToAgendaCubit.
- [ ] Créer widgets/option_picker_row.dart (chevron haut/bas) avec sélecteurs en bottom sheet/menu.
- [ ] Lier à AddMatchToDeviceCalendar et au flux permission.
- [ ] Implémenter le .ics d'un seul match (génération locale RFC 5545 minimale ou endpoint) — à trancher avec l'API.
- [ ] ARB calendarReminderRow, calendarAgendaRow, calendarAddToAgendaCta, calendarDownloadIcsShort.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné la feuille alors le résumé du match et les valeurs par défaut s'affichent.
- [ ] Étant donné 'Ajouter à l'agenda' avec permission alors l'événement est créé et un toast s'affiche.
- [ ] Étant donné aucune permission alors L-12 s'affiche.
- [ ] Étant donné 'Télécharger .ics' alors un fichier d'un match est généré.

## 🧪 Tests à écrire

- [ ] Test widget AddMatchSheet_resume
- [ ] Test cubit ajout_succes
- [ ] Test cubit ajout_sans_permission
- [ ] Test widget selecteur_rappel
- [ ] Golden test L-14 clair/sombre

## ♿ Accessibilité et i18n

- Les lignes sélecteurs : 'Rappel, 1 heure avant, bouton'.
- Bouton principal ≥ 48 dp.

## 🔗 Dépendances

À réaliser après : `MOB-L-22` · `MOB-L-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.9
- CDC Flutter §7.8

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
