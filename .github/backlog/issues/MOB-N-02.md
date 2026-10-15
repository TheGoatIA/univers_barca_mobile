> **MOB-N-02** · API · Priorité **P0** · Taille **L** · Phase 1 — MVP

## 🎯 Contexte

L'assistant s'appuie sur `/assistant/conversations*` (CDC Backend §3.8). Cette issue crée la chaîne data (hors streaming, traité à part) en suivant la feature de référence `players`.

## ✅ Objectif

Exposer des use cases `Either<Failure,T>` pour créer, lister, lire une conversation et envoyer un message en mode non streamé (repli).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `N-02` — Chat — nouvelle conversation
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-02_chat-nouvelle-conversation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-02_chat-nouvelle-conversation__phone_light.webp?raw=true' width='230' alt='N-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-02_chat-nouvelle-conversation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-02_chat-nouvelle-conversation__phone_dark.webp?raw=true' width='230' alt='N-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-02_chat-nouvelle-conversation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-02_chat-nouvelle-conversation__tablet_light.webp?raw=true' width='330' alt='N-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-02_chat-nouvelle-conversation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-02_chat-nouvelle-conversation__tablet_dark.webp?raw=true' width='330' alt='N-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Salut Boris ! Je suis » · « , ton compagnon culé. Pose-moi une question sur un joueur, un match ou l’histoire du club. » · « Suggestions » · « Lancer le quiz du jour » · « Parle-moi de Lamine Yamal » · « Messi ou Xavi ? » · « Quand joue le Barça ? » · « Crée-moi un wallpaper » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-IA-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-01%5D%22) · [API-IA-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-08%5D%22) · [API-IA-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-16%5D%22) · [API-IA-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-19%5D%22) · [API-IA-25](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-25%5D%22) · [API-IA-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-32%5D%22) · [API-IA-34](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-34%5D%22) · [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-07%5D%22) · [MOB-N-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-08%5D%22) · [MOB-N-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-26%5D%22) · [MOB-N-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-27%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-30%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

#### `N-03` — Conversation — réponse sourcée
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-03_conversation-reponse-sourcee__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-03_conversation-reponse-sourcee__phone_light.webp?raw=true' width='230' alt='N-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-03_conversation-reponse-sourcee__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-03_conversation-reponse-sourcee__phone_dark.webp?raw=true' width='230' alt='N-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-03_conversation-reponse-sourcee__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-03_conversation-reponse-sourcee__tablet_light.webp?raw=true' width='330' alt='N-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-03_conversation-reponse-sourcee__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-03_conversation-reponse-sourcee__tablet_dark.webp?raw=true' width='330' alt='N-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Combien de buts Lewandowski a marqué cette saison ? » · « Robert Lewandowski a inscrit » · « 11 buts » · « en » · « 14 matchs » · « toutes compétitions confondues cette saison (données au 14 octobre). » · « Joueurs » · « Matchs 2026-27 » · « Et combien de passes décisives ? » · « Il compte » · « 3 passes décisives » · « . Veux-tu que je le compare à un autre attaquant ? » · « Comparer avec un autre joueur » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-IA-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-01%5D%22) · [API-IA-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-02%5D%22) · [API-IA-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-05%5D%22) · [API-IA-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-06%5D%22) · [API-IA-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-10%5D%22) · [API-IA-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-12%5D%22) · [API-IA-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-14%5D%22) · [API-IA-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-15%5D%22) · [API-IA-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-16%5D%22) · [API-IA-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-17%5D%22) · [API-IA-25](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-25%5D%22) · [API-IA-26](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-26%5D%22) · [API-IA-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-29%5D%22) · [API-IA-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-32%5D%22) · [API-IA-34](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-34%5D%22) · [MOB-N-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-01%5D%22) · [MOB-N-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-04%5D%22) · [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-09%5D%22) · [MOB-N-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-10%5D%22) · [MOB-N-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-23%5D%22) · [MOB-N-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-24%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-29%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

#### `N-12` — Erreur d’envoi — réessayer
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-12_erreur-d-envoi-reessayer__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-12_erreur-d-envoi-reessayer__phone_light.webp?raw=true' width='230' alt='N-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-12_erreur-d-envoi-reessayer__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-12_erreur-d-envoi-reessayer__phone_dark.webp?raw=true' width='230' alt='N-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-12_erreur-d-envoi-reessayer__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-12_erreur-d-envoi-reessayer__tablet_light.webp?raw=true' width='330' alt='N-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-12_erreur-d-envoi-reessayer__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-12_erreur-d-envoi-reessayer__tablet_dark.webp?raw=true' width='330' alt='N-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Salut ! Que veux-tu savoir ? » · « Quand joue le Barça ? » · « Échec de l’envoi · » · « Réessayer » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-IA-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-06%5D%22) · [API-IA-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-07%5D%22) · [API-IA-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-15%5D%22) · [API-IA-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-17%5D%22) · [API-IA-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-18%5D%22) · [API-IA-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-20%5D%22) · [API-IA-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-21%5D%22) · [MOB-N-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-04%5D%22) · [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-18%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

#### `N-14` — Quota de messages atteint
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__phone_light.webp?raw=true' width='230' alt='N-14 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__phone_dark.webp?raw=true' width='230' alt='N-14 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__tablet_light.webp?raw=true' width='330' alt='N-14 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__tablet_dark.webp?raw=true' width='330' alt='N-14 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Tu as atteint ta limite quotidienne de 40 messages. 🙏 » · « Retour dans » · « 04:12:30 » · « Le quota se renouvelle chaque jour pour garder le service gratuit. » · « Limite quotidienne atteinte » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-IA-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-03%5D%22) · [API-IA-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-17%5D%22) · [API-IA-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-19%5D%22) · [API-IA-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-20%5D%22) · [API-IA-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-21%5D%22) · [API-IA-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-32%5D%22) · [API-IA-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-33%5D%22) · [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-08%5D%22) · [MOB-N-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-20%5D%22) · [MOB-N-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-25%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-30%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

#### `N-15` — Historique des conversations
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-15_historique-des-conversations__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-15_historique-des-conversations__phone_light.webp?raw=true' width='230' alt='N-15 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-15_historique-des-conversations__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-15_historique-des-conversations__phone_dark.webp?raw=true' width='230' alt='N-15 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-15_historique-des-conversations__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-15_historique-des-conversations__tablet_light.webp?raw=true' width='330' alt='N-15 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-15_historique-des-conversations__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-15_historique-des-conversations__tablet_dark.webp?raw=true' width='330' alt='N-15 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Conversations » · « Nouvelle » · « Rechercher » · « Wembley 2011 » · « Raconte-moi la finale… » · « Aujourd'hui » · « Stats Lewandowski » · « 11 buts en 14 matchs » · « Hier » · « Messi ou Xavi ? » · « Voici la comparaison… » · « 12 oct. » · « Calendrier novembre » · « Le prochain match est… » · « 10 oct. »

**Composants repérés** : `avatar`, `btn`, `card`, `search`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-IA-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-01%5D%22) · [API-IA-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-16%5D%22) · [API-IA-26](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-26%5D%22) · [API-IA-27](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-27%5D%22) · [API-IA-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-28%5D%22) · [API-IA-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-32%5D%22) · [API-IA-34](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-34%5D%22) · [MOB-N-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-01%5D%22) · [MOB-N-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-04%5D%22) · [MOB-N-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-21%5D%22) · [MOB-N-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-22%5D%22) · [MOB-N-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-23%5D%22) · [MOB-N-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-27%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-29%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

## 📐 Règles de gestion

- Mapping d'erreurs : 429 `QUOTA_EXCEEDED` -> `AssistantQuotaFailure(resetsAt)` ; 422 `CONTENT_MODERATED` -> `ModerationFailure` ; 503/timeout -> `AssistantUnavailableFailure` ; réseau -> `NetworkFailure` ; 401 géré par l'intercepteur de refresh
- Timeout d'envoi non streamé : 30 s (appel LLM + modération sortie, CDC Backend §11.5)
- `Accept-Language` ajouté par `LocaleInterceptor` mais la langue de réponse suit la langue détectée de la question (CDC Global §2.2)
- Pagination curseur : liste 20, historique d'une conversation 30 messages

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `POST` | `/api/v1/assistant/conversations` | Crée une conversation vide (complément : le CDC §11.5 prévoit « création d'une nouvelle conversation ») | - | 201 {"data":{"id":"...","createdAt":"ISO"}} |
| `POST` | `/api/v1/assistant/conversations/:id/messages` | Envoie un message ; avec `Accept: text/event-stream` la réponse est diffusée en SSE (événements meta, token, block, actions, sources, done, error), sinon JSON complet | {"content":"string 1..500","clientMessageId":"uuid"} | 200 {"success":true,"data":{"userMessage":{...},"assistantMessage":{"id":"...","content":"...","lang":"fr","status":"ok\|out_of_scope\|moderated\|no_data","blocks":[],"actions":[],"sources":[],"suggestions":[]},"quota":{"limit":40,"remaining":12,"resetsAt":"ISO"}}} |
| `GET` | `/api/v1/assistant/conversations` | Liste des conversations (tri lastMessageAt desc, recherche plein texte) | ?q=&cursor=&limit=20 | {"data":{"items":[{"id":"...","title":"Wembley 2011","preview":"Raconte-moi la finale…","lastMessageAt":"ISO"}],"hasMore":false,"nextCursor":null}} |
| `GET` | `/api/v1/assistant/conversations/:id` | Historique complet d'une conversation | ?cursor=&limit=30 | {"data":{"id":"...","messages":[{"id":"...","role":"user\|assistant","content":"...","metadata":{"lang":"fr","sources":[...]},"createdAt":"ISO"}],"hasMore":true,"nextCursor":"..."}} |

## 🛠️ Tâches

- [ ] Créer `data/datasources/assistant_remote_datasource.dart` (`@ChopperApi(baseUrl:'/assistant')`) : createConversation, listConversations, getConversation, sendMessage
- [ ] Générer `.chopper.dart`
- [ ] Créer `domain/repositories/assistant_repository.dart` et `data/repositories/assistant_repository_impl.dart`
- [ ] Créer `AssistantFailureMapper` (code API -> Failure)
- [ ] Use cases : `CreateConversationUseCase`, `SendMessageUseCase`, `GetConversationUseCase`, `ListConversationsUseCase`
- [ ] Enregistrer via `@injectable`/`register_module.dart` et régénérer `injection.config.dart`
- [ ] Conserver `traceId` dans les Failures
- [ ] Tests mocktail

## ✔️ Critères d'acceptation

- [ ] Étant donné une réponse 429 quand SendMessageUseCase est appelé alors `Left(AssistantQuotaFailure)` contient `resetsAt`
- [ ] Étant donné une réponse 200 alors `Right(AssistantReply)` contient les blocs, actions et sources
- [ ] Étant donné un timeout de 30 s alors `Left(AssistantUnavailableFailure)`
- [ ] Étant donné une réponse 422 CONTENT_MODERATED alors `Left(ModerationFailure)`

## 🧪 Tests à écrire

- [ ] assistant_repository_test : succès
- [ ] assistant_repository_test : 429
- [ ] assistant_repository_test : 422
- [ ] assistant_repository_test : timeout
- [ ] assistant_repository_test : pagination historique
- [ ] failure_mapper_test

## 🔗 Dépendances

À réaliser après : `MOB-N-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §3.8, §11.5, §11.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
