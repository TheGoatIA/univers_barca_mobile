> **MOB-J-01** · Données · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

La carte n'affiche que des compteurs par zone et des groupes publics. Cette issue pose les entités du domaine et les modèles JSON correspondants dans la feature community, pour que datasource, BLoC et widgets partagent les mêmes types.

## ✅ Objectif

Disposer d'entités immuables et de modèles JSON testés pour les agrégats, groupes affichés sur la carte, zones, filtres et réglages de visibilité.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `J-01` — Carte du monde
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__phone_light.webp?raw=true' width='230' alt='J-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__phone_dark.webp?raw=true' width='230' alt='J-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__tablet_light.webp?raw=true' width='330' alt='J-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__tablet_dark.webp?raw=true' width='330' alt='J-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Rechercher un pays ou une ville » · « Tous » · « Groupes » · « Watch parties » · « Près de moi » · « Dans le monde » · « 12 480 culés » · « 96 pays » · « 🇪🇸 » · « Espagne » · « 5 210 » · « 🇫🇷 » · « France » · « 2 140 » · « 🇨🇲 » · « Cameroun » · « 1 240 »

**Composants repérés** : `avatar`, `chip`, `map`

</details>

**Issues liées sur ce même écran :** [API-COMM-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-07%5D%22) · [API-COMM-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-08%5D%22) · [API-COMM-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-09%5D%22) · [API-COMM-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-10%5D%22) · [API-COMM-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-30%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [API-COMM-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-33%5D%22) · [MOB-J-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-02%5D%22) · [MOB-J-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-04%5D%22) · [MOB-J-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-05%5D%22) · [MOB-J-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-06%5D%22) · [MOB-J-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-07%5D%22) · [MOB-J-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-08%5D%22) · [MOB-J-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-09%5D%22) · [MOB-J-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-23%5D%22) · [MOB-J-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-24%5D%22) · [MOB-J-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-25%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22) · [MOB-J-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-27%5D%22)

#### `J-02` — Zoom pays — Cameroun
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__phone_light.webp?raw=true' width='230' alt='J-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__phone_dark.webp?raw=true' width='230' alt='J-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__tablet_light.webp?raw=true' width='330' alt='J-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__tablet_dark.webp?raw=true' width='330' alt='J-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Rechercher un pays ou une ville » · « Tous » · « Groupes » · « Watch parties » · « Près de moi » · « Cameroun · 1 240 culés » · « Groupes locaux » · « Créer » · « Culés Cameroun » · « Yaoundé · 721 membres · » · « Watch party sam. » · « Rejoindre » · « Culés Douala » · « Douala · 486 membres » · « Barça Bafoussam » · « Bafoussam · 98 membres »

**Composants repérés** : `avatar`, `btn`, `chip`, `map`

</details>

**Issues liées sur ce même écran :** [API-COMM-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-09%5D%22) · [API-COMM-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-11%5D%22) · [API-COMM-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-14%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-J-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-02%5D%22) · [MOB-J-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-04%5D%22) · [MOB-J-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-07%5D%22) · [MOB-J-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-08%5D%22) · [MOB-J-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-09%5D%22) · [MOB-J-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-10%5D%22) · [MOB-J-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-23%5D%22) · [MOB-J-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-24%5D%22) · [MOB-J-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-25%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22) · [MOB-J-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-27%5D%22)

#### `J-03` — Zoom ville — Yaoundé
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__phone_light.webp?raw=true' width='230' alt='J-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__phone_dark.webp?raw=true' width='230' alt='J-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__tablet_light.webp?raw=true' width='330' alt='J-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__tablet_dark.webp?raw=true' width='330' alt='J-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Rechercher un pays ou une ville » · « Tous » · « Groupes » · « Watch parties » · « Près de moi » · « Yaoundé · ≈ 720 culés » · « Autour de toi » · « Zone approximative » · « Aucune position exacte n'est affichée : seuls des compteurs par zone et les groupes publics apparaissent. » · « Culés Cameroun » · « Yaoundé · Bastos · 721 membres · » · « Watch party sam. » · « Rejoindre »

**Composants repérés** : `avatar`, `btn`, `card`, `chip`, `map`

</details>

**Issues liées sur ce même écran :** [API-COMM-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-02%5D%22) · [API-COMM-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-07%5D%22) · [API-COMM-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-08%5D%22) · [API-COMM-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-09%5D%22) · [API-COMM-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-11%5D%22) · [API-COMM-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-13%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-J-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-02%5D%22) · [MOB-J-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-04%5D%22) · [MOB-J-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-07%5D%22) · [MOB-J-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-08%5D%22) · [MOB-J-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-09%5D%22) · [MOB-J-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-11%5D%22) · [MOB-J-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-23%5D%22) · [MOB-J-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-24%5D%22) · [MOB-J-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-25%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22) · [MOB-J-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-27%5D%22)

## 📐 Règles de gestion

- Un agrégat représente une zone, jamais un utilisateur : niveau country | region | city, countryCode ISO 3166-1 alpha-2, city optionnelle, lat/lng du centroïde de la zone (pas d'un membre), count (entier >= 0) et computedAt (UTC).
- Niveaux de granularité alignés sur le modèle API LocationAggregate : level ∈ {country, region, city}.
- Les groupes locaux affichés sur la carte sont des entités publiques : id, name, city, countryCode, membersCount, status (pending|active|archived), nextEventLabel optionnel (ex. « Watch party sam. »).
- La visibilité de l'utilisateur est un enum MapVisibility { city, country, hidden }, valeur par défaut hidden tant qu'aucun consentement n'a été donné.
- Aucun champ de position individuelle (latitude/longitude d'utilisateur, adresse, précision GPS) ne doit exister dans les entités.

## 🛠️ Tâches

- [ ] Créer lib/features/community/domain/entities/map_aggregate.dart (Equatable : level, countryCode, city, lat, lng, count, computedAt).
- [ ] Créer entities/map_zone.dart (zone sélectionnée : level, code, libellé, bbox optionnelle) et entities/map_filter.dart (enum all, groups, watchParties, nearMe).
- [ ] Créer entities/local_group_summary.dart (id, name, city, countryCode, membersCount, nextEventLabel, status).
- [ ] Créer entities/map_visibility.dart (enum MapVisibility + extension toApi()/fromApi() vers 'city'|'country'|'hidden').
- [ ] Créer data/models/map_aggregate_model.dart avec json_serializable (fromJson/toJson/toEntity) tolérant aux champs absents.
- [ ] Créer data/models/local_group_summary_model.dart et data/models/map_aggregates_response_model.dart (agrégats + groupes + totalSupporters + totalCountries).
- [ ] Ajouter test/fixtures/community/map_aggregates.json (monde : Espagne 5210, France 2140, Cameroun 1240 ; total 12480 culés, 96 pays).
- [ ] Générer le code (build_runner) et vérifier flutter analyze sans avertissement.

## ✔️ Critères d'acceptation

- [ ] Étant donné une réponse JSON d'agrégats, quand elle est parsée, alors les entités contiennent level, count et centroïde sans champ utilisateur.
- [ ] Étant donné un champ inconnu dans le JSON, quand il est parsé, alors aucune exception n'est levée.
- [ ] Étant donné MapVisibility.hidden, quand toApi() est appelé, alors la valeur est la chaîne 'hidden'.
- [ ] Étant donné la fixture monde, quand totalSupporters est lu, alors il vaut 12480 et totalCountries 96.
- [ ] Étant donné le code des entités, quand on le parcourt, alors aucun attribut ne stocke de coordonnées d'un utilisateur.

## 🧪 Tests à écrire

- [ ] map_aggregate_model_test : parse la fixture monde et vérifie les 3 pays.
- [ ] map_aggregate_model_test : count négatif rejeté (ParseFailure).
- [ ] map_visibility_test : aller-retour toApi/fromApi pour les 3 valeurs.
- [ ] local_group_summary_model_test : nextEventLabel absent -> null.
- [ ] entities_equatable_test : égalité par valeur.

## ♿ Accessibilité et i18n

- Aucun libellé dans cette issue ; les noms de pays sont fournis localisés par l'API (Accept-Language).

## 📚 Références

- CDC Global §2.8
- CDC Global §2.16.2
- CDC Backend §3.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
