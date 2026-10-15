> **MOB-B-13** · RGPD · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Le CDC Global §10.2 exige un consentement explicite pour les données sensibles et l'historisation. Trois points de l'onboarding produisent des consentements : charte/CGU/confidentialité (B-08), localisation de ville (B-11, information), notifications (B-15).

## ✅ Objectif

Garantir qu'aucun consentement n'est pré-coché, que chaque choix est transmis à `POST /auth/consents` ou à l'inscription, et reste révocable depuis les paramètres.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-08` — Charte de la communauté
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-08_charte-de-la-communaute__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-08_charte-de-la-communaute__phone_light.webp?raw=true' width='230' alt='B-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-08_charte-de-la-communaute__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-08_charte-de-la-communaute__phone_dark.webp?raw=true' width='230' alt='B-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-08_charte-de-la-communaute__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-08_charte-de-la-communaute__tablet_light.webp?raw=true' width='330' alt='B-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-08_charte-de-la-communaute__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-08_charte-de-la-communaute__tablet_dark.webp?raw=true' width='330' alt='B-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « 2/4 » · « La charte des culés » · « Une communauté saine, c’est l’affaire de tous. » · « Respect avant tout » · « Aucun propos haineux, discriminatoire ou menaçant. » · « Pas de rivalité toxique » · « On chambre, on ne harcèle pas. » · « Signale, ne réponds pas » · « Un doute ? Utilise le bouton « Signaler ». » · « Ta position reste privée » · « Jamais de position exacte partagée. » · « J’accepte la » · « charte de la communauté » · « et les » · « conditions d’utilisation » · « J’ai lu la » · « politique de confidentialité » · « Accepter et continuer »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-AUTH-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-05%5D%22) · [API-AUTH-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-21%5D%22) · [API-AUTH-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-22%5D%22) · [MOB-B-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-01%5D%22) · [MOB-B-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-12%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

#### `B-11` — Pays et ville
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-11_pays-et-ville__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-11_pays-et-ville__phone_light.webp?raw=true' width='230' alt='B-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-11_pays-et-ville__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-11_pays-et-ville__phone_dark.webp?raw=true' width='230' alt='B-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-11_pays-et-ville__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-11_pays-et-ville__tablet_light.webp?raw=true' width='330' alt='B-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-11_pays-et-ville__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-11_pays-et-ville__tablet_dark.webp?raw=true' width='330' alt='B-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « 1/3 » · « D’où supportes-tu ? » · « Optionnel · pour te proposer des groupes locaux et l’heure des matchs. Aucune position GPS n’est utilisée ici. » · « Pays » · « Cameroun » · « Ville » · « Yaoundé » · « Seule ta » · « ville » · « pourra apparaître sur la carte, jamais ta position exacte. » · « Continuer » · « Passer cette étape »

**Composants repérés** : `btn`, `card`, `input`

</details>

**Issues liées sur ce même écran :** [API-AUTH-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-29%5D%22) · [API-AUTH-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-30%5D%22) · [MOB-B-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-01%5D%22) · [MOB-B-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-16%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

#### `B-15` — Rappels de match — pré-permission
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-15_rappels-de-match-pre-permission__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-15_rappels-de-match-pre-permission__phone_light.webp?raw=true' width='230' alt='B-15 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-15_rappels-de-match-pre-permission__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-15_rappels-de-match-pre-permission__phone_dark.webp?raw=true' width='230' alt='B-15 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-15_rappels-de-match-pre-permission__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-15_rappels-de-match-pre-permission__tablet_light.webp?raw=true' width='330' alt='B-15 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-15_rappels-de-match-pre-permission__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-15_rappels-de-match-pre-permission__tablet_dark.webp?raw=true' width='330' alt='B-15 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « Ne rate plus un match » · « Reçois un rappel avant le coup d’envoi, le résultat final et l’alerte quand ta série est en danger. Tu choisis tout dans les réglages. » · « Activer les notifications » · « Plus tard »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-29%5D%22) · [MOB-B-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-01%5D%22) · [MOB-B-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-20%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Types gérés : `terms`, `privacy`, `geolocation`, `notifications`, `analytics` (enum de l'API) ; chaque changement crée une ligne `ConsentRecord` (jamais écrasée), avec `version` et dates.
- Géolocalisation : aucune position GPS n'est demandée dans l'onboarding (B-11 : « Aucune position GPS n'est utilisée ici ») ; seul le pays/ville saisi est stocké ; la géolocalisation approximative est un opt-in dédié ultérieur (carte).
- `analytics` : false par défaut, aucun suivi d'usage avant consentement ; Sentry limité aux crashs pseudonymisés.
- Refus des notifications (B-15 « Plus tard ») : consentement `notifications` = false, pas de relance au lancement ; un rappel non intrusif dans les paramètres.

## 🔄 Comportement et états

- Échec d'envoi du consentement après inscription : mise en file `PendingActions` et rejeu à la reconnexion.
- Retrait ultérieur depuis Paramètres : même endpoint avec `granted:false`.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `POST` | `/api/v1/auth/consents` | Enregistre un consentement (existant). | {type:'terms\|privacy\|geolocation\|notifications\|analytics',granted:boolean} | {success:true} |

## 🛠️ Tâches

- [ ] Créer `SetConsentUseCase` et `ConsentRepository` (`POST /auth/consents`).
- [ ] Créer `lib/core/constants/legal_constants.dart` (`legalDocsVersion = '1.0'`).
- [ ] Mapper les cases de B-08 vers le corps `consents` d'inscription.
- [ ] Gérer la mise en file `PendingActions` (Drift) en cas d'échec réseau.
- [ ] Documenter la matrice écran → consentement dans `docs/`.
- [ ] Ajouter un test de contrat sur les valeurs d'enum.
- [ ] Vérifier l'absence d'appel `Geolocator` dans le tunnel.

## ✔️ Critères d'acceptation

- [ ] Étant donné B-08 quand l'inscription est envoyée alors `terms` et `privacy` valent true et les autres false.
- [ ] Étant donné B-15 « Activer » avec permission accordée quand le système répond alors `POST /auth/consents {type:'notifications',granted:true}` est émis.
- [ ] Étant donné B-15 « Plus tard » quand on l'appuie alors `notifications` vaut false et aucune permission système n'est demandée.
- [ ] Étant donné un envoi échoué hors-ligne quand la connexion revient alors le consentement est rejoué.

## 🧪 Tests à écrire

- [ ] Test unitaire du use case.
- [ ] Test : aucune case pré-cochée.
- [ ] Test : mise en file puis rejeu.
- [ ] Test : analyse statique, pas d'import geolocator dans features/auth.
- [ ] Test contrat : enum alignée API.

## 🔗 Dépendances

À réaliser après : `MOB-B-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §10.2
- CDC Backend §3.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
