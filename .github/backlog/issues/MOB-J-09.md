> **MOB-J-09** · Fonctionnel · Priorité **P1** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Une rangée de chips sous la barre de recherche filtre ce que la carte affiche : tout, uniquement les groupes locaux, uniquement les zones avec watch party, ou la zone proche de l'utilisateur.

## ✅ Objectif

Implémenter le filtre actif (un seul à la fois) et sa persistance de session.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `J-01` — Carte du monde
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__phone_light.webp?raw=true' width='230' alt='J-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__phone_dark.webp?raw=true' width='230' alt='J-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__tablet_light.webp?raw=true' width='330' alt='J-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__tablet_dark.webp?raw=true' width='330' alt='J-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Rechercher un pays ou une ville » · « Tous » · « Groupes » · « Watch parties » · « Près de moi » · « Dans le monde » · « 12 480 culés » · « 96 pays » · « 🇪🇸 » · « Espagne » · « 5 210 » · « 🇫🇷 » · « France » · « 2 140 » · « 🇨🇲 » · « Cameroun » · « 1 240 »

**Composants repérés** : `avatar`, `chip`, `map`

</details>

**Issues liées sur ce même écran :** [API-COMM-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-07%5D%22) · [API-COMM-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-08%5D%22) · [API-COMM-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-09%5D%22) · [API-COMM-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-10%5D%22) · [API-COMM-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-30%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [API-COMM-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-33%5D%22) · [MOB-J-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-01%5D%22) · [MOB-J-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-02%5D%22) · [MOB-J-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-04%5D%22) · [MOB-J-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-05%5D%22) · [MOB-J-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-06%5D%22) · [MOB-J-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-07%5D%22) · [MOB-J-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-08%5D%22) · [MOB-J-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-23%5D%22) · [MOB-J-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-24%5D%22) · [MOB-J-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-25%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22) · [MOB-J-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-27%5D%22)

#### `J-02` — Zoom pays — Cameroun
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__phone_light.webp?raw=true' width='230' alt='J-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__phone_dark.webp?raw=true' width='230' alt='J-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__tablet_light.webp?raw=true' width='330' alt='J-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__tablet_dark.webp?raw=true' width='330' alt='J-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Rechercher un pays ou une ville » · « Tous » · « Groupes » · « Watch parties » · « Près de moi » · « Cameroun · 1 240 culés » · « Groupes locaux » · « Créer » · « Culés Cameroun » · « Yaoundé · 721 membres · » · « Watch party sam. » · « Rejoindre » · « Culés Douala » · « Douala · 486 membres » · « Barça Bafoussam » · « Bafoussam · 98 membres »

**Composants repérés** : `avatar`, `btn`, `chip`, `map`

</details>

**Issues liées sur ce même écran :** [API-COMM-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-09%5D%22) · [API-COMM-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-11%5D%22) · [API-COMM-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-14%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-J-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-01%5D%22) · [MOB-J-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-02%5D%22) · [MOB-J-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-04%5D%22) · [MOB-J-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-07%5D%22) · [MOB-J-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-08%5D%22) · [MOB-J-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-10%5D%22) · [MOB-J-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-23%5D%22) · [MOB-J-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-24%5D%22) · [MOB-J-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-25%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22) · [MOB-J-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-27%5D%22)

#### `J-03` — Zoom ville — Yaoundé
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__phone_light.webp?raw=true' width='230' alt='J-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__phone_dark.webp?raw=true' width='230' alt='J-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__tablet_light.webp?raw=true' width='330' alt='J-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__tablet_dark.webp?raw=true' width='330' alt='J-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Rechercher un pays ou une ville » · « Tous » · « Groupes » · « Watch parties » · « Près de moi » · « Yaoundé · ≈ 720 culés » · « Autour de toi » · « Zone approximative » · « Aucune position exacte n'est affichée : seuls des compteurs par zone et les groupes publics apparaissent. » · « Culés Cameroun » · « Yaoundé · Bastos · 721 membres · » · « Watch party sam. » · « Rejoindre »

**Composants repérés** : `avatar`, `btn`, `card`, `chip`, `map`

</details>

**Issues liées sur ce même écran :** [API-COMM-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-02%5D%22) · [API-COMM-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-07%5D%22) · [API-COMM-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-08%5D%22) · [API-COMM-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-09%5D%22) · [API-COMM-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-11%5D%22) · [API-COMM-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-13%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-J-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-01%5D%22) · [MOB-J-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-02%5D%22) · [MOB-J-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-04%5D%22) · [MOB-J-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-07%5D%22) · [MOB-J-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-08%5D%22) · [MOB-J-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-11%5D%22) · [MOB-J-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-23%5D%22) · [MOB-J-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-24%5D%22) · [MOB-J-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-25%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22) · [MOB-J-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-27%5D%22)

#### `J-06` — Localisation non activée
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__phone_light.webp?raw=true' width='230' alt='J-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__phone_dark.webp?raw=true' width='230' alt='J-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__tablet_light.webp?raw=true' width='330' alt='J-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__tablet_dark.webp?raw=true' width='330' alt='J-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Rechercher un pays ou une ville » · « Tous » · « Groupes » · « Watch parties » · « Près de moi » · « Localisation non activée » · « Active-la pour trouver des culés près de toi, ou indique simplement ton pays et ta ville. » · « Activer la localisation » · « Saisir mon pays / ma ville »

**Composants repérés** : `avatar`, `btn`, `chip`, `map`

</details>

**Issues liées sur ce même écran :** [API-COMM-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-13%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-J-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-04%5D%22) · [MOB-J-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-14%5D%22) · [MOB-J-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-15%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22)

## 📐 Règles de gestion

- Un seul chip actif : fond bordeaux, texte blanc (« Tous » par défaut) ; les autres fond neutre.
- Groupes -> paramètre filter=groups ; Watch parties -> filter=watch_parties ; Tous -> aucun filtre.
- « Près de moi » centre la carte sur la zone approximative de l'utilisateur (ville enregistrée ou localisation approximative) ; si ni consentement ni zone manuelle, ouvre J-06.
- Le filtre actif est conservé pendant la session et réinitialisé à la déconnexion.
- Le bouton réglages de la barre de recherche ouvre la visibilité (J-09).

## 🛠️ Tâches

- [ ] Créer widgets/map_filter_chips.dart (ChoiceChip, scroll horizontal).
- [ ] Ajouter MapFilterChanged dans le BLoC et le paramètre filter dans MapQuery.
- [ ] Implémenter l'action « Près de moi » : lecture de UserZone (use case GetMyZone) puis MapZoneSelected(city).
- [ ] Rediriger vers J-06 si UserZone est null.
- [ ] Ajouter l'animation de sélection (AnimatedContainer 150 ms).
- [ ] Persister le filtre en mémoire dans le BLoC (pas de stockage disque).
- [ ] Ajouter analytics map_filter_changed (valeur du filtre).
- [ ] Tests widget du comportement des chips.

## ✔️ Critères d'acceptation

- [ ] Étant donné « Tous » actif, quand l'utilisateur tape « Groupes », alors seul ce chip est actif et la requête porte filter=groups.
- [ ] Étant donné aucun consentement et aucune zone, quand l'utilisateur tape « Près de moi », alors J-06 s'affiche.
- [ ] Étant donné une ville enregistrée « Yaoundé », quand l'utilisateur tape « Près de moi », alors la caméra se centre sur Yaoundé.
- [ ] Étant donné une déconnexion, quand l'utilisateur se reconnecte, alors le filtre est « Tous ».

## 🧪 Tests à écrire

- [ ] map_filter_chips_test : un seul actif.
- [ ] bloc_test : MapFilterChanged(groups) -> requête filter=groups.
- [ ] near_me_test : zone absente -> navigation J-06.
- [ ] near_me_test : zone présente -> MapZoneSelected.

## ♿ Accessibilité et i18n

- ARB : communityFilterAll « Tous », communityFilterGroups « Groupes », communityFilterWatchParties « Watch parties », communityFilterNearMe « Près de moi »
- Semantics selected sur le chip actif.

## 🔗 Dépendances

À réaliser après : `MOB-J-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.7.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
