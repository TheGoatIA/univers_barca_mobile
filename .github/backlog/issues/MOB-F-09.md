> **MOB-F-09** · Fonctionnel · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Les filtres combinent plusieurs dimensions ; il faut des règles claires pour éviter des requêtes incohérentes et des écrans vides inexplicables.

## ✅ Objectif

Centraliser la validation et la normalisation des filtres dans HistoryFilters et un validateur testé.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `F-03` — Filtres de la frise
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-03_filtres-de-la-frise__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-03_filtres-de-la-frise__phone_light.webp?raw=true' width='230' alt='F-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-03_filtres-de-la-frise__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-03_filtres-de-la-frise__phone_dark.webp?raw=true' width='230' alt='F-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-03_filtres-de-la-frise__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-03_filtres-de-la-frise__tablet_light.webp?raw=true' width='330' alt='F-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-03_filtres-de-la-frise__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-03_filtres-de-la-frise__tablet_dark.webp?raw=true' width='330' alt='F-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 125 ans d’histoire » · « 1950s » · « 1970s » · « 1990s » · « 2000s » · « 2010s » · « 2020s » · « 2010 – 2019 » · « 42 événements » · « 6 juin · » · « Berlin : le Barça s’offre un triplé historique » · « Ligue des champions » · « 3-1 Juventus » · « 28 mai · » · « Wembley : une démonstration face à Manchester United » · « 3-1 » · « 27 mai · » · « Rome : le sextuplé se dessine » · « 2-0 » · « 17 mai · » · « Paris : première étoile de l’ère Rijkaard » · « 2-1 » · « Filtres » · « Réinitialiser » · « Navigation » · « Décennie » · « Saison » · « Date »

**Composants repérés** : `avatar`, `btn`, `card`, `chip`, `input`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-FOOT-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-17%5D%22) · [API-FOOT-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-21%5D%22) · [MOB-F-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-05%5D%22) · [MOB-F-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-08%5D%22) · [MOB-F-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-25%5D%22) · [MOB-F-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-26%5D%22) · [MOB-F-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-27%5D%22)

#### `F-04` — Recherche par date précise
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-04_recherche-par-date-precise__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-04_recherche-par-date-precise__phone_light.webp?raw=true' width='230' alt='F-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-04_recherche-par-date-precise__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-04_recherche-par-date-precise__phone_dark.webp?raw=true' width='230' alt='F-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-04_recherche-par-date-precise__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-04_recherche-par-date-precise__tablet_light.webp?raw=true' width='330' alt='F-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-04_recherche-par-date-precise__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-04_recherche-par-date-precise__tablet_dark.webp?raw=true' width='330' alt='F-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 125 ans d’histoire » · « Octobre 2026 » · « Le 15 octobre à travers les saisons » · « 15 oct. · » · « Un 4-0 mémorable en Ligue des champions » · « Victoire à Camp Nou devant 80 000 spectateurs » · « Liga »

**Composants repérés** : `avatar`, `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-17%5D%22) · [API-FOOT-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-18%5D%22) · [MOB-F-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-02%5D%22) · [MOB-F-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-05%5D%22) · [MOB-F-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-10%5D%22)

#### `F-06` — Frise — aucun résultat
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-06_frise-aucun-resultat__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-06_frise-aucun-resultat__phone_light.webp?raw=true' width='230' alt='F-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-06_frise-aucun-resultat__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-06_frise-aucun-resultat__phone_dark.webp?raw=true' width='230' alt='F-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-06_frise-aucun-resultat__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-06_frise-aucun-resultat__tablet_light.webp?raw=true' width='330' alt='F-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-06_frise-aucun-resultat__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-06_frise-aucun-resultat__tablet_dark.webp?raw=true' width='330' alt='F-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 125 ans d’histoire » · « Aucun événement trouvé » · « Aucun match ne correspond à ces filtres. Essaie une autre saison ou réinitialise les filtres. » · « Réinitialiser les filtres »

**Composants repérés** : `avatar`, `btn`

</details>

**Issues liées sur ce même écran :** [API-FOOT-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-17%5D%22) · [MOB-F-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-05%5D%22) · [MOB-F-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-12%5D%22) · [MOB-F-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-25%5D%22) · [MOB-F-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-27%5D%22)

## 📐 Règles de gestion

- Date précise : jour+mois valides (29 février accepté car recherche transversale aux saisons), année non demandée ; format API MM-DD.
- Saison au format 'AAAA-AAAA' avec seconde année = première+1 ; plage 1899-1900 → saison courante.
- Décennie ∈ {1900, 1910, …, 2020}; la maquette affiche 6 chips (1950s…2020s) mais les données antérieures restent accessibles via la feuille.
- Adversaire : trim, 2 à 60 caractères, échappement des caractères spéciaux avant envoi ; vide = pas de filtre.
- Les modes Décennie/Saison/Date étant exclusifs, passer d'un mode à l'autre efface les valeurs des deux autres.
- Un nombre de compétitions sélectionnées = 5 équivaut à 'Toutes'.

## 🛠️ Tâches

- [ ] Créer lib/features/history/domain/validators/history_filters_validator.dart avec Either<FilterError, HistoryFilters>.
- [ ] Ajouter HistoryFilters.normalized() (exclusivité des modes, fusion 'Toutes').
- [ ] Créer les enums FilterError (invalidDate, invalidSeason, opponentTooShort, opponentTooLong).
- [ ] Brancher le validateur dans HistoryFiltersCubit avant HistoryFiltersApplied.
- [ ] Messages d'erreur localisés (ARB) affichés sous le champ concerné.
- [ ] Documenter les formats dans le DartDoc.

## ✔️ Critères d'acceptation

- [ ] Étant donné 31 avril quand la date est validée alors FilterError.invalidDate est renvoyé.
- [ ] Étant donné saison '2010-2012' alors invalidSeason.
- [ ] Étant donné adversaire d'un caractère alors opponentTooShort.
- [ ] Étant donné mode Date puis mode Saison alors monthDay est effacé.

## 🧪 Tests à écrire

- [ ] Test unitaire valide_29_fevrier
- [ ] Test unitaire saison_incoherente
- [ ] Test unitaire adversaire_trim_et_longueur
- [ ] Test unitaire exclusivite_modes
- [ ] Test unitaire cinq_competitions_equivaut_toutes

## 🔗 Dépendances

À réaliser après : `MOB-F-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.6
- CDC Flutter §7.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
