> **MOB-B-10** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

B-07 montre les erreurs en ligne (« 3 caractères minimum », « Adresse e-mail invalide ») et une jauge de force à 4 segments (« Force : moyenne · ajoute un chiffre et un symbole »).

## ✅ Objectif

Centraliser les validateurs et la jauge de force, alignés sur la politique de l'API, réutilisables pour la réinitialisation (B-19).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-06` — Inscription
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-06_inscription__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-06_inscription__phone_light.webp?raw=true' width='230' alt='B-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-06_inscription__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-06_inscription__phone_dark.webp?raw=true' width='230' alt='B-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-06_inscription__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-06_inscription__tablet_light.webp?raw=true' width='330' alt='B-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-06_inscription__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-06_inscription__tablet_dark.webp?raw=true' width='330' alt='B-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « 1/4 » · « Crée ton compte » · « Quelques secondes suffisent. » · « Pseudo » · « Boris_Culé » · « E-mail » · « prenom@exemple.com » · « Mot de passe » · « 8 caractères minimum » · « Continuer » · « ou » · « Apple » · « Google » · « Déjà inscrit ? » · « Se connecter »

**Composants repérés** : `btn`, `input`

</details>

**Issues liées sur ce même écran :** [API-AUTH-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-04%5D%22) · [API-AUTH-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-05%5D%22) · [API-AUTH-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-06%5D%22) · [API-AUTH-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-10%5D%22) · [API-AUTH-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-11%5D%22) · [API-AUTH-43](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-43%5D%22) · [MOB-B-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-01%5D%22) · [MOB-B-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-06%5D%22) · [MOB-B-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-09%5D%22) · [MOB-B-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-23%5D%22) · [MOB-B-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-27%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

#### `B-07` — Inscription — erreurs de validation
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-07_inscription-erreurs-de-validation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-07_inscription-erreurs-de-validation__phone_light.webp?raw=true' width='230' alt='B-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-07_inscription-erreurs-de-validation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-07_inscription-erreurs-de-validation__phone_dark.webp?raw=true' width='230' alt='B-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-07_inscription-erreurs-de-validation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-07_inscription-erreurs-de-validation__tablet_light.webp?raw=true' width='330' alt='B-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-07_inscription-erreurs-de-validation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-07_inscription-erreurs-de-validation__tablet_dark.webp?raw=true' width='330' alt='B-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « 1/4 » · « Crée ton compte » · « Quelques secondes suffisent. » · « Pseudo » · « bo » · « 3 caractères minimum » · « E-mail » · « boris@exemple » · « Adresse e-mail invalide » · « Mot de passe » · « •••••• » · « Force : » · « moyenne » · « · ajoute un chiffre et un symbole » · « Continuer »

**Composants repérés** : `btn`, `input`

</details>

**Issues liées sur ce même écran :** [API-AUTH-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-05%5D%22) · [API-AUTH-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-06%5D%22) · [API-AUTH-44](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-44%5D%22) · [MOB-B-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-11%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Pseudo : trim, 3–20 caractères ; message « 3 caractères minimum » sous 3 caractères, « 20 caractères maximum » au-delà.
- E-mail : regex RFC simplifiée, trim, minuscules, ≤ 254 ; message « Adresse e-mail invalide » ; conflit 409 `EMAIL_TAKEN` → « Cette adresse est déjà utilisée » sous le champ.
- Mot de passe bloquant (aligné sur `PASSWORD_POLICY` de l'API) : 8–128 caractères, ≥ 1 majuscule, ≥ 1 minuscule, ≥ 1 chiffre. Messages d'aide ciblés.
- Jauge : 4 segments — faible (rouge, 1), moyenne (jaune, 2), bonne (vert clair, 3), forte (vert, 4) ; score = longueur (≥ 8, ≥ 12), diversité (maj, chiffre, symbole) et absence de mots courants ; texte « Force : moyenne · ajoute un chiffre et un symbole ».
- Validation : à la perte de focus (`touched`) puis à chaque frappe ; erreurs affichées après première interaction ; « Continuer » reste actif et déclenche l'affichage de toutes les erreurs et le focus sur le premier champ invalide.

## 🔄 Comportement et états

- L'erreur disparaît dès que la valeur devient valide.
- Le serveur peut renvoyer 422 avec `details` : les messages sont placés sous les champs correspondants.
- Mot de passe jamais journalisé ni stocké.

## 🛠️ Tâches

- [ ] Créer `lib/features/auth/domain/validators/nickname_validator.dart`, `email_validator.dart`, `password_validator.dart` (fonctions pures, résultat `ValidationResult`).
- [ ] Créer `password_strength.dart` (`PasswordStrength {weak,fair,good,strong}` + conseils).
- [ ] Créer `lib/core/widgets/password_strength_meter.dart` (4 segments animés 200 ms).
- [ ] Intégrer dans `RegisterFormCubit` et dans `auth_text_field.dart` (état erreur : bordure rouge, icône alerte).
- [ ] Gérer le focus automatique sur le premier champ invalide.
- [ ] Mapper `ValidationFailure.details` vers les champs.
- [ ] ARB : `errorNicknameTooShort`, `errorNicknameTooLong`, `errorEmailInvalid`, `errorEmailTaken`, `errorPasswordPolicy`, `passwordStrengthLabel`, `strengthWeak`, `strengthFair`, `strengthGood`, `strengthStrong`, `strengthTipAddDigitSymbol`.
- [ ] Tests de table pour validateurs.

## ✔️ Critères d'acceptation

- [ ] Étant donné le pseudo « bo » quand le champ perd le focus alors « 3 caractères minimum » s'affiche.
- [ ] Étant donné « boris@exemple » quand le champ perd le focus alors « Adresse e-mail invalide » s'affiche.
- [ ] Étant donné « abc123 » quand on tape alors la jauge affiche 2 segments « moyenne » avec conseil.
- [ ] Étant donné un mot de passe sans majuscule quand on appuie « Continuer » alors l'erreur apparaît et le focus s'y place.
- [ ] Étant donné un 409 e-mail déjà utilisé quand l'inscription échoue alors le message s'affiche sous l'e-mail.

## 🧪 Tests à écrire

- [ ] Tests de table : pseudo (2, 3, 20, 21 caractères, espaces).
- [ ] Tests de table : e-mails valides/invalides.
- [ ] Tests de table : mots de passe → score 1..4.
- [ ] Widget test : jauge couleurs et texte.
- [ ] Test : mapping details serveur → champs.

## ♿ Accessibilité et i18n

- Erreurs liées au champ via `Semantics(liveRegion)`.
- La jauge expose un texte « Force : moyenne », pas seulement des couleurs.

## 🔗 Dépendances

À réaliser après : `MOB-B-09` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §5.1
- CDC Global §2.13

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
