> **MOB-J-03** · Fonctionnel · Priorité **P1** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

La recherche (champ « Rechercher un pays ou une ville ») renvoie des suggestions typées Pays, Ville ou Groupe avec leur nombre de culés. Elle s'appuie sur les mêmes endpoints community que la carte.

## ✅ Objectif

Fournir un use case SearchMapPlaces avec debounce et annulation, renvoyant des PlaceSuggestion triées par pertinence.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `J-04` — Recherche d’un pays ou d’une ville
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-04_recherche-d-un-pays-ou-d-une-ville__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-04_recherche-d-un-pays-ou-d-une-ville__phone_light.webp?raw=true' width='230' alt='J-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-04_recherche-d-un-pays-ou-d-une-ville__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-04_recherche-d-un-pays-ou-d-une-ville__phone_dark.webp?raw=true' width='230' alt='J-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-04_recherche-d-un-pays-ou-d-une-ville__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-04_recherche-d-un-pays-ou-d-une-ville__tablet_light.webp?raw=true' width='330' alt='J-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-04_recherche-d-un-pays-ou-d-une-ville__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-04_recherche-d-un-pays-ou-d-une-ville__tablet_dark.webp?raw=true' width='330' alt='J-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Cam » · « Résultats » · « eroun » · « Pays · 1 240 culés » · « berra » · « Australie · 12 culés » · « Culés Cameroun » · « Groupe · Yaoundé » · « brai » · « France · 34 culés »

**Composants repérés** : `avatar`, `map`

</details>

**Issues liées sur ce même écran :** [API-COMM-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-12%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-J-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-12%5D%22) · [MOB-J-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-23%5D%22) · [MOB-J-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-25%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22)

#### `J-05` — Résultats pour un pays
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-05_resultats-pour-un-pays__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-05_resultats-pour-un-pays__phone_light.webp?raw=true' width='230' alt='J-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-05_resultats-pour-un-pays__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-05_resultats-pour-un-pays__phone_dark.webp?raw=true' width='230' alt='J-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-05_resultats-pour-un-pays__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-05_resultats-pour-un-pays__tablet_light.webp?raw=true' width='330' alt='J-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-05_resultats-pour-un-pays__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-05_resultats-pour-un-pays__tablet_dark.webp?raw=true' width='330' alt='J-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Cameroun » · « 🇨🇲 » · « 1 240 culés · 6 groupes locaux · 2 watch parties » · « 1 240 » · « Culés » · « Groupes » · « Événements » · « Culés Cameroun » · « Yaoundé · 721 membres · » · « Watch party sam. » · « Rejoindre »

**Composants repérés** : `avatar`, `btn`, `card`, `map`

</details>

**Issues liées sur ce même écran :** [API-COMM-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-08%5D%22) · [API-COMM-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-11%5D%22) · [API-COMM-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-12%5D%22) · [API-COMM-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-14%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-J-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-13%5D%22) · [MOB-J-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-24%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22)

## 📐 Règles de gestion

- Déclenchement à partir de 2 caractères saisis, debounce de 300 ms, requête précédente annulée à chaque frappe.
- Une suggestion contient : type (country|city|group), libellé principal, sous-libellé (« Pays · 1 240 culés », « Australie · 12 culés », « Groupe · Yaoundé »), countryCode, city, count.
- La recherche de groupes utilise GET /community/groups/search?country=&city=&q=, celle des zones GET /community/map/aggregates?q=… (ajout d'un paramètre q à valider avec l'API).
- Maximum 20 suggestions, tri : correspondance exacte, préfixe, puis nombre de culés décroissant.
- Texte de recherche normalisé (trim, minuscules, suppression des accents) avant la requête ; jamais journalisé en clair dans les analytics.

## 🛠️ Tâches

- [ ] Créer domain/entities/place_suggestion.dart (type, title, subtitle, countryCode, city, count, groupId).
- [ ] Créer domain/usecases/search_map_places.dart (Either<Failure, List<PlaceSuggestion>>).
- [ ] Ajouter @Get(path: '/groups/search') dans community_remote_datasource.dart (paramètres country, city, q, page, limit).
- [ ] Implémenter la fusion zones + groupes dans le repository (Future.wait, tri stable).
- [ ] Créer core/utils/text_normalizer.dart (suppression des diacritiques) s'il n'existe pas.
- [ ] Créer le transformer rxdart debounceTime(300ms)+switchMap pour le BLoC de recherche.
- [ ] Écrire les fixtures search_cam.json (Cameroun, Culés Cameroun) et search_brai.json (France).

## ✔️ Critères d'acceptation

- [ ] Étant donné la saisie « Cam », quand 300 ms s'écoulent, alors une seule requête part et renvoie Cameroun (Pays · 1 240 culés) et Culés Cameroun (Groupe · Yaoundé).
- [ ] Étant donné la saisie d'un seul caractère, quand l'utilisateur tape, alors aucune requête n'est émise.
- [ ] Étant donné deux frappes rapprochées, quand la première requête est en cours, alors elle est annulée.
- [ ] Étant donné « Yaoundé » et « yaounde », quand la recherche est lancée, alors les deux renvoient les mêmes résultats.
- [ ] Étant donné une erreur serveur, quand la recherche échoue, alors Left(ServerFailure) et aucune suggestion obsolète n'est affichée.

## 🧪 Tests à écrire

- [ ] search_map_places_test : fusion et tri des suggestions.
- [ ] text_normalizer_test : « Yaoundé » -> « yaounde ».
- [ ] debounce_test (fake_async) : 3 frappes en 200 ms = 1 requête.
- [ ] limit_test : 25 résultats serveur -> 20 affichés.

## 🔗 Dépendances

À réaliser après : `MOB-J-02` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.8
- CDC Backend §3.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
