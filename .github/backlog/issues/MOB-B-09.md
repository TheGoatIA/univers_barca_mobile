> **MOB-B-09** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Premier formulaire du compte : trois champs et la possibilité de s'inscrire via Apple/Google ; barre de segments « 1/4 » et flèche retour.

## ✅ Objectif

Implémenter `RegisterPage` conforme à B-06 avec validation à la volée.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-06` — Inscription
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-06_inscription__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-06_inscription__phone_light.webp?raw=true' width='230' alt='B-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-06_inscription__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-06_inscription__phone_dark.webp?raw=true' width='230' alt='B-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-06_inscription__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-06_inscription__tablet_light.webp?raw=true' width='330' alt='B-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-06_inscription__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-06_inscription__tablet_dark.webp?raw=true' width='330' alt='B-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « 1/4 » · « Crée ton compte » · « Quelques secondes suffisent. » · « Pseudo » · « Boris_Culé » · « E-mail » · « prenom@exemple.com » · « Mot de passe » · « 8 caractères minimum » · « Continuer » · « ou » · « Apple » · « Google » · « Déjà inscrit ? » · « Se connecter »

**Composants repérés** : `btn`, `input`

</details>

**Issues liées sur ce même écran :** [API-AUTH-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-04%5D%22) · [API-AUTH-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-05%5D%22) · [API-AUTH-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-06%5D%22) · [API-AUTH-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-10%5D%22) · [API-AUTH-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-11%5D%22) · [API-AUTH-43](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-43%5D%22) · [MOB-B-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-01%5D%22) · [MOB-B-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-06%5D%22) · [MOB-B-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-10%5D%22) · [MOB-B-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-23%5D%22) · [MOB-B-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-27%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Champs : « Pseudo » (placeholder « Boris_Culé », icône personne), « E-mail » (placeholder « prenom@exemple.com », icône enveloppe), « Mot de passe » (placeholder « 8 caractères minimum », icône cadenas, œil de révélation).
- Bouton « Continuer » ; sous le formulaire boutons « Apple » et « Google » ; pied « Déjà inscrit ? » + lien « Se connecter » (→ B-16).
- Pseudo : 3 à 20 caractères (Joi `displayName`), lettres, chiffres, `_` et `.`/`-` selon règle produit ; e-mail ≤ 254 ; mot de passe 8–128.
- « Continuer » valide localement puis ouvre B-08 (charte) ; l'appel `POST /auth/register` est fait à la validation de B-08 pour y joindre les consentements.

## 🔄 Comportement et états

- Focus : bordure bleue ; erreur : bordure rouge + icône alerte + message (voir B-07).
- Clavier : `textInputAction.next` entre les champs, `done` sur le mot de passe ; `autofillHints` : username/email/newPassword.
- État chargement non applicable ici (appel à l'étape suivante) ; hors-ligne : message à l'étape 2.
- Écran défilable avec clavier ouvert, bouton toujours accessible (`resizeToAvoidBottomInset`).

## 🛠️ Tâches

- [ ] Créer `lib/features/auth/presentation/pages/register_page.dart`.
- [ ] Créer `widgets/auth_text_field.dart` (label, icône, erreur, révélation) dans `lib/core/widgets/`.
- [ ] Créer `RegisterFormCubit` (champs, validations, touched) dans `presentation/cubit/`.
- [ ] Brancher les boutons sociaux sur l'issue d'authentification sociale.
- [ ] Ajouter `AutofillGroup`.
- [ ] Clés ARB `registerTitle`, `registerSubtitle`, `fieldNickname`, `fieldEmail`, `fieldPassword`, `hintNickname`, `hintEmail`, `hintPassword`, `alreadyRegistered`, `signIn`.
- [ ] Mémoriser pseudo/e-mail dans l'onboarding store.
- [ ] Golden clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné des champs valides quand on appuie « Continuer » alors B-08 s'affiche.
- [ ] Étant donné « Se connecter » quand on l'appuie alors B-16 s'affiche.
- [ ] Étant donné le champ mot de passe quand on appuie l'œil alors les caractères sont révélés.
- [ ] Étant donné un clavier ouvert quand le formulaire défile alors le bouton « Continuer » reste atteignable.

## 🧪 Tests à écrire

- [ ] Widget test : navigation vers B-08.
- [ ] Test cubit : validations.
- [ ] Widget test : toggle visibilité.
- [ ] Golden `register` clair/sombre.
- [ ] Test : AutofillHints présents.

## ♿ Accessibilité et i18n

- Labels liés aux champs ; erreurs annoncées.
- Zones tactiles ≥ 48 dp.

## 🔗 Dépendances

À réaliser après : `MOB-B-01` · `MOB-B-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.1
- CDC Global §2.13

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
