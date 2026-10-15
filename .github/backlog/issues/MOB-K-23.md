> **MOB-K-23** · Écran · Priorité **P1** · Taille **L** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Le formulaire « Créer un groupe » : image, nom (Culés Bafoussam), ville (Bafoussam), description, message « Un groupe local est validé par un modérateur lorsqu'il compte peu de membres. Délai moyen : 24 h. » et bouton « Envoyer pour validation ».

## ✅ Objectif

Soumettre une demande de création de groupe soumise à validation (RG-MAP-04).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `K-14` — Créer un groupe — demande
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-14_creer-un-groupe-demande__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-14_creer-un-groupe-demande__phone_light.webp?raw=true' width='230' alt='K-14 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-14_creer-un-groupe-demande__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-14_creer-un-groupe-demande__phone_dark.webp?raw=true' width='230' alt='K-14 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-14_creer-un-groupe-demande__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-14_creer-un-groupe-demande__tablet_light.webp?raw=true' width='330' alt='K-14 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-14_creer-un-groupe-demande__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-14_creer-un-groupe-demande__tablet_dark.webp?raw=true' width='330' alt='K-14 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Créer un groupe » · « Choisir une image » · « Nom du groupe » · « Culés Bafoussam » · « Ville » · « Bafoussam » · « Description » · « Le groupe des supporters du Barça dans l'Ouest du Cameroun. » · « Un groupe local est validé par un modérateur lorsqu'il compte peu de membres. Délai moyen : 24 h. » · « Envoyer pour validation »

**Composants repérés** : `btn`, `card`, `input`

</details>

**Issues liées sur ce même écran :** [API-COMM-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-15%5D%22) · [API-COMM-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-16%5D%22) · [API-COMM-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-17%5D%22) · [API-COMM-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-18%5D%22) · [API-COMM-27](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-27%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [API-COMM-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-33%5D%22) · [MOB-K-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-24%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

## 📐 Règles de gestion

- Nom 3-60 car. et unique par ville (409 si doublon : « Un groupe existe déjà à {ville} », avec lien vers le groupe) ; ville obligatoire ; description 10-500 car.
- Image optionnelle : galerie, recadrage carré, <= 5 Mo, JPEG/PNG/WebP.
- Envoi -> groupe en statut pending ; navigation vers K-15.
- Un utilisateur ne peut avoir qu'une demande pending à la fois (règle à confirmer avec l'API).
- Si le pays/ville de l'utilisateur est connu, ville préremplie ; accès depuis J-02 (« Créer ») et K-16.

## 🔄 Comportement et états

- Chargement du bouton ; erreurs 422 par champ ; hors-ligne : brouillon conservé localement (24 h).

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `POST` | `/api/v1/community/groups` | Demander la création d'un groupe local (statut pending) | {name,city,countryCode,description,imageKey?} | {success:true,data:{id,status:'pending'}} |

## 🛠️ Tâches

- [ ] Créer presentation/pages/create_group_page.dart (route /community/groups/new) et CreateGroupCubit.
- [ ] Créer widgets/group_image_picker.dart (image_picker + image_cropper).
- [ ] Créer GroupFormValidator (nom, ville, description).
- [ ] Créer use case create_group.dart + @Post('/community/groups') (chemin à confirmer).
- [ ] Créer le modèle CreateGroupRequestModel.
- [ ] Persister le brouillon (DraftStore).
- [ ] Gérer 409 doublon et 429.
- [ ] Ajouter ARB et goldens.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné des champs valides, quand l'utilisateur envoie, alors la demande est créée et K-15 s'affiche.
- [ ] Étant donné un nom de 2 caractères, quand la validation s'exécute, alors l'erreur « 3 caractères minimum » apparaît.
- [ ] Étant donné un doublon, quand l'API répond 409, alors un lien vers le groupe existant est proposé.
- [ ] Étant donné une demande pending existante, quand l'utilisateur ouvre le formulaire, alors il est redirigé vers K-15.
- [ ] Étant donné une image de 9 Mo, quand elle est choisie, alors elle est refusée.

## 🧪 Tests à écrire

- [ ] group_form_validator_test.
- [ ] create_group_cubit_test : succès, 409, 422.
- [ ] group_image_picker_test.
- [ ] create_group_page_test.
- [ ] golden_create_group_light_dark.

## ♿ Accessibilité et i18n

- ARB : createGroupTitle « Créer un groupe », createGroupName « Nom du groupe », createGroupCity « Ville », createGroupDescription « Description », createGroupValidationNotice, createGroupSubmit « Envoyer pour validation »

## 🔗 Dépendances

À réaliser après : `MOB-K-24` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.16.2 (RG-MAP-04, RG-MAP-05)
- CDC Global §2.8

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
