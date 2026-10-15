> **MOB-J-12** · Écran · Priorité **P1** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

La recherche plein écran affiche le champ avec la saisie « Cam » surlignant « eroun » en suggestion, la section « Résultats » : Cameroun (Pays · 1 240 culés), Australie · Canberra (12 culés), Culés Cameroun (Groupe · Yaoundé), France · Cambrai (34 culés).

## ✅ Objectif

Permettre de trouver rapidement une zone ou un groupe et de s'y rendre.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `J-04` — Recherche d’un pays ou d’une ville
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-04_recherche-d-un-pays-ou-d-une-ville__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-04_recherche-d-un-pays-ou-d-une-ville__phone_light.webp?raw=true' width='230' alt='J-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-04_recherche-d-un-pays-ou-d-une-ville__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-04_recherche-d-un-pays-ou-d-une-ville__phone_dark.webp?raw=true' width='230' alt='J-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-04_recherche-d-un-pays-ou-d-une-ville__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-04_recherche-d-un-pays-ou-d-une-ville__tablet_light.webp?raw=true' width='330' alt='J-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-04_recherche-d-un-pays-ou-d-une-ville__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-04_recherche-d-un-pays-ou-d-une-ville__tablet_dark.webp?raw=true' width='330' alt='J-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Cam » · « Résultats » · « eroun » · « Pays · 1 240 culés » · « berra » · « Australie · 12 culés » · « Culés Cameroun » · « Groupe · Yaoundé » · « brai » · « France · 34 culés »

**Composants repérés** : `avatar`, `map`

</details>

**Issues liées sur ce même écran :** [API-COMM-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-12%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-J-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-03%5D%22) · [MOB-J-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-23%5D%22) · [MOB-J-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-25%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22)

## 📐 Règles de gestion

- Saisie : auto-focus, clavier avec action « Rechercher », bouton effacer.
- Mise en évidence de la partie saisie (gras) dans chaque libellé, insensible aux accents.
- Tap sur un pays -> J-05 ; sur une ville -> zoom ville J-03 ; sur un groupe -> K-01.
- Historique des 5 dernières recherches stocké localement (SharedPreferences, sans donnée personnelle), effaçable.
- Aucun résultat : message « Aucun résultat pour « {q} » » + lien « Créer un groupe ».

## 🔄 Comportement et états

- Chargement : indicateur linéaire sous le champ ; erreur : ligne « Recherche indisponible · Réessayer »; hors-ligne : suggestions issues de l'historique uniquement.

## 🛠️ Tâches

- [ ] Créer presentation/pages/map_search_page.dart (route /community/search) et MapSearchCubit (états idle, loading, results, empty, error).
- [ ] Créer widgets/search_result_tile.dart (icône type, libellé surligné, sous-libellé).
- [ ] Créer widgets/highlighted_text.dart (RichText, normalisation des accents).
- [ ] Implémenter RecentSearchesStore (clé community_recent_searches, max 5, FIFO).
- [ ] Brancher SearchMapPlaces (debounce 300 ms).
- [ ] Gérer les navigations vers J-05, J-03, K-01.
- [ ] Ajouter ARB FR/EN/ES.
- [ ] Tests widget et cubit.

## ✔️ Critères d'acceptation

- [ ] Étant donné la saisie « Cam », quand les résultats arrivent, alors Cameroun, Australie, Culés Cameroun, France sont affichés avec leur sous-libellé.
- [ ] Étant donné un tap sur Cameroun, quand le résultat est pressé, alors J-05 s'affiche.
- [ ] Étant donné 6 recherches successives, quand l'historique est lu, alors 5 entrées sont conservées.
- [ ] Étant donné aucun réseau, quand l'écran s'ouvre, alors seul l'historique est proposé.

## 🧪 Tests à écrire

- [ ] map_search_cubit_test : idle -> loading -> results.
- [ ] highlighted_text_test : accents.
- [ ] recent_searches_store_test : FIFO 5.
- [ ] map_search_page_test : navigation selon le type.

## ♿ Accessibilité et i18n

- ARB : communitySearchHint « Rechercher un pays ou une ville », communityResults « Résultats », communityNoResults « Aucun résultat pour « {query} » »
- Champ avec label sémantique et annonce du nombre de résultats.

## 🔗 Dépendances

À réaliser après : `MOB-J-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.8
- CDC Flutter §7.7

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
