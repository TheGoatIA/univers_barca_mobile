> **MOB-J-14** · Sécurité · Priorité **P0** · Taille **L** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Pour proposer des groupes proches, l'application a besoin d'une localisation approximative. La permission système n'est demandée qu'après l'écran pédagogique J-07, et la position GPS n'est jamais envoyée ni stockée : seule la ville est déduite sur l'appareil.

## ✅ Objectif

Encapsuler permission, lecture d'une position grossière et géocodage inverse dans un service dédié.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `J-06` — Localisation non activée
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__phone_light.webp?raw=true' width='230' alt='J-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__phone_dark.webp?raw=true' width='230' alt='J-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__tablet_light.webp?raw=true' width='330' alt='J-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__tablet_dark.webp?raw=true' width='330' alt='J-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Rechercher un pays ou une ville » · « Tous » · « Groupes » · « Watch parties » · « Près de moi » · « Localisation non activée » · « Active-la pour trouver des culés près de toi, ou indique simplement ton pays et ta ville. » · « Activer la localisation » · « Saisir mon pays / ma ville »

**Composants repérés** : `avatar`, `btn`, `chip`, `map`

</details>

**Issues liées sur ce même écran :** [API-COMM-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-13%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-J-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-04%5D%22) · [MOB-J-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-09%5D%22) · [MOB-J-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-15%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22)

#### `J-07` — Consentement géolocalisation
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__phone_light.webp?raw=true' width='230' alt='J-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__phone_dark.webp?raw=true' width='230' alt='J-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__tablet_light.webp?raw=true' width='330' alt='J-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__tablet_dark.webp?raw=true' width='330' alt='J-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « Retour » · « Retrouve les culés près de toi » · « Pour te proposer des groupes locaux, nous avons besoin de ta localisation approximative. » · « Jamais ta position exacte » · « Les autres voient seulement ta ville, jamais tes coordonnées GPS. » · « Tu choisis ce qui est visible » · « Ville, pays ou totalement masqué. » · « Révocable à tout moment » · « Dans Paramètres › Confidentialité. » · « Autoriser la localisation » · « Saisir ma ville manuellement »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-COMM-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-03%5D%22) · [API-COMM-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-04%5D%22) · [API-COMM-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-05%5D%22) · [API-COMM-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-31%5D%22) · [API-COMM-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-33%5D%22) · [MOB-J-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-16%5D%22) · [MOB-J-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-17%5D%22) · [MOB-J-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-25%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22) · [MOB-J-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-27%5D%22)

## 📐 Règles de gestion

- Android : demander uniquement ACCESS_COARSE_LOCATION (pas FINE) ; iOS : NSLocationWhenInUseUsageDescription avec précision réduite (CLAccuracyAuthorization.reducedAccuracy acceptée).
- Position lue une seule fois (pas de suivi continu, pas de service d'arrière-plan), précision demandée LocationAccuracy.low.
- Géocodage inverse local (package geocoding) : on en extrait uniquement isoCountryCode et locality ; les coordonnées sont jetées immédiatement et ne sont jamais écrites sur disque, logs, crash reports ni envoyées à l'API.
- Statuts exposés : notDetermined, granted, deniedOnce, deniedForever, serviceDisabled.
- Aucune demande de permission au lancement de l'application (CDC Flutter §6.4) ; deniedForever -> orientation vers les réglages système (openAppSettings).

## 🔄 Comportement et états

- Refus : repli automatique sur la saisie manuelle (J-08) et la vue monde, sans bloquer le module.
- Services de localisation désactivés : message dédié et lien vers les réglages.
- Échec du géocodage (hors-ligne) : proposer la saisie manuelle.

## 🛠️ Tâches

- [ ] Ajouter geolocator et geocoding dans pubspec.yaml ; configurer AndroidManifest.xml (ACCESS_COARSE_LOCATION) et Info.plist (clé d'usage en français/anglais/espagnol via InfoPlist.strings).
- [ ] Créer core/services/location_service.dart (interface) et data/services/location_service_impl.dart.
- [ ] Créer domain/entities/approximate_place.dart (countryCode, city) sans lat/lng.
- [ ] Créer domain/usecases/detect_approximate_place.dart.
- [ ] Créer domain/usecases/observe_location_status.dart (Stream<LocationStatus>).
- [ ] Masquer les coordonnées dans les logs (aucun log de Position) : règle lint personnalisée ou revue.
- [ ] Gérer WidgetsBindingObserver pour re-vérifier le statut au retour des réglages.
- [ ] Écrire les tests avec une fausse implémentation de GeolocatorPlatform.
- [ ] Documenter la politique dans docs/privacy-location.md (section du dépôt).

## ✔️ Critères d'acceptation

- [ ] Étant donné une permission accordée, quand detect_approximate_place est appelé, alors le résultat ne contient que pays et ville.
- [ ] Étant donné un refus définitif, quand l'utilisateur tape « Activer la localisation », alors les réglages système sont ouverts.
- [ ] Étant donné un refus simple, quand le service est appelé, alors statut deniedOnce et la saisie manuelle est proposée.
- [ ] Étant donné un échec de géocodage, quand l'appareil est hors-ligne, alors Left(PlaceNotResolvedFailure).
- [ ] Étant donné une inspection du réseau, quand la détection s'exécute, alors aucune requête ne contient de coordonnées.

## 🧪 Tests à écrire

- [ ] location_service_test : mapping des statuts.
- [ ] detect_approximate_place_test : coordonnées jamais exposées.
- [ ] privacy_no_coordinates_test : sérialisation de l'entité ne contient pas lat/lng.
- [ ] permission_flow_test : deniedForever -> openAppSettings (mock).
- [ ] android_manifest_test : seule COARSE déclarée (analyse du fichier).

## ♿ Accessibilité et i18n

- Textes d'usage iOS localisés FR/EN/ES : « Ton emplacement approximatif sert à te proposer des groupes de culés près de toi. »

## 🔗 Dépendances

À réaliser après : `MOB-J-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.16.2
- CDC Flutter §6.4
- CDC Global §10.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
