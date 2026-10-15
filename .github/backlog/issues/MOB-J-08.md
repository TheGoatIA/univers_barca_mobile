> **MOB-J-08** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Le niveau de détail passe de pays à région puis ville selon le zoom. Le client ne recalcule rien, il redemande simplement les agrégats adaptés.

## ✅ Objectif

Gérer les gestes de carte (pinch, pan, double tap) et déclencher des requêtes avec debounce et bbox.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `J-01` — Carte du monde
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__phone_light.webp?raw=true' width='230' alt='J-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__phone_dark.webp?raw=true' width='230' alt='J-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__tablet_light.webp?raw=true' width='330' alt='J-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-01_carte-du-monde__tablet_dark.webp?raw=true' width='330' alt='J-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Rechercher un pays ou une ville » · « Tous » · « Groupes » · « Watch parties » · « Près de moi » · « Dans le monde » · « 12 480 culés » · « 96 pays » · « 🇪🇸 » · « Espagne » · « 5 210 » · « 🇫🇷 » · « France » · « 2 140 » · « 🇨🇲 » · « Cameroun » · « 1 240 »

**Composants repérés** : `avatar`, `chip`, `map`

</details>

**Issues liées sur ce même écran :** [API-COMM-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-07%5D%22) · [API-COMM-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-08%5D%22) · [API-COMM-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-09%5D%22) · [API-COMM-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-10%5D%22) · [API-COMM-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-30%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [API-COMM-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-33%5D%22) · [MOB-J-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-01%5D%22) · [MOB-J-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-02%5D%22) · [MOB-J-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-04%5D%22) · [MOB-J-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-05%5D%22) · [MOB-J-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-06%5D%22) · [MOB-J-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-07%5D%22) · [MOB-J-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-09%5D%22) · [MOB-J-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-23%5D%22) · [MOB-J-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-24%5D%22) · [MOB-J-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-25%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22) · [MOB-J-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-27%5D%22)

#### `J-02` — Zoom pays — Cameroun
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__phone_light.webp?raw=true' width='230' alt='J-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__phone_dark.webp?raw=true' width='230' alt='J-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__tablet_light.webp?raw=true' width='330' alt='J-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-02_zoom-pays-cameroun__tablet_dark.webp?raw=true' width='330' alt='J-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Rechercher un pays ou une ville » · « Tous » · « Groupes » · « Watch parties » · « Près de moi » · « Cameroun · 1 240 culés » · « Groupes locaux » · « Créer » · « Culés Cameroun » · « Yaoundé · 721 membres · » · « Watch party sam. » · « Rejoindre » · « Culés Douala » · « Douala · 486 membres » · « Barça Bafoussam » · « Bafoussam · 98 membres »

**Composants repérés** : `avatar`, `btn`, `chip`, `map`

</details>

**Issues liées sur ce même écran :** [API-COMM-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-09%5D%22) · [API-COMM-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-11%5D%22) · [API-COMM-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-14%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-J-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-01%5D%22) · [MOB-J-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-02%5D%22) · [MOB-J-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-04%5D%22) · [MOB-J-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-07%5D%22) · [MOB-J-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-09%5D%22) · [MOB-J-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-10%5D%22) · [MOB-J-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-23%5D%22) · [MOB-J-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-24%5D%22) · [MOB-J-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-25%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22) · [MOB-J-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-27%5D%22)

#### `J-03` — Zoom ville — Yaoundé
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__phone_light.webp?raw=true' width='230' alt='J-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__phone_dark.webp?raw=true' width='230' alt='J-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__tablet_light.webp?raw=true' width='330' alt='J-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-03_zoom-ville-yaounde__tablet_dark.webp?raw=true' width='330' alt='J-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Rechercher un pays ou une ville » · « Tous » · « Groupes » · « Watch parties » · « Près de moi » · « Yaoundé · ≈ 720 culés » · « Autour de toi » · « Zone approximative » · « Aucune position exacte n'est affichée : seuls des compteurs par zone et les groupes publics apparaissent. » · « Culés Cameroun » · « Yaoundé · Bastos · 721 membres · » · « Watch party sam. » · « Rejoindre »

**Composants repérés** : `avatar`, `btn`, `card`, `chip`, `map`

</details>

**Issues liées sur ce même écran :** [API-COMM-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-02%5D%22) · [API-COMM-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-07%5D%22) · [API-COMM-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-08%5D%22) · [API-COMM-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-09%5D%22) · [API-COMM-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-11%5D%22) · [API-COMM-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-13%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-J-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-01%5D%22) · [MOB-J-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-02%5D%22) · [MOB-J-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-04%5D%22) · [MOB-J-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-07%5D%22) · [MOB-J-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-09%5D%22) · [MOB-J-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-11%5D%22) · [MOB-J-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-23%5D%22) · [MOB-J-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-24%5D%22) · [MOB-J-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-25%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22) · [MOB-J-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-27%5D%22)

## 📐 Règles de gestion

- Debounce de 400 ms après la fin du geste (onMapEvent MapEventMoveEnd) avant de requêter.
- Seuils de zoom : < 4 pays, 4 à 7 région, >= 8 ville ; hysteresis de 0,3 niveau pour éviter les va-et-vient.
- bbox arrondie à 0,5° pour augmenter les hits de cache et ne pas révéler de position précise.
- Plafond de 200 agrégats affichés ; au-delà, regroupement visuel par priorité de count.
- Le geste de pan est limité aux bornes du monde (CameraConstraint.contain).

## 🔄 Comportement et états

- Zoom pays : le fil d'Ariane de la feuille passe de « Dans le monde » à « Cameroun · 1 240 culés ».
- Zoom ville : la feuille affiche « Yaoundé · ≈ 720 culés » (valeur approximative préfixée ≈).
- Retour monde : bouton retour ou pinch-out ramène à J-01.

## 🛠️ Tâches

- [ ] Créer core/utils/map_zoom_resolver.dart (zoom -> MapLevel avec hystérésis).
- [ ] Créer widgets/community_map_view.dart : écouteur MapEventMoveEnd -> MapZoomChanged via debounce 400 ms.
- [ ] Implémenter bbox_rounding.dart (arrondi 0,5°).
- [ ] Gérer MapOptions(minZoom: 2, maxZoom: 14, cameraConstraint).
- [ ] Implémenter animateToZone(zone) avec AnimatedMapController.
- [ ] Limiter à 200 agrégats dans MapLoaded.
- [ ] Instrumenter map_zoom_level dans les analytics (niveau, pas de coordonnées).
- [ ] Tests unitaires du resolver et du debounce.

## ✔️ Critères d'acceptation

- [ ] Étant donné un zoom 3.9 -> 4.1, quand le geste se termine, alors une seule requête level=region part.
- [ ] Étant donné un pan rapide, quand il dure 1 s, alors aucune requête n'est émise avant la fin du geste + 400 ms.
- [ ] Étant donné une bbox de 12,23°, quand elle est envoyée, alors elle est arrondie à des multiples de 0,5°.
- [ ] Étant donné un zoom 9, quand la requête part, alors level=city.
- [ ] Étant donné 350 agrégats reçus, quand ils sont rendus, alors 200 sont affichés.

## 🧪 Tests à écrire

- [ ] map_zoom_resolver_test : seuils et hystérésis.
- [ ] bbox_rounding_test : arrondi.
- [ ] community_map_view_test : debounce.
- [ ] community_map_bloc_test : level dérivé.

## 🔗 Dépendances

À réaliser après : `MOB-J-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.7.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
