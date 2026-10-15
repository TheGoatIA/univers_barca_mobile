> **MOB-H-15** · Fonctionnel · Priorité **P1** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Dans la feuille de sélection, la recherche et les chips de filtre affinent la liste. Le tri par forme met en avant les joueurs en réussite.

## ✅ Objectif

Fournir la logique de recherche locale/serveur et de tri.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-05` — Sélection d’un joueur par poste
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-05_selection-d-un-joueur-par-poste__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-05_selection-d-un-joueur-par-poste__phone_light.webp?raw=true' width='230' alt='H-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-05_selection-d-un-joueur-par-poste__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-05_selection-d-un-joueur-par-poste__phone_dark.webp?raw=true' width='230' alt='H-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-05_selection-d-un-joueur-par-poste__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-05_selection-d-un-joueur-par-poste__tablet_light.webp?raw=true' width='330' alt='H-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-05_selection-d-un-joueur-par-poste__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-05_selection-d-un-joueur-par-poste__tablet_dark.webp?raw=true' width='330' alt='H-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Fermeture des compositions dans » · « 1 j 04 h 12 min » · « J11 » · « ter Stegen » · « Koundé » · « Balde » · « De Jong » · « Gavi » · « Yamal » · « Raphinha » · « 7/11 » · « 4 postes à compléter » · « Formation » · « 4-3-3 » · « · Capitaine » · « Capitaine » · « Choisir un milieu (MC) » · « 3 postes » · « Rechercher un joueur » · « Milieux »

**Composants repérés** : `avatar`, `btn`, `card`, `chip`, `empty`, `search`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-FANT-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-03%5D%22) · [API-FANT-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-04%5D%22) · [API-FANT-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-23%5D%22) · [MOB-H-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-06%5D%22) · [MOB-H-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-11%5D%22) · [MOB-H-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-14%5D%22) · [MOB-H-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-31%5D%22) · [MOB-H-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-32%5D%22)

## 📐 Règles de gestion

- Recherche tolérante aux accents (ñ, í, ó) et à la casse, déclenchée après 250 ms de debounce, minimum 2 caractères.
- Chip 'Milieux' (poste du slot, actif par défaut), 'Tous' (tous postes), 'Forme' (tri décroissant par tendance puis pts moy.).
- Résultats triés par points moyens décroissants par défaut.
- Cache des joueurs 24 h dans Drift pour un fonctionnement hors-ligne.

## 🔄 Comportement et états

- Aucun résultat -> message avec bouton 'Effacer la recherche'.

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/domain/usecases/filter_players.dart (normalisation Unicode).
- [ ] Ajouter le debounce dans le BLoC/Cubit PlayerPickerCubit.
- [ ] Gérer les chips (ChoiceChip).
- [ ] Persister le cache joueurs.
- [ ] Tests sur la normalisation (Fermín/fermin).
- [ ] Documenter les règles de tri.

## ✔️ Critères d'acceptation

- [ ] Étant donné 'fermin' saisi alors 'Fermín López' est trouvé.
- [ ] Étant donné le chip Forme alors les joueurs en hausse sont en tête.
- [ ] Étant donné 1 caractère alors aucune requête n'est lancée.
- [ ] Étant donné hors-ligne alors la liste cache reste filtrable.

## 🧪 Tests à écrire

- [ ] normalisation accents
- [ ] debounce 250 ms
- [ ] tri forme
- [ ] chip Tous retire le filtre de poste
- [ ] recherche < 2 caractères ignorée

## 🔗 Dépendances

À réaliser après : `MOB-H-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
