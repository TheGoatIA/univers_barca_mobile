> **MOB-O-28** · Tests · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Les notifications mêlent UI, services natifs et réseau : tests ciblés indispensables.

## ✅ Objectif

Constituer la suite de tests du module.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `O-01` — Centre de préférences
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-01_centre-de-preferences__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-01_centre-de-preferences__phone_light.webp?raw=true' width='230' alt='O-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-01_centre-de-preferences__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-01_centre-de-preferences__phone_dark.webp?raw=true' width='230' alt='O-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-01_centre-de-preferences__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-01_centre-de-preferences__tablet_light.webp?raw=true' width='330' alt='O-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-01_centre-de-preferences__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-01_centre-de-preferences__tablet_dark.webp?raw=true' width='330' alt='O-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Préférences » · « Choisis ce que tu veux recevoir. Tu peux tout modifier à tout moment. » · « Matchs » · « Rappel, mi-temps, résultat final » · « Série en danger » · « Rappel avant minuit » · « Anniversaires & histoire » · « Joueurs, dates marquantes » · « Activité des groupes rejoints » · « Fermeture des compositions » · « Nouveautés » · « Annonces de l’équipe » · « Heures calmes » · « 23:00 – 07:00 »

**Composants repérés** : `card`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-01%5D%22) · [API-NOTIF-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-02%5D%22) · [API-NOTIF-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-04%5D%22) · [API-NOTIF-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-05%5D%22) · [API-NOTIF-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-06%5D%22) · [API-NOTIF-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-16%5D%22) · [API-NOTIF-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-18%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [API-NOTIF-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-31%5D%22) · [MOB-O-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-01%5D%22) · [MOB-O-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-02%5D%22) · [MOB-O-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-03%5D%22) · [MOB-O-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-04%5D%22) · [MOB-O-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-05%5D%22) · [MOB-O-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-06%5D%22) · [MOB-O-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-07%5D%22) · [MOB-O-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-12%5D%22) · [MOB-O-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-13%5D%22) · [MOB-O-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-24%5D%22) · [MOB-O-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-26%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22)

#### `O-02` — Détail — rappels de match
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-02_detail-rappels-de-match__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-02_detail-rappels-de-match__phone_light.webp?raw=true' width='230' alt='O-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-02_detail-rappels-de-match__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-02_detail-rappels-de-match__phone_dark.webp?raw=true' width='230' alt='O-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-02_detail-rappels-de-match__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-02_detail-rappels-de-match__tablet_light.webp?raw=true' width='330' alt='O-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-02_detail-rappels-de-match__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-02_detail-rappels-de-match__tablet_dark.webp?raw=true' width='330' alt='O-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Matchs » · « Pour tous les matchs de l'équipe première » · « Rappel 1 h avant le coup d’envoi » · « Coup d’envoi » · « Mi-temps » · « Résultat final » · « Buts en direct » · « Compétitions suivies » · « Liga » · « Ligue des champions » · « Coupe du Roi » · « Amicaux »

**Composants repérés** : `chip`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-04%5D%22) · [API-NOTIF-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-05%5D%22) · [API-NOTIF-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-13%5D%22) · [API-NOTIF-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-14%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [MOB-O-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-02%5D%22) · [MOB-O-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-06%5D%22) · [MOB-O-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-08%5D%22) · [MOB-O-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-26%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22)

#### `O-03` — Détail — série en danger
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__phone_light.webp?raw=true' width='230' alt='O-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__phone_dark.webp?raw=true' width='230' alt='O-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__tablet_light.webp?raw=true' width='330' alt='O-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__tablet_dark.webp?raw=true' width='330' alt='O-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Série » · « Protège ta série de 12 jours » · « Une notification discrète t'avertit si le jeu du jour n'est pas joué. » · « Activer le rappel » · « Heure du rappel » · « Aperçu » · « Ta série est en danger 🔥 » · « Joue à Guess the Player avant minuit. »

**Composants repérés** : `card`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-04%5D%22) · [API-NOTIF-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-15%5D%22) · [API-NOTIF-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-16%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [MOB-O-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-02%5D%22) · [MOB-O-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-06%5D%22) · [MOB-O-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-09%5D%22) · [MOB-O-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-11%5D%22) · [MOB-O-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-26%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22)

#### `O-04` — Heures calmes
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__phone_light.webp?raw=true' width='230' alt='O-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__phone_dark.webp?raw=true' width='230' alt='O-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__tablet_light.webp?raw=true' width='330' alt='O-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__tablet_dark.webp?raw=true' width='330' alt='O-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Heures calmes » · « Activer les heures calmes » · « De » · « Jours » · « Les alertes de match en direct ne sont jamais silencieuses pour les rencontres que tu suis. »

**Composants repérés** : `card`, `chip`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-01%5D%22) · [API-NOTIF-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-04%5D%22) · [API-NOTIF-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-05%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [MOB-O-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-02%5D%22) · [MOB-O-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-06%5D%22) · [MOB-O-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-10%5D%22) · [MOB-O-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-11%5D%22) · [MOB-O-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-24%5D%22) · [MOB-O-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-26%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22)

#### `O-05` — Boîte de réception
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__phone_light.webp?raw=true' width='230' alt='O-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__phone_dark.webp?raw=true' width='230' alt='O-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__tablet_light.webp?raw=true' width='330' alt='O-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__tablet_dark.webp?raw=true' width='330' alt='O-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Notifications » · « Toutes » · « Matchs » · « Tout lire » · « Match dans 1 h » · « Barça – Real Madrid · Liga » · « il y a 5 min » · « Ta série est en danger » · « Joue avant minuit » · « il y a 3 h » · « Nouveau message dans Culés Cameroun » · « Mamadou : « Qui est chaud pour… » » · « Hier » · « Anniversaire de Pedri » · « Il fête ses 23 ans aujourd’hui 🎂 » · « Badge débloqué » · « Série de 10 jours » · « 12 oct. »

**Composants repérés** : `btn`, `chip`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-01%5D%22) · [API-NOTIF-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-12%5D%22) · [API-NOTIF-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-17%5D%22) · [API-NOTIF-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-19%5D%22) · [API-NOTIF-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-20%5D%22) · [API-NOTIF-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-21%5D%22) · [API-NOTIF-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-28%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [API-NOTIF-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-31%5D%22) · [MOB-O-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-01%5D%22) · [MOB-O-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-02%5D%22) · [MOB-O-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-03%5D%22) · [MOB-O-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-04%5D%22) · [MOB-O-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-05%5D%22) · [MOB-O-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-15%5D%22) · [MOB-O-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-16%5D%22) · [MOB-O-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-18%5D%22) · [MOB-O-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-23%5D%22) · [MOB-O-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-26%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22)

#### `O-06` — Boîte de réception vide
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__phone_light.webp?raw=true' width='230' alt='O-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__phone_dark.webp?raw=true' width='230' alt='O-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__tablet_light.webp?raw=true' width='330' alt='O-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__tablet_dark.webp?raw=true' width='330' alt='O-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Notifications » · « Rien de nouveau » · « Tes notifications apparaîtront ici : rappels de match, série, communauté… » · « Régler mes préférences »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-20%5D%22) · [API-NOTIF-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-21%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [MOB-O-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-03%5D%22) · [MOB-O-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-04%5D%22) · [MOB-O-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-15%5D%22) · [MOB-O-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-17%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22)

#### `O-07` — Notifications désactivées
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-07_notifications-desactivees__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-07_notifications-desactivees__phone_light.webp?raw=true' width='230' alt='O-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-07_notifications-desactivees__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-07_notifications-desactivees__phone_dark.webp?raw=true' width='230' alt='O-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-07_notifications-desactivees__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-07_notifications-desactivees__tablet_light.webp?raw=true' width='330' alt='O-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-07_notifications-desactivees__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-07_notifications-desactivees__tablet_dark.webp?raw=true' width='330' alt='O-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Préférences » · « Notifications désactivées » · « Tu ne recevras ni rappels de match ni alertes de série. L'application reste pleinement utilisable. » · « Activer dans les réglages » · « Matchs » · « Rappel, mi-temps, résultat final » · « Série en danger » · « Rappel avant minuit »

**Composants repérés** : `btn`, `card`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-02%5D%22) · [API-NOTIF-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-03%5D%22) · [API-NOTIF-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-04%5D%22) · [API-NOTIF-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-06%5D%22) · [API-NOTIF-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-11%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [MOB-O-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-06%5D%22) · [MOB-O-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-12%5D%22) · [MOB-O-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-13%5D%22) · [MOB-O-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-14%5D%22) · [MOB-O-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-24%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22)

#### `O-08` — Écran verrouillé — rappel de match
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__phone_light.webp?raw=true' width='230' alt='O-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__phone_dark.webp?raw=true' width='230' alt='O-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__tablet_light.webp?raw=true' width='330' alt='O-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__tablet_dark.webp?raw=true' width='330' alt='O-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Jeudi 15 octobre » · « Match dans 1 h ⚽ » · « maintenant » · « FC Barcelone – Real Madrid · Liga · 20:00 WAT »

</details>

**Issues liées sur ce même écran :** [API-NOTIF-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-07%5D%22) · [API-NOTIF-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-08%5D%22) · [API-NOTIF-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-09%5D%22) · [API-NOTIF-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-12%5D%22) · [API-NOTIF-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-13%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [API-NOTIF-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-30%5D%22) · [MOB-O-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-11%5D%22) · [MOB-O-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-18%5D%22) · [MOB-O-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-19%5D%22) · [MOB-O-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-20%5D%22) · [MOB-O-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-25%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22)

#### `O-09` — Écran verrouillé — autres notifications
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-09_ecran-verrouille-autres-notifications__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-09_ecran-verrouille-autres-notifications__phone_light.webp?raw=true' width='230' alt='O-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-09_ecran-verrouille-autres-notifications__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-09_ecran-verrouille-autres-notifications__phone_dark.webp?raw=true' width='230' alt='O-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-09_ecran-verrouille-autres-notifications__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-09_ecran-verrouille-autres-notifications__tablet_light.webp?raw=true' width='330' alt='O-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-09_ecran-verrouille-autres-notifications__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-09_ecran-verrouille-autres-notifications__tablet_dark.webp?raw=true' width='330' alt='O-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Jeudi 15 octobre » · « Ta série est en danger 🔥 » · « Joue au Guess the Player avant minuit. » · « Anniversaire de Pedri 🎂 » · « Il fête ses 23 ans aujourd’hui. » · « Culés Cameroun » · « Mamadou : « Qui est chaud pour samedi ? » » · « Résultat final » · « hier » · « Barça 3 – 1 Real Madrid · Voir le résumé »

</details>

**Issues liées sur ce même écran :** [API-NOTIF-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-07%5D%22) · [API-NOTIF-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-08%5D%22) · [API-NOTIF-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-12%5D%22) · [API-NOTIF-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-14%5D%22) · [API-NOTIF-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-15%5D%22) · [API-NOTIF-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-16%5D%22) · [API-NOTIF-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-17%5D%22) · [API-NOTIF-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-18%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [MOB-O-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-18%5D%22) · [MOB-O-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-19%5D%22) · [MOB-O-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-21%5D%22) · [MOB-O-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-25%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22)

#### `O-10` — Notification dans l’application
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-10_notification-dans-l-application__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-10_notification-dans-l-application__phone_light.webp?raw=true' width='230' alt='O-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-10_notification-dans-l-application__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-10_notification-dans-l-application__phone_dark.webp?raw=true' width='230' alt='O-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-10_notification-dans-l-application__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-10_notification-dans-l-application__tablet_light.webp?raw=true' width='330' alt='O-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-10_notification-dans-l-application__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-10_notification-dans-l-application__tablet_dark.webp?raw=true' width='330' alt='O-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « But du Barça ! ⚽ 2 – 1 » · « Raphinha (67') · Touche pour suivre le live » · « maintenant »

**Composants repérés** : `avatar`, `card`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-07%5D%22) · [API-NOTIF-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-08%5D%22) · [API-NOTIF-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-12%5D%22) · [API-NOTIF-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-14%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [MOB-O-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-18%5D%22) · [MOB-O-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-19%5D%22) · [MOB-O-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-22%5D%22) · [MOB-O-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-25%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22)

## 📐 Règles de gestion

- Couverture ≥ 80 % domaine + cubits (CDC Flutter §10.2).
- Goldens 2 tailles x 2 thèmes pour O-01 à O-07 et O-10.
- Scénarios : première activation avec priming, refus, réactivation, push premier plan, deep link app fermée, hors-ligne.

## 🛠️ Tâches

- [ ] Créer `test/features/notifications/` (cubits, data, presentation) et fixtures.
- [ ] Créer `integration_test/notifications_flow_test.dart` avec FCM mocké.
- [ ] Ajouter `test/goldens/notifications/`.
- [ ] Mocker `PermissionService`, `FirebaseMessaging`, `FlutterLocalNotificationsPlugin`.
- [ ] Tests de contrat de payload.
- [ ] Intégrer à la CI (`flutter test --coverage`).
- [ ] Publier le rapport lcov.
- [ ] Documenter dans le README.

## ✔️ Critères d'acceptation

- [ ] Étant donné FCM mocké, quand un push arrive au premier plan, alors la bannière O-10 s'affiche.
- [ ] Étant donné la permission refusée, quand O-01 s'ouvre, alors la carte O-07 est visible.
- [ ] Étant donné un deep link initial, quand l'app démarre, alors la cible est ouverte après authentification.
- [ ] Étant donné la CI, quand la PR est ouverte, alors la couverture ≥ 80 % est vérifiée.

## 🧪 Tests à écrire

- [ ] Intégration : priming + activation.
- [ ] Intégration : push foreground.
- [ ] Intégration : deep link app fermée.
- [ ] Golden : suite complète.
- [ ] bloc_test : préférences hors-ligne.

## 🔗 Dépendances

À réaliser après : `MOB-O-16` · `MOB-O-17` · `MOB-O-14` · `MOB-O-22` · `MOB-O-21` · `MOB-O-09` · `MOB-O-08` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §10

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
