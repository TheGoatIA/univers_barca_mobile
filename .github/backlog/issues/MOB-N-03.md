> **MOB-N-03** · Infrastructure · Priorité **P0** · Taille **L** · Phase 1 — MVP

## 🎯 Contexte

Le CDC Flutter §7.10 demande un affichage progressif si le backend expose un flux. M-04 de la maquette (N-04) montre « Barça AI écrit… », le curseur et un bouton pause/stop. Le package `http` (déjà présent) permet de lire un flux `text/event-stream` via `StreamedResponse`.

## ✅ Objectif

Fournir un client SSE robuste, annulable, qui émet des événements typés vers le BLoC, avec repli automatique sur la réponse JSON classique.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `N-04` — Réponse en cours (streaming)
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-04_reponse-en-cours-streaming__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-04_reponse-en-cours-streaming__phone_light.webp?raw=true' width='230' alt='N-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-04_reponse-en-cours-streaming__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-04_reponse-en-cours-streaming__phone_dark.webp?raw=true' width='230' alt='N-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-04_reponse-en-cours-streaming__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-04_reponse-en-cours-streaming__tablet_light.webp?raw=true' width='330' alt='N-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-04_reponse-en-cours-streaming__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-04_reponse-en-cours-streaming__tablet_dark.webp?raw=true' width='330' alt='N-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Raconte-moi la finale de Wembley 2011. » · « Le 28 mai 2011, le Barça de Guardiola domine Manchester United (3-1) à Wembley. Pedro ouvre le score, Rooney égalise, puis Messi et Villa » · « Barça AI écrit… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-IA-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-05%5D%22) · [API-IA-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-06%5D%22) · [API-IA-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-18%5D%22) · [API-IA-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-32%5D%22) · [API-IA-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-33%5D%22) · [API-IA-34](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-34%5D%22) · [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-08%5D%22) · [MOB-N-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-09%5D%22) · [MOB-N-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-11%5D%22) · [MOB-N-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-23%5D%22) · [MOB-N-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-26%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-29%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

## 📐 Règles de gestion

- Requête `POST /assistant/conversations/:id/messages` avec `Accept: text/event-stream` ; si le serveur répond `application/json`, utiliser le parsing classique (repli)
- Événements : `meta` (ids, lang), `token` ({delta}), `block`, `actions`, `sources`, `done` (message final + quota), `error` ({code})
- Timeout d'inactivité 20 s entre deux événements -> erreur `StreamStalled` (M N-12) ; keep-alive `:ping` ignoré
- Annulation : fermer le client HTTP (bouton pause/stop) ; le texte reçu est conservé comme réponse partielle marquée `interrupted`
- Pas de reconnexion automatique d'un POST (risque de double message) : l'utilisateur appuie sur Réessayer, `clientMessageId` garantit l'idempotence côté serveur

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `POST` | `/api/v1/assistant/conversations/:id/messages` | Envoie un message ; avec `Accept: text/event-stream` la réponse est diffusée en SSE (événements meta, token, block, actions, sources, done, error), sinon JSON complet | {"content":"string 1..500","clientMessageId":"uuid"} | 200 {"success":true,"data":{"userMessage":{...},"assistantMessage":{"id":"...","content":"...","lang":"fr","status":"ok\|out_of_scope\|moderated\|no_data","blocks":[],"actions":[],"sources":[],"suggestions":[]},"quota":{"limit":40,"remaining":12,"resetsAt":"ISO"}}} |

## 🛠️ Tâches

- [ ] Créer `core/network/sse_client.dart` (`Stream<SseEvent> post(Uri, headers, body)`) sur `http.Client.send`
- [ ] Décoder UTF-8 en flux (`utf8.decoder` + `LineSplitter`) et assembler les champs `event:`/`data:` multi-lignes
- [ ] Créer `data/datasources/assistant_stream_datasource.dart` mappant `SseEvent` -> `AssistantStreamEvent` (sealed class)
- [ ] Ajouter l'intercepteur d'auth (Bearer) et `X-Request-Id`/traceId manuel sur ce client
- [ ] Implémenter le watchdog d'inactivité 20 s
- [ ] Gérer le 401 : un refresh puis un unique retry avant d'émettre `error`
- [ ] Exposer `StreamHandle.cancel()`
- [ ] Tests avec un serveur SSE local (`HttpServer`)

## ✔️ Critères d'acceptation

- [ ] Étant donné un flux de 50 `token` quand le client lit alors les `delta` sont émis dans l'ordre sans perte
- [ ] Étant donné 20 s sans événement alors `StreamStalled` est émis et le flux fermé
- [ ] Étant donné l'appel à cancel alors la connexion est fermée et aucun événement ultérieur n'est émis
- [ ] Étant donné une réponse JSON (serveur sans streaming) alors le repli retourne le message complet
- [ ] Étant donné un 401 alors le token est rafraîchi et la requête rejouée une seule fois

## 🧪 Tests à écrire

- [ ] sse_client_test : multi-lignes data
- [ ] sse_client_test : ping ignoré
- [ ] sse_client_test : watchdog
- [ ] sse_client_test : annulation
- [ ] assistant_stream_datasource_test : mapping
- [ ] sse_client_test : fallback JSON

## 🔗 Dépendances

À réaliser après : `MOB-N-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.10
- CDC Backend §3.8

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
