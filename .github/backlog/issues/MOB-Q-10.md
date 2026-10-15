> **MOB-Q-10** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Le consentement RGPD est distinct par finalité, révocable, historisé (une ligne par changement, jamais écrasée). Q-05 liste Géolocalisation approximative, Notifications push, Statistiques d'usage anonymes, Visibilité sur la carte, et indique « Historique de mes consentements — 3 enregistrements ».

## ✅ Objectif

Implémenter `ConsentRepository` et son état dans `SettingsCubit`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-05` — Confidentialité et consentements
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__phone_light.webp?raw=true' width='230' alt='Q-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__phone_dark.webp?raw=true' width='230' alt='Q-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__tablet_light.webp?raw=true' width='330' alt='Q-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__tablet_dark.webp?raw=true' width='330' alt='Q-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Confidentialité » · « Tu contrôles tes données. Chaque consentement est distinct et révocable à tout moment. » · « Géolocalisation approximative » · « Pour te proposer des groupes locaux. Jamais ta position exacte. » · « Notifications push » · « Rappels de match, série, communauté. » · « Statistiques d’usage anonymes » · « Nous aident à améliorer l’application. » · « Visibilité sur la carte » · « Ville uniquement » · « Politique de confidentialité » · « Historique de mes consentements » · « 3 enregistrements »

**Composants repérés** : `toggle`

</details>

**Issues liées sur ce même écran :** [API-AUTH-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-21%5D%22) · [API-AUTH-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-22%5D%22) · [API-AUTH-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-23%5D%22) · [API-AUTH-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-30%5D%22) · [MOB-Q-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-02%5D%22) · [MOB-Q-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-03%5D%22) · [MOB-Q-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-05%5D%22) · [MOB-Q-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-11%5D%22) · [MOB-Q-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-13%5D%22) · [MOB-Q-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-29%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

#### `Q-06` — Révoquer la géolocalisation
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-06_revoquer-la-geolocalisation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-06_revoquer-la-geolocalisation__phone_light.webp?raw=true' width='230' alt='Q-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-06_revoquer-la-geolocalisation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-06_revoquer-la-geolocalisation__phone_dark.webp?raw=true' width='230' alt='Q-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-06_revoquer-la-geolocalisation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-06_revoquer-la-geolocalisation__tablet_light.webp?raw=true' width='330' alt='Q-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-06_revoquer-la-geolocalisation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-06_revoquer-la-geolocalisation__tablet_dark.webp?raw=true' width='330' alt='Q-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Confidentialité » · « Géolocalisation approximative » · « Désactiver la localisation ? » · « Tu n'apparaîtras plus dans les compteurs de la carte. Tu pourras toujours indiquer ton pays et ta ville manuellement. » · « Désactiver » · « Annuler »

**Composants repérés** : `btn`, `modal`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-AUTH-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-21%5D%22) · [API-AUTH-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-23%5D%22) · [MOB-Q-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-12%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Types alignés sur l'API : `geolocation`, `notifications`, `analytics` (modifiables) ; `terms` et `privacy` sont enregistrés à l'inscription (non révocables ici : lecture seule/ liens).
- Chaque changement appelle `POST /auth/consents {type, granted, version}` et ajoute une ligne d'historique ; état local mis à jour de façon optimiste, rollback si échec.
- Révoquer `notifications` supprime le jeton FCM ; révoquer `analytics` arrête immédiatement tout envoi d'événements ; révoquer `geolocation` : voir Q-06.

## 🛠️ Tâches

- [ ] Créer `domain/repositories/consent_repository.dart` + impl (cache local + réseau).
- [ ] Use cases : `GetConsents`, `SetConsent`, `GetConsentHistory`.
- [ ] Propager les effets : `PushRegistrationService.unregister()`, `AnalyticsService.setEnabled(false)`, `LocationService.clear()`.
- [ ] Stocker la dernière valeur connue localement pour un usage hors-ligne (les événements sont bloqués par défaut si inconnue).
- [ ] Envoyer `version` = version de la politique en vigueur (constante `kPrivacyPolicyVersion`).
- [ ] Gérer les erreurs et conflits.
- [ ] Tests avec `mocktail`.
- [ ] Documenter dans `docs/rgpd.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné l'activation des statistiques, quand l'utilisateur coupe l'interrupteur, alors un consentement `analytics:false` est envoyé et plus aucun événement n'est émis.
- [ ] Étant donné la révocation « Notifications push », quand elle est confirmée, alors le jeton FCM est supprimé.
- [ ] Étant donné un échec réseau, quand un consentement est modifié, alors la valeur est mise en file et envoyée au retour réseau.
- [ ] Étant donné 3 changements successifs, quand l'historique est consulté, alors 3 enregistrements sont listés.

## 🧪 Tests à écrire

- [ ] Test : set consent analytics.
- [ ] Test : propagation vers push.
- [ ] Test : file hors-ligne.
- [ ] Test : historique.
- [ ] Test : version de politique.

## 🔗 Dépendances

À réaliser après : `MOB-Q-03` · `MOB-Q-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §10.2
- CDC Backend §3.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
