> **MOB-N-25** · Tests · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Les principes du prompt système (CDC Global §8.5) se traduisent en statuts de réponse que l'app doit afficher correctement : périmètre strict, priorité aux données internes, transparence sur l'incertitude, ton et langue, modération.

## ✅ Objectif

Verrouiller le contrat client/serveur par des fixtures JSON versionnées, rejouées dans les tests widget.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `N-07` — Réponse en anglais
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-07_reponse-en-anglais__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-07_reponse-en-anglais__phone_light.webp?raw=true' width='230' alt='N-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-07_reponse-en-anglais__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-07_reponse-en-anglais__phone_dark.webp?raw=true' width='230' alt='N-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-07_reponse-en-anglais__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-07_reponse-en-anglais__tablet_light.webp?raw=true' width='330' alt='N-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-07_reponse-en-anglais__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-07_reponse-en-anglais__tablet_dark.webp?raw=true' width='330' alt='N-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « Online · FR / EN / ES » · « Who scored in the 2015 Champions League final? » · « Barcelona beat Juventus 3-1 in Berlin. » · « Rakitić » · « opened the scoring, followed by » · « Suárez » · « and » · « Neymar » · « Langue détectée : EN » · « Données : Matchs » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-IA-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-09%5D%22) · [API-IA-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-10%5D%22) · [API-IA-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-31%5D%22) · [MOB-N-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-01%5D%22) · [MOB-N-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-14%5D%22) · [MOB-N-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-27%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

#### `N-08` — Réponse en espagnol
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-08_reponse-en-espagnol__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-08_reponse-en-espagnol__phone_light.webp?raw=true' width='230' alt='N-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-08_reponse-en-espagnol__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-08_reponse-en-espagnol__phone_dark.webp?raw=true' width='230' alt='N-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-08_reponse-en-espagnol__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-08_reponse-en-espagnol__tablet_light.webp?raw=true' width='330' alt='N-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-08_reponse-en-espagnol__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-08_reponse-en-espagnol__tablet_dark.webp?raw=true' width='330' alt='N-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « ¿Quién es el máximo goleador histórico del club? » · « Lionel Messi » · « es el máximo goleador histórico del FC Barcelona con » · « 672 goles » · « en 778 partidos. » · « Idioma detectado : ES » · « Datos: Jugadores » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-IA-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-09%5D%22) · [API-IA-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-10%5D%22) · [API-IA-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-31%5D%22) · [MOB-N-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-01%5D%22) · [MOB-N-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-14%5D%22) · [MOB-N-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-27%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

#### `N-09` — Question hors périmètre
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-09_question-hors-perimetre__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-09_question-hors-perimetre__phone_light.webp?raw=true' width='230' alt='N-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-09_question-hors-perimetre__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-09_question-hors-perimetre__phone_dark.webp?raw=true' width='230' alt='N-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-09_question-hors-perimetre__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-09_question-hors-perimetre__tablet_light.webp?raw=true' width='330' alt='N-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-09_question-hors-perimetre__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-09_question-hors-perimetre__tablet_dark.webp?raw=true' width='330' alt='N-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Donne-moi la recette du thiéboudienne. » · « Je suis spécialisé dans l’univers du FC Barcelone et du football. Pour la cuisine, je ne suis pas le meilleur coéquipier 😉 En revanche, je peux te parler du Barça ! » · « Un quiz sur le club ? » · « Raconter une anecdote du jour » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-IA-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-06%5D%22) · [API-IA-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-08%5D%22) · [API-IA-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-09%5D%22) · [API-IA-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-12%5D%22) · [API-IA-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-13%5D%22) · [API-IA-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-31%5D%22) · [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-15%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-30%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

#### `N-10` — Message bloqué par la modération
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-10_message-bloque-par-la-moderation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-10_message-bloque-par-la-moderation__phone_light.webp?raw=true' width='230' alt='N-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-10_message-bloque-par-la-moderation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-10_message-bloque-par-la-moderation__phone_dark.webp?raw=true' width='230' alt='N-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-10_message-bloque-par-la-moderation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-10_message-bloque-par-la-moderation__tablet_light.webp?raw=true' width='330' alt='N-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-10_message-bloque-par-la-moderation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-10_message-bloque-par-la-moderation__tablet_dark.webp?raw=true' width='330' alt='N-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Message non traité » · « Ce type de contenu n’est pas autorisé par la charte de la communauté. Reformule ta question, je suis là pour t’aider. » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-IA-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-06%5D%22) · [API-IA-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-11%5D%22) · [API-IA-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-12%5D%22) · [API-IA-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-21%5D%22) · [API-IA-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-29%5D%22) · [API-IA-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-31%5D%22) · [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-16%5D%22) · [MOB-N-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-24%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

#### `N-11` — Information introuvable
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-11_information-introuvable__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-11_information-introuvable__phone_light.webp?raw=true' width='230' alt='N-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-11_information-introuvable__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-11_information-introuvable__phone_dark.webp?raw=true' width='230' alt='N-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-11_information-introuvable__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-11_information-introuvable__tablet_light.webp?raw=true' width='330' alt='N-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-11_information-introuvable__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-11_information-introuvable__tablet_dark.webp?raw=true' width='330' alt='N-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Quel était le prix du billet pour le Clásico de 1999 ? » · « Je n’ai pas cette information dans ma base de données et je préfère ne pas inventer. Je peux en revanche te donner le » · « score » · « et les » · « buteurs » · « de ce match. » · « Voir le match dans l’historique » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-IA-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-02%5D%22) · [API-IA-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-06%5D%22) · [API-IA-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-08%5D%22) · [API-IA-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-10%5D%22) · [API-IA-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-13%5D%22) · [API-IA-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-31%5D%22) · [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-17%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

#### `N-14` — Quota de messages atteint
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__phone_light.webp?raw=true' width='230' alt='N-14 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__phone_dark.webp?raw=true' width='230' alt='N-14 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__tablet_light.webp?raw=true' width='330' alt='N-14 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__tablet_dark.webp?raw=true' width='330' alt='N-14 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Tu as atteint ta limite quotidienne de 40 messages. 🙏 » · « Retour dans » · « 04:12:30 » · « Le quota se renouvelle chaque jour pour garder le service gratuit. » · « Limite quotidienne atteinte » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-IA-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-03%5D%22) · [API-IA-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-17%5D%22) · [API-IA-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-19%5D%22) · [API-IA-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-20%5D%22) · [API-IA-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-21%5D%22) · [API-IA-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-32%5D%22) · [API-IA-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-33%5D%22) · [MOB-N-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-02%5D%22) · [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-08%5D%22) · [MOB-N-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-20%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-30%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

## 📐 Règles de gestion

- Une fixture par principe : out_of_scope (recette de cuisine), no_data (prix du billet 1999), moderated (contenu interdit), réponse sourcée FR/EN/ES, quota 429
- Chaque fixture rend un écran golden correspondant (N-03, N-07, N-08, N-09, N-10, N-11, N-14)
- Un changement de schéma d'API casse le test (champ `status`, `blocks`, `actions` obligatoires)
- Fixtures partagées avec le dépôt API (même JSON schema) pour éviter les divergences

## 🛠️ Tâches

- [ ] Créer `test/fixtures/assistant/contracts/*.json` (≥ 8 fixtures)
- [ ] Créer `test/contracts/assistant_contract_test.dart` validant chaque fixture contre un JSON Schema
- [ ] Rejouer les fixtures dans un `FakeAssistantApi`
- [ ] Ajouter les goldens correspondants
- [ ] Cas limites : réponse vide, blocs inconnus, actions invalides
- [ ] Documenter la procédure de mise à jour
- [ ] Brancher dans la CI
- [ ] Lien vers l'issue API de schéma OpenAPI

## ✔️ Critères d'acceptation

- [ ] Étant donné la fixture out_of_scope alors l'écran N-09 est rendu sans style d'erreur
- [ ] Étant donné la fixture moderated alors N-10 est rendu et aucun Réessayer n'apparaît
- [ ] Étant donné la fixture no_data alors N-11 est rendu sans puce de source
- [ ] Étant donné un champ `status` absent alors le test de contrat échoue

## 🧪 Tests à écrire

- [ ] contract_test : schéma de chaque fixture
- [ ] widget_test : N-09 depuis fixture
- [ ] widget_test : N-10 depuis fixture
- [ ] widget_test : N-11 depuis fixture
- [ ] widget_test : N-07/N-08 langues
- [ ] widget_test : N-14 quota

## 🔗 Dépendances

À réaliser après : `MOB-N-15` · `MOB-N-16` · `MOB-N-17` · `MOB-N-14` · `MOB-N-20` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §8.5
- CDC Backend §11.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
