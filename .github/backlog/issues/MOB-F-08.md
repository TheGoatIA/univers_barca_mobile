> **MOB-F-08** · Écran · Priorité **P1** · Taille **L** · Phase 1 — MVP

## 🎯 Contexte

Le bouton filtre de l'en-tête ouvre un bottom sheet 'FILTRES' permettant d'affiner la frise sur la navigation, la saison, la compétition et l'adversaire.

## ✅ Objectif

Implémenter la feuille F-03 avec lien bidirectionnel avec HistoryTimelineBloc et compteur de résultats en direct.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `F-03` — Filtres de la frise
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-03_filtres-de-la-frise__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-03_filtres-de-la-frise__phone_light.webp?raw=true' width='230' alt='F-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-03_filtres-de-la-frise__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-03_filtres-de-la-frise__phone_dark.webp?raw=true' width='230' alt='F-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-03_filtres-de-la-frise__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-03_filtres-de-la-frise__tablet_light.webp?raw=true' width='330' alt='F-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-03_filtres-de-la-frise__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-03_filtres-de-la-frise__tablet_dark.webp?raw=true' width='330' alt='F-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 125 ans d’histoire » · « 1950s » · « 1970s » · « 1990s » · « 2000s » · « 2010s » · « 2020s » · « 2010 – 2019 » · « 42 événements » · « 6 juin · » · « Berlin : le Barça s’offre un triplé historique » · « Ligue des champions » · « 3-1 Juventus » · « 28 mai · » · « Wembley : une démonstration face à Manchester United » · « 3-1 » · « 27 mai · » · « Rome : le sextuplé se dessine » · « 2-0 » · « 17 mai · » · « Paris : première étoile de l’ère Rijkaard » · « 2-1 » · « Filtres » · « Réinitialiser » · « Navigation » · « Décennie » · « Saison » · « Date »

**Composants repérés** : `avatar`, `btn`, `card`, `chip`, `input`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-FOOT-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-17%5D%22) · [API-FOOT-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-21%5D%22) · [MOB-F-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-05%5D%22) · [MOB-F-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-09%5D%22) · [MOB-F-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-25%5D%22) · [MOB-F-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-26%5D%22) · [MOB-F-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-27%5D%22)

## 📐 Règles de gestion

- Titre 'FILTRES' + lien 'Réinitialiser' (bleu) en haut ; poignée de drag ; fond flouté derrière.
- Section 'Navigation' : segmented control à 3 choix Décennie · Saison · Date (Saison actif dans la maquette).
- Section 'Saison' : sélecteur déroulant avec icône calendrier, valeur '2010-2011' (liste des saisons 1899-1900 → saison en cours, ordre décroissant) ; visible en mode Saison ; en mode Décennie un sélecteur de décennie, en mode Date le sélecteur de jour (F-04).
- Section 'Compétition' : chips multi-sélection Toutes · Liga · Ligue des champions · Coupe du Roi · Supercoupe · Amicaux ; 'Toutes' est exclusive (sélectionner une compétition la désactive, la désélection de tout la réactive).
- Section 'Adversaire' : champ de recherche avec icône loupe, valeur 'Real Madrid' ; suggestions de clubs à partir de 2 caractères (debounce 300 ms).
- Bouton primaire 'Afficher 18 résultats' : le nombre est le total retourné par l'API pour les filtres en cours (requête limit=1 débouncée 400 ms) ; désactivé si 0 résultat avec libellé 'Aucun résultat'.
- Fermeture par glissement ou tap extérieur sans appliquer : les filtres non validés sont abandonnés.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `GET` | `/api/v1/matches/history` | Comptage des résultats pour le bouton 'Afficher N résultats' | season=2010-2011&competitionId=…&opponent=real-madrid&limit=1 | {success:true,data:{items:[…],total:18,…}} |

## 🛠️ Tâches

- [ ] Créer widgets/history_filters_sheet.dart (showModalBottomSheet, isScrollControlled, DraggableScrollableSheet).
- [ ] Créer HistoryFiltersCubit local (état de brouillon) pour ne modifier le Bloc qu'à la validation.
- [ ] Créer composants : NavigationModeSegmented, SeasonDropdown, CompetitionChips, OpponentSearchField (autocomplete).
- [ ] Brancher le compteur sur un use case CountHistoryResults (appel /matches/history?limit=1 → total).
- [ ] Au tap 'Afficher N résultats' : émettre HistoryFiltersApplied et fermer la feuille.
- [ ] Au tap 'Réinitialiser' : remettre le brouillon aux valeurs par défaut (décennie 2010s, Toutes, adversaire vide).
- [ ] Afficher un badge sur l'icône filtre de l'en-tête quand activeCount > 0.
- [ ] Gérer le clavier (viewInsets) pour que le bouton reste visible.

## ✔️ Critères d'acceptation

- [ ] Étant donné la feuille ouverte quand 'Coupe du Roi' est touchée avec Liga et LDC actives alors trois chips sont sélectionnées et 'Toutes' est désactivée.
- [ ] Étant donné 18 résultats quand les filtres changent alors le bouton affiche 'Afficher 18 résultats' après le debounce.
- [ ] Étant donné 0 résultat alors le bouton est désactivé.
- [ ] Étant donné 'Réinitialiser' alors tous les champs reviennent aux valeurs par défaut.
- [ ] Étant donné la fermeture par glissement alors la frise n'est pas modifiée.

## 🧪 Tests à écrire

- [ ] Test widget FiltersSheet_affiche_sections
- [ ] Test widget Toutes_exclusive_avec_competitions
- [ ] Test widget compteur_resultats_debounce
- [ ] Test widget bouton_desactive_si_zero
- [ ] Test widget reinitialiser
- [ ] Test widget fermeture_sans_appliquer

## ♿ Accessibilité et i18n

- ARB : historyFiltersTitle, historyFiltersReset, historyNavDecade/Season/Date, historyCompetitionAll, historyOpponentLabel, historyShowResults='{count, plural, =0{Aucun résultat} one{Afficher # résultat} other{Afficher # résultats}}'.
- Le segmented control annonce l'option sélectionnée ; les chips ont Semantics(selected, toggled).
- Le compteur dynamique est annoncé via liveRegion.

## 🔗 Dépendances

À réaliser après : `MOB-F-05` · `MOB-F-09` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.6
- CDC Flutter §7.5
- CDC Backend §3.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
