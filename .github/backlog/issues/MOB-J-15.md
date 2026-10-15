> **MOB-J-15** · Écran · Priorité **P0** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Quand l'utilisateur ne partage pas sa localisation, une carte d'invitation propose « Activer la localisation » ou « Saisir mon pays / ma ville », sans bloquer la navigation dans la carte.

## ✅ Objectif

Afficher l'invitation non bloquante et orienter vers le consentement ou la saisie manuelle.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `J-06` — Localisation non activée
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__phone_light.webp?raw=true' width='230' alt='J-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__phone_dark.webp?raw=true' width='230' alt='J-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__tablet_light.webp?raw=true' width='330' alt='J-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-06_localisation-non-activee__tablet_dark.webp?raw=true' width='330' alt='J-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Rechercher un pays ou une ville » · « Tous » · « Groupes » · « Watch parties » · « Près de moi » · « Localisation non activée » · « Active-la pour trouver des culés près de toi, ou indique simplement ton pays et ta ville. » · « Activer la localisation » · « Saisir mon pays / ma ville »

**Composants repérés** : `avatar`, `btn`, `chip`, `map`

</details>

**Issues liées sur ce même écran :** [API-COMM-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-13%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-J-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-04%5D%22) · [MOB-J-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-09%5D%22) · [MOB-J-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-14%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22)

## 📐 Règles de gestion

- Titre « Localisation non activée », texte « Active-la pour trouver des culés près de toi, ou indique simplement ton pays et ta ville. ».
- Bouton principal « Activer la localisation » -> J-07 (jamais directement la permission système).
- Bouton secondaire « Saisir mon pays / ma ville » -> J-08.
- La carte du monde reste utilisable derrière la carte ; l'invitation peut être fermée et réapparaît à la prochaine visite de l'onglet (au plus une fois par session).
- Se déclenche au tap sur « Près de moi » sans zone connue.

## 🔄 Comportement et états

- L'état disparaît dès qu'une zone existe (consentement ou saisie manuelle).

## 🛠️ Tâches

- [ ] Créer widgets/location_off_card.dart (titre, texte, deux boutons AppButton).
- [ ] Ajouter MapLocationOff dans CommunityMapState et la logique d'affichage une fois par session.
- [ ] Navigation vers /community/location/consent et /community/location/manual.
- [ ] Ajouter ARB FR/EN/ES.
- [ ] Gérer la fermeture (swipe vers le bas) sans conséquence sur les données.
- [ ] Goldens clair/sombre.
- [ ] Test widget des deux CTA.

## ✔️ Critères d'acceptation

- [ ] Étant donné aucune zone, quand l'utilisateur ouvre « Près de moi », alors la carte d'invitation s'affiche avec deux boutons.
- [ ] Étant donné un tap sur « Activer la localisation », quand le bouton est pressé, alors J-07 s'ouvre et aucune permission système n'est demandée.
- [ ] Étant donné une zone saisie manuellement, quand l'onglet est ouvert, alors la carte d'invitation n'apparaît plus.
- [ ] Étant donné la carte fermée, quand l'utilisateur change d'onglet puis revient, alors elle reste fermée pendant la session.

## 🧪 Tests à écrire

- [ ] location_off_card_test : deux CTA.
- [ ] community_map_bloc_test : MapLocationOff.
- [ ] golden_location_off.
- [ ] navigation_test : J-06 -> J-07 / J-08.

## ♿ Accessibilité et i18n

- ARB : communityLocationOffTitle, communityLocationOffBody, communityEnableLocation « Activer la localisation », communityEnterManually « Saisir mon pays / ma ville ».

## 🔗 Dépendances

À réaliser après : `MOB-J-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.7.1
- CDC Flutter §6.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
