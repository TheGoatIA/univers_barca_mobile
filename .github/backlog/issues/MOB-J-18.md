> **MOB-J-18** · Écran · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Écran « Ma zone » : sans localisation, l'utilisateur déclare pays (Cameroun) et ville (Yaoundé) pour apparaître dans les compteurs. C'est optionnel, moins précis qu'un GPS et modifiable à tout moment (RG-MAP-03).

## ✅ Objectif

Permettre la déclaration manuelle d'une zone avec sélecteurs de pays et de ville validés.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `J-08` — Saisie manuelle pays et ville
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-08_saisie-manuelle-pays-et-ville__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-08_saisie-manuelle-pays-et-ville__phone_light.webp?raw=true' width='230' alt='J-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-08_saisie-manuelle-pays-et-ville__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-08_saisie-manuelle-pays-et-ville__phone_dark.webp?raw=true' width='230' alt='J-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-08_saisie-manuelle-pays-et-ville__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-08_saisie-manuelle-pays-et-ville__tablet_light.webp?raw=true' width='330' alt='J-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-08_saisie-manuelle-pays-et-ville__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-08_saisie-manuelle-pays-et-ville__tablet_dark.webp?raw=true' width='330' alt='J-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ma zone » · « Sans localisation, tu peux déclarer ton pays et ta ville pour apparaître dans les compteurs de la communauté. C'est optionnel. » · « Pays » · « Cameroun » · « Ville » · « Yaoundé » · « Cette information est moins précise qu'une localisation GPS et reste modifiable à tout moment. » · « Enregistrer »

**Composants repérés** : `btn`, `card`, `input`

</details>

**Issues liées sur ce même écran :** [API-COMM-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-01%5D%22) · [API-COMM-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-02%5D%22) · [API-COMM-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-03%5D%22) · [API-COMM-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-05%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-J-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-19%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22)

## 📐 Règles de gestion

- Pays : sélecteur avec recherche (liste ISO 3166-1, noms localisés), obligatoire pour enregistrer.
- Ville : champ texte 2 à 80 caractères avec autocomplétion à partir des villes connues du pays ; saisie libre autorisée.
- Texte d'aide : « Cette information est moins précise qu'une localisation GPS et reste modifiable à tout moment. ».
- Bouton « Enregistrer » inactif tant que le pays est vide ; envoi PATCH sur la zone de l'utilisateur.
- À l'enregistrement, la visibilité par défaut est « Ville uniquement » et la caméra se recentre sur la zone.

## 🔄 Comportement et états

- Chargement du bouton ; erreur 422 : message sous le champ concerné ; hors-ligne : enregistrement local et synchronisation différée avec bandeau.
- Pré-remplissage avec la zone existante en cas de modification.

## 🛠️ Tâches

- [ ] Créer presentation/pages/manual_zone_page.dart (route /community/location/manual) et ManualZoneCubit.
- [ ] Créer widgets/country_picker_field.dart (bottom sheet de recherche, drapeaux).
- [ ] Créer widgets/city_autocomplete_field.dart.
- [ ] Créer le validateur ZoneValidator (pays ISO valide, ville 2-80 car., trim, caractères autorisés lettres/espaces/tirets/apostrophes).
- [ ] Créer use case SaveManualZone et UserZone (entité).
- [ ] Persister localement la zone dans Drift (table user_zone) et dans l'API.
- [ ] Ajouter ARB FR/EN/ES.
- [ ] Tests cubit/validateur/widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné pays vide, quand l'écran s'affiche, alors « Enregistrer » est désactivé.
- [ ] Étant donné Cameroun/Yaoundé, quand « Enregistrer » est pressé, alors la zone est enregistrée et la carte se recentre.
- [ ] Étant donné une ville d'un caractère, quand la validation s'exécute, alors une erreur « 2 caractères minimum » s'affiche.
- [ ] Étant donné aucun réseau, quand l'utilisateur enregistre, alors la zone est mémorisée localement et synchronisée plus tard.
- [ ] Étant donné une zone existante, quand l'écran s'ouvre, alors les champs sont pré-remplis.

## 🧪 Tests à écrire

- [ ] zone_validator_test : cas valides/invalides.
- [ ] manual_zone_cubit_test : succès/échec/hors-ligne.
- [ ] country_picker_field_test : recherche « cam ».
- [ ] manual_zone_page_test : bouton désactivé.
- [ ] golden_manual_zone.

## ♿ Accessibilité et i18n

- ARB : communityMyZone « Ma zone », communityCountry « Pays », communityCity « Ville », communitySave « Enregistrer », communityManualHelp

## 🔗 Dépendances

À réaliser après : `MOB-J-19` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.16.2
- CDC Flutter §7.7.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
