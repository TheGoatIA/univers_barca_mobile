> **MOB-F-10** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

En touchant la loupe, l'utilisateur choisit un jour et un mois et découvre ce qui s'est passé ce jour-là dans toutes les saisons (ex. 15 octobre : 4-0 en LDC en 2011, 80 000 spectateurs au Camp Nou en 1989).

## ✅ Objectif

Implémenter la vue de recherche de date précise avec sélecteur de mois/jour et résultats listés par année décroissante.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `F-04` — Recherche par date précise
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-04_recherche-par-date-precise__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-04_recherche-par-date-precise__phone_light.webp?raw=true' width='230' alt='F-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-04_recherche-par-date-precise__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-04_recherche-par-date-precise__phone_dark.webp?raw=true' width='230' alt='F-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-04_recherche-par-date-precise__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-04_recherche-par-date-precise__tablet_light.webp?raw=true' width='330' alt='F-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-04_recherche-par-date-precise__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-04_recherche-par-date-precise__tablet_dark.webp?raw=true' width='330' alt='F-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 125 ans d’histoire » · « Octobre 2026 » · « Le 15 octobre à travers les saisons » · « 15 oct. · » · « Un 4-0 mémorable en Ligue des champions » · « Victoire à Camp Nou devant 80 000 spectateurs » · « Liga »

**Composants repérés** : `avatar`, `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-17%5D%22) · [API-FOOT-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-18%5D%22) · [MOB-F-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-02%5D%22) · [MOB-F-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-05%5D%22) · [MOB-F-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-09%5D%22)

## 📐 Règles de gestion

- En-tête : '125 ans d'histoire' ; sélecteur de mois ('Octobre 2026' dans la maquette : mois + année courante servant de repère) avec flèches de navigation.
- Titre de résultats : 'Le 15 octobre à travers les saisons' ; chaque ligne : 'jour mois. · année', description courte, puce compétition abrégée (LDC, Liga).
- Par défaut : la date du jour de l'appareil ; le sélecteur permet n'importe quel jour valide (29/02 inclus).
- Requête : GET /matches/history?date=MM-DD ; tri par année décroissante ; pagination 20.
- Aucun résultat pour la date → même état vide que F-06 adapté ('Aucun événement ce jour-là').
- Tap sur un résultat → détail du match (F-07).

## 🛠️ Tâches

- [ ] Créer presentation/pages/history_date_search_page.dart (route /history/date) ou mode du sheet selon la navigation du segmented control.
- [ ] Créer widgets/month_day_picker.dart (grille de jours du mois sélectionné, 44×44 pt par jour).
- [ ] Créer widgets/date_result_tile.dart (année, description, puce).
- [ ] Réutiliser HistoryTimelineBloc avec HistoryDateSelected(DateTime).
- [ ] Gérer la date du jour par défaut avec Clock injectable (testabilité).
- [ ] Abréger les compétitions via un mapper CompetitionLabel (LDC, Liga, Copa, Supercopa).
- [ ] Ajouter les clés ARB et golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné le 15 octobre quand la recherche est lancée alors la requête envoie date=10-15.
- [ ] Étant donné deux résultats (2011 et 1989) alors 2011 apparaît avant 1989.
- [ ] Étant donné le 29 février quand il est sélectionné alors la requête est envoyée sans erreur.
- [ ] Étant donné aucun résultat alors l'état vide spécifique est affiché.

## 🧪 Tests à écrire

- [ ] Test widget MonthDayPicker_selection_29_fevrier
- [ ] Test widget resultats_tries_par_annee_desc
- [ ] Test bloc HistoryDateSelected_envoie_monthDay
- [ ] Test widget etat_vide_date
- [ ] Golden test date_precise

## ♿ Accessibilité et i18n

- ARB : historyDateSearchTitle='Le {day} {month} à travers les saisons'.
- Chaque jour de la grille a un label 'jeudi 15 octobre'.
- Annonce du nombre de résultats après sélection.

## 🔗 Dépendances

À réaliser après : `MOB-F-05` · `MOB-F-09` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.6
- CDC Flutter §7.5
- CDC Backend §3.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
