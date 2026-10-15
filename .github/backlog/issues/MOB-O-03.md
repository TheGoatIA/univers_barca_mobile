> **MOB-O-03** · API · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Le CDC Backend §3.10 définit les entités et cas d'usage (RegisterDeviceToken, envois) mais pas les chemins HTTP, absents du récapitulatif §3.13. Les contrats ci-dessous sont proposés et à valider avec l'API avant implémentation.

## ✅ Objectif

Créer le service Chopper des notifications et le mapping d'erreurs.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `O-01` — Centre de préférences
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-01_centre-de-preferences__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-01_centre-de-preferences__phone_light.webp?raw=true' width='230' alt='O-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-01_centre-de-preferences__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-01_centre-de-preferences__phone_dark.webp?raw=true' width='230' alt='O-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-01_centre-de-preferences__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-01_centre-de-preferences__tablet_light.webp?raw=true' width='330' alt='O-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-01_centre-de-preferences__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-01_centre-de-preferences__tablet_dark.webp?raw=true' width='330' alt='O-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Préférences » · « Choisis ce que tu veux recevoir. Tu peux tout modifier à tout moment. » · « Matchs » · « Rappel, mi-temps, résultat final » · « Série en danger » · « Rappel avant minuit » · « Anniversaires & histoire » · « Joueurs, dates marquantes » · « Activité des groupes rejoints » · « Fermeture des compositions » · « Nouveautés » · « Annonces de l’équipe » · « Heures calmes » · « 23:00 – 07:00 »

**Composants repérés** : `card`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-01%5D%22) · [API-NOTIF-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-02%5D%22) · [API-NOTIF-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-04%5D%22) · [API-NOTIF-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-05%5D%22) · [API-NOTIF-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-06%5D%22) · [API-NOTIF-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-16%5D%22) · [API-NOTIF-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-18%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [API-NOTIF-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-31%5D%22) · [MOB-O-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-01%5D%22) · [MOB-O-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-02%5D%22) · [MOB-O-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-04%5D%22) · [MOB-O-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-05%5D%22) · [MOB-O-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-06%5D%22) · [MOB-O-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-07%5D%22) · [MOB-O-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-12%5D%22) · [MOB-O-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-13%5D%22) · [MOB-O-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-24%5D%22) · [MOB-O-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-26%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22) · [MOB-O-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-28%5D%22)

#### `O-05` — Boîte de réception
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__phone_light.webp?raw=true' width='230' alt='O-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__phone_dark.webp?raw=true' width='230' alt='O-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__tablet_light.webp?raw=true' width='330' alt='O-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__tablet_dark.webp?raw=true' width='330' alt='O-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Notifications » · « Toutes » · « Matchs » · « Tout lire » · « Match dans 1 h » · « Barça – Real Madrid · Liga » · « il y a 5 min » · « Ta série est en danger » · « Joue avant minuit » · « il y a 3 h » · « Nouveau message dans Culés Cameroun » · « Mamadou : « Qui est chaud pour… » » · « Hier » · « Anniversaire de Pedri » · « Il fête ses 23 ans aujourd’hui 🎂 » · « Badge débloqué » · « Série de 10 jours » · « 12 oct. »

**Composants repérés** : `btn`, `chip`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-01%5D%22) · [API-NOTIF-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-12%5D%22) · [API-NOTIF-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-17%5D%22) · [API-NOTIF-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-19%5D%22) · [API-NOTIF-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-20%5D%22) · [API-NOTIF-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-21%5D%22) · [API-NOTIF-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-28%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [API-NOTIF-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-31%5D%22) · [MOB-O-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-01%5D%22) · [MOB-O-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-02%5D%22) · [MOB-O-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-04%5D%22) · [MOB-O-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-05%5D%22) · [MOB-O-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-15%5D%22) · [MOB-O-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-16%5D%22) · [MOB-O-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-18%5D%22) · [MOB-O-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-23%5D%22) · [MOB-O-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-26%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22) · [MOB-O-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-28%5D%22)

#### `O-06` — Boîte de réception vide
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__phone_light.webp?raw=true' width='230' alt='O-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__phone_dark.webp?raw=true' width='230' alt='O-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__tablet_light.webp?raw=true' width='330' alt='O-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__tablet_dark.webp?raw=true' width='330' alt='O-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Notifications » · « Rien de nouveau » · « Tes notifications apparaîtront ici : rappels de match, série, communauté… » · « Régler mes préférences »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-20%5D%22) · [API-NOTIF-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-21%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [MOB-O-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-04%5D%22) · [MOB-O-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-15%5D%22) · [MOB-O-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-17%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22) · [MOB-O-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-28%5D%22)

## 📐 Règles de gestion

- Préférences : `GET/PATCH /users/me/notification-preferences` (PATCH partiel, fusion côté serveur).
- Boîte de réception : `GET /notifications?category=&cursor=&limit=20`, `PATCH /notifications/:id/read`, `POST /notifications/read-all`, `GET /notifications/unread-count`.
- Jetons : `POST /notifications/device-tokens`, `DELETE /notifications/device-tokens/:token` (idempotents).

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `GET` | `/api/v1/users/me/notification-preferences` | Préférences granulaires courantes | — | {success:true,data:{categories:{match:true,streak:true,history:true,community:false,fantasy:true,news:false},matchOptions:{oneHourBefore:true,kickoff:false,halfTime:true,fullTime:true},quietHours:{enabled:true,from:'23:00',to:'07:00'},streakReminderTime:'20:30'}} |
| `PATCH` | `/api/v1/users/me/notification-preferences` | Mise à jour partielle | {categories:{community:true}} | {success:true,data:{…préférences complètes…}} |
| `GET` | `/api/v1/notifications` | Boîte de réception paginée | ?category=match&cursor=&limit=20 | {success:true,data:{items:[{id,category:'match',title:'Match dans 1 h',body:'Barça – Real Madrid · Liga',deepLink:'univers-barca://matches/123',readAt:null,sentAt:'…'}],nextCursor,hasMore}} |
| `POST` | `/api/v1/notifications/device-tokens` | Enregistre ou renouvelle le jeton FCM | {token,platform:'android',locale:'fr',timezone:'Africa/Douala'} | {success:true,data:{registered:true}} |

## 🛠️ Tâches

- [ ] Créer `data/datasources/notification_remote_datasource.dart` (`@ChopperApi`).
- [ ] Implémenter `NotificationRemoteDataSourceImpl` avec conversion `Response` → modèles et `ServerException`.
- [ ] Étendre `ErrorMapper` (`ValidationFailure` pour 422 avec `details`).
- [ ] Ajouter `Idempotency-Key` sur `read-all`.
- [ ] Configurer timeout 8 s ; les PATCH de préférences ne sont pas retentés automatiquement (gérés par le cubit).
- [ ] Documenter le contrat dans `docs/api-contracts/notifications.md`.
- [ ] Enregistrer dans `ApiClient`.
- [ ] Tests avec `MockClient`.

## ✔️ Critères d'acceptation

- [ ] Étant donné un 200 sur GET préférences, quand la datasource répond, alors `NotificationPreferencesModel` est retourné.
- [ ] Étant donné un PATCH partiel `{categories:{community:true}}`, quand la requête part, alors seul ce champ est envoyé.
- [ ] Étant donné un 422, quand il est reçu, alors `ValidationFailure` avec les détails est levée.
- [ ] Étant donné un 401, quand le token est rafraîchi, alors la requête est rejouée une fois.

## 🧪 Tests à écrire

- [ ] Test : GET préférences.
- [ ] Test : PATCH partiel.
- [ ] Test : GET inbox avec curseur.
- [ ] Test : POST device-token idempotent.
- [ ] Test : 422 → ValidationFailure.

## 🔗 Dépendances

À réaliser après : `MOB-O-02` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §3.10
- CDC Backend §11.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
