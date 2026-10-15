> **MOB-J-16** · Écran · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Écran dédié, présenté avant toute demande de permission système : « Retrouve les culés près de toi », trois garanties (Jamais ta position exacte, Tu choisis ce qui est visible, Révocable à tout moment), boutons « Autoriser la localisation » et « Saisir ma ville manuellement ».

## ✅ Objectif

Recueillir un consentement explicite, informé et distinct du consentement d'inscription (RG-MAP-02).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `J-07` — Consentement géolocalisation
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__phone_light.webp?raw=true' width='230' alt='J-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__phone_dark.webp?raw=true' width='230' alt='J-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__tablet_light.webp?raw=true' width='330' alt='J-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-07_consentement-geolocalisation__tablet_dark.webp?raw=true' width='330' alt='J-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « Retour » · « Retrouve les culés près de toi » · « Pour te proposer des groupes locaux, nous avons besoin de ta localisation approximative. » · « Jamais ta position exacte » · « Les autres voient seulement ta ville, jamais tes coordonnées GPS. » · « Tu choisis ce qui est visible » · « Ville, pays ou totalement masqué. » · « Révocable à tout moment » · « Dans Paramètres › Confidentialité. » · « Autoriser la localisation » · « Saisir ma ville manuellement »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-COMM-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-03%5D%22) · [API-COMM-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-04%5D%22) · [API-COMM-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-05%5D%22) · [API-COMM-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-31%5D%22) · [API-COMM-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-33%5D%22) · [MOB-J-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-14%5D%22) · [MOB-J-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-17%5D%22) · [MOB-J-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-25%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22) · [MOB-J-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-27%5D%22)

## 📐 Règles de gestion

- Le consentement géolocalisation est distinct du consentement général : il n'est jamais précoché.
- « Autoriser la localisation » : enregistre le consentement (type geolocation, granted true) PUIS déclenche la permission système ; si la permission est refusée, le consentement est annulé (granted false) pour rester cohérent.
- « Saisir ma ville manuellement » -> J-08 sans consentement GPS.
- Le bouton Retour ferme l'écran sans rien enregistrer.
- Le texte rappelle : ville seulement, coordonnées GPS jamais visibles par les autres, modifiable dans Paramètres › Confidentialité.

## 🔄 Comportement et états

- Chargement : bouton en état occupé pendant l'appel API et la permission.
- Erreur API : toast « Impossible d'enregistrer ton choix » et le consentement n'est pas considéré comme accordé.
- Hors-ligne : consentement mis en file (voir issue consentement) ou refusé avec message.

## 🛠️ Tâches

- [ ] Créer presentation/pages/location_consent_page.dart (route /community/location/consent).
- [ ] Créer widgets/consent_point_tile.dart (icône bouclier, titre, description) x3.
- [ ] Créer LocationConsentCubit (idle, submitting, granted, denied, failure).
- [ ] Brancher RecordGeolocationConsent puis RequestLocationPermission puis DetectApproximatePlace.
- [ ] Afficher le logo Univers Barça et la mention « Application communautaire non officielle · fan-made » comme dans la maquette.
- [ ] Ajouter ARB FR/EN/ES.
- [ ] Goldens clair/sombre.
- [ ] Tests du cubit (ordre des appels).

## ✔️ Critères d'acceptation

- [ ] Étant donné J-07, quand l'écran s'ouvre, alors aucune permission système n'est demandée.
- [ ] Étant donné un tap sur « Autoriser la localisation », quand le consentement est enregistré, alors la permission système est demandée ensuite.
- [ ] Étant donné un refus de la permission, quand le résultat arrive, alors un consentement granted=false est enregistré.
- [ ] Étant donné un tap sur Retour, quand l'écran se ferme, alors aucun consentement n'est enregistré.
- [ ] Étant donné l'écran, quand il s'affiche, alors aucun bouton n'est précoché ou pré-accepté.

## 🧪 Tests à écrire

- [ ] location_consent_cubit_test : ordre consentement -> permission.
- [ ] location_consent_cubit_test : refus -> révocation.
- [ ] location_consent_page_test : textes.
- [ ] golden_location_consent.
- [ ] integration : J-06 -> J-07 -> carte.

## ♿ Accessibilité et i18n

- ARB : communityConsentTitle « Retrouve les culés près de toi », communityConsentNever « Jamais ta position exacte », communityConsentChoice « Tu choisis ce qui est visible », communityConsentRevocable « Révocable à tout moment », communityConsentAllow « Autoriser la localisation », communityConsentManual « Saisir ma ville manuellement »

## 🔗 Dépendances

À réaliser après : `MOB-J-14` · `MOB-J-17` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.16.2
- CDC Global §10.2
- CDC Flutter §6.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
