> **MOB-A-08** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Les écrans A-06 et A-07 doivent pouvoir être activés sans republier l'application. Le client lit une configuration publique ; aucun endpoint n'existe encore côté API (modèle `FeatureFlag` disponible dans `platform.model.ts`).

## ✅ Objectif

Récupérer, mettre en cache et exposer la configuration (maintenance, version minimale, dernière version, URL de store) au démarrage et au retour au premier plan.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `A-06` — Maintenance planifiée
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-06_maintenance-planifiee__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-06_maintenance-planifiee__phone_light.webp?raw=true' width='230' alt='A-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-06_maintenance-planifiee__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-06_maintenance-planifiee__phone_dark.webp?raw=true' width='230' alt='A-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-06_maintenance-planifiee__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-06_maintenance-planifiee__tablet_light.webp?raw=true' width='330' alt='A-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-06_maintenance-planifiee__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-06_maintenance-planifiee__tablet_dark.webp?raw=true' width='330' alt='A-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Maintenance en cours » · « Univers Barça fait une petite révision pour revenir plus fort. Retour prévu aujourd'hui vers » · « Active les notifications pour être prévenu(e) du retour. » · « Suivre le statut »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-PLAT-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-01%5D%22) · [API-PLAT-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-03%5D%22) · [API-PLAT-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-07%5D%22) · [API-PLAT-48](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-48%5D%22) · [API-PLAT-55](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-55%5D%22) · [MOB-A-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-01%5D%22) · [MOB-A-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-09%5D%22) · [MOB-A-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-17%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

#### `A-07` — Mise à jour requise
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-07_mise-a-jour-requise__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-07_mise-a-jour-requise__phone_light.webp?raw=true' width='230' alt='A-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-07_mise-a-jour-requise__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-07_mise-a-jour-requise__phone_dark.webp?raw=true' width='230' alt='A-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-07_mise-a-jour-requise__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-07_mise-a-jour-requise__tablet_light.webp?raw=true' width='330' alt='A-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-07_mise-a-jour-requise__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-07_mise-a-jour-requise__tablet_dark.webp?raw=true' width='330' alt='A-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Nouvelle version disponible » · « Pour continuer à jouer et profiter des derniers contenus, installe la version 1.2.0. » · « Nouveautés » · « Calendrier synchronisé avec ton agenda » · « Carte des supporters plus fluide » · « Corrections de stabilité » · « Mettre à jour »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-PLAT-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-01%5D%22) · [API-PLAT-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-02%5D%22) · [API-PLAT-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-04%5D%22) · [API-PLAT-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-07%5D%22) · [API-PLAT-55](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-55%5D%22) · [MOB-A-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-01%5D%22) · [MOB-A-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-10%5D%22) · [MOB-A-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-17%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

## 📐 Règles de gestion

- Comparaison de versions sémantiques `major.minor.patch` ; mise à jour requise si `installed < minVersion`, recommandée (non bloquante) si `installed < latestVersion`.
- Maintenance : `active`, `until` (ISO 8601 avec fuseau, affiché à l'heure locale, ex. 23:30), `message` optionnel localisé ; une 503 de code `MAINTENANCE` sur n'importe quel appel déclenche le même écran.
- Cache Drift de la dernière configuration valide, TTL de 10 min ; sans réseau on utilise la dernière valeur connue (ne jamais bloquer à tort).
- Appel public (sans jeton) avec en-têtes `X-App-Version` et `X-Platform`.

## 🔄 Comportement et états

- Au démarrage : appel en parallèle de la restauration de session, timeout 3 s.
- Reprise (`resumed` > 30 min) : revalidation silencieuse ; si maintenance devient active, bascule immédiate vers A-06.
- Fin de maintenance détectée (poll toutes les 60 s sur A-06) : retour automatique.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `GET` | `/api/v1/config/app` | Configuration publique de l'application (version minimale, maintenance). Contrat proposé : à aligner avec l'issue API correspondante, le modèle FeatureFlag existant servant de support. | Headers : X-App-Version: 1.0.0, X-Platform: android\|ios | {success:true,data:{minVersion:'1.2.0',latestVersion:'1.2.0',storeUrl:'https://…',maintenance:{active:true,until:'2026-10-15T23:30:00+02:00',message:null}}} |

## 🗄️ Données

- Drift : table SyncMetadata (clés appConfigJson, appConfigFetchedAt)
- API : modèle FeatureFlag (existant) à exposer

## 🛠️ Tâches

- [ ] Créer `lib/features/system/data/models/app_config_model.dart` (freezed + json_serializable, `toEntity()`).
- [ ] Créer `lib/features/system/data/datasources/app_config_api_service.dart` (Chopper `@Get(path:'/config/app')`).
- [ ] Créer `lib/features/system/data/repositories/app_config_repository_impl.dart` (cache-then-network, Drift `SyncMetadata`).
- [ ] Créer `lib/features/system/domain/entities/app_config.dart` et `usecases/get_app_config_usecase.dart`.
- [ ] Créer `lib/core/utils/semver.dart` avec comparaison testée.
- [ ] Brancher sur `AppStartupCubit` et le lifecycle observer.
- [ ] Documenter le contrat à l'équipe API (issue API liée) dans `docs/`.
- [ ] Tests unitaires de bout en bout du repository avec Chopper mocké.

## ✔️ Critères d'acceptation

- [ ] Étant donné installed=1.0.0 et minVersion=1.2.0 quand la config est lue alors `updateRequired` est vrai.
- [ ] Étant donné maintenance.active quand la config est lue alors `maintenance` est émis avec l'heure de fin locale.
- [ ] Étant donné l'API injoignable quand la config est lue alors la dernière config en cache est utilisée.
- [ ] Étant donné 1.10.0 vs 1.2.0 quand on compare alors 1.10.0 est supérieure (comparaison numérique).

## 🧪 Tests à écrire

- [ ] Test semver : 1.9.9<1.10.0, égalité, suffixes de build.
- [ ] Test repository : cache valide 10 min non réinterrogé.
- [ ] Test : 503 MAINTENANCE sur un appel métier → événement système.
- [ ] Test : timeout 3 s → fallback cache.
- [ ] Test freezed fromJson/toJson de la configuration.

## 🔗 Dépendances

À réaliser après : `MOB-A-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §6.3
- CDC Global §6 disponibilité 99,5 % hors maintenance planifiée

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
