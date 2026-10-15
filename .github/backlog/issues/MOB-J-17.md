> **MOB-J-17** · RGPD · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Chaque changement de consentement crée une ligne dans ConsentRecord côté API (jamais d'écrasement). Le client doit appeler l'endpoint existant des consentements à chaque octroi et chaque révocation.

## ✅ Objectif

Tenir l'historique RGPD des changements de consentement géolocalisation depuis le mobile.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `J-07` — Consentement géolocalisation
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__phone_light.webp?raw=true' width='230' alt='J-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__phone_dark.webp?raw=true' width='230' alt='J-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__tablet_light.webp?raw=true' width='330' alt='J-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__tablet_dark.webp?raw=true' width='330' alt='J-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « Retour » · « Retrouve les culés près de toi » · « Pour te proposer des groupes locaux, nous avons besoin de ta localisation approximative. » · « Jamais ta position exacte » · « Les autres voient seulement ta ville, jamais tes coordonnées GPS. » · « Tu choisis ce qui est visible » · « Ville, pays ou totalement masqué. » · « Révocable à tout moment » · « Dans Paramètres › Confidentialité. » · « Autoriser la localisation » · « Saisir ma ville manuellement »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-COMM-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-03%5D%22) · [API-COMM-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-04%5D%22) · [API-COMM-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-05%5D%22) · [API-COMM-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-31%5D%22) · [API-COMM-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-33%5D%22) · [MOB-J-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-14%5D%22) · [MOB-J-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-16%5D%22) · [MOB-J-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-25%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22) · [MOB-J-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-27%5D%22)

#### `J-09` — Visibilité sur la carte
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-09_visibilite-sur-la-carte__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-09_visibilite-sur-la-carte__phone_light.webp?raw=true' width='230' alt='J-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-09_visibilite-sur-la-carte__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-09_visibilite-sur-la-carte__phone_dark.webp?raw=true' width='230' alt='J-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-09_visibilite-sur-la-carte__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-09_visibilite-sur-la-carte__tablet_light.webp?raw=true' width='330' alt='J-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-09_visibilite-sur-la-carte__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-09_visibilite-sur-la-carte__tablet_dark.webp?raw=true' width='330' alt='J-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Visibilité » · « Choisis la précision avec laquelle tu apparais dans les compteurs de la carte. » · « Ville uniquement » · « Compté dans les agrégats de Yaoundé » · « Pays uniquement » · « Compté dans les agrégats du Cameroun » · « Masqué » · « Tu n’apparais dans aucun compteur » · « Ta position GPS précise n'est jamais stockée ni visible par un autre utilisateur. »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-COMM-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-01%5D%22) · [API-COMM-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-04%5D%22) · [API-COMM-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-06%5D%22) · [API-COMM-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-29%5D%22) · [API-COMM-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-31%5D%22) · [MOB-J-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-19%5D%22) · [MOB-J-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-20%5D%22) · [MOB-J-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-25%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22) · [MOB-J-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-27%5D%22)

## 📐 Règles de gestion

- Appel POST /auth/consents avec { type: 'geolocation', granted: true|false, version } ; version = version courante du texte de consentement.
- Révocation depuis J-09 (Masqué) ou Paramètres › Confidentialité : granted false + purge locale de la zone mise en cache.
- En cas d'échec réseau, l'action est mise en file (table pending_consents Drift) et rejouée à la reconnexion ; l'état local reste prudent (granted=false tant que non confirmé).
- Le texte de consentement a un numéro de version (constante consent_versions.geolocation = '1.0').
- Aucun consentement n'est enregistré avant l'action explicite de l'utilisateur.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `POST` | `/api/v1/auth/consents` | Enregistre un consentement (historisé) | {type:'geolocation',granted:true,version:'1.0'} | {success:true,data:{id,type,granted,grantedAt}} |

## 🗄️ Données

- ConsentRecord (userId, type, granted, version, grantedAt, revokedAt)

## 🛠️ Tâches

- [ ] Créer domain/usecases/record_geolocation_consent.dart et revoke_geolocation_consent.dart.
- [ ] Ajouter @Post(path: '/auth/consents') dans la datasource d'auth existante ou une datasource consentements dédiée (vérifier s'il existe déjà).
- [ ] Créer data/models/consent_request_model.dart (type, granted, version).
- [ ] Créer la table Drift pending_consents et le worker de rejeu (ConsentSyncService).
- [ ] Créer core/constants/consent_versions.dart.
- [ ] Brancher le rejeu sur connectivity_plus et sur AppLifecycleState.resumed.
- [ ] Mettre à jour UserZone local (purge) à la révocation.
- [ ] Tests du rejeu hors-ligne.

## ✔️ Critères d'acceptation

- [ ] Étant donné un octroi, quand l'API répond 201, alors le consentement local passe à granted.
- [ ] Étant donné un octroi hors-ligne, quand le réseau revient, alors la requête est rejouée une fois et supprimée de la file.
- [ ] Étant donné une révocation, quand elle est confirmée, alors la zone locale est purgée et la visibilité repasse à hidden.
- [ ] Étant donné deux changements successifs, quand ils sont synchronisés, alors l'ordre chronologique est respecté.

## 🧪 Tests à écrire

- [ ] record_consent_test : payload type/granted/version.
- [ ] consent_sync_service_test : rejeu et ordre.
- [ ] revoke_consent_test : purge locale.
- [ ] pending_consents_dao_test.

## 🔗 Dépendances

À réaliser après : `MOB-J-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.16.2
- CDC Global §2.13
- CDC Global §10.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
