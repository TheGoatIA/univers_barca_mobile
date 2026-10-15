> **MOB-Q-15** · Fonctionnel · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Q-08 affiche l'indicateur « Mot de passe solide » et l'erreur « Les mots de passe ne correspondent pas ». Les règles doivent être identiques à celles de l'inscription (Argon2id côté serveur).

## ✅ Objectif

Créer un validateur et un indicateur de force réutilisables par l'inscription et le changement de mot de passe.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-08` — Changer le mot de passe
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__phone_light.webp?raw=true' width='230' alt='Q-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__phone_dark.webp?raw=true' width='230' alt='Q-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__tablet_light.webp?raw=true' width='330' alt='Q-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__tablet_dark.webp?raw=true' width='330' alt='Q-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Mot de passe » · « Mot de passe actuel » · « •••••••• » · « Nouveau mot de passe » · « •••••••••• » · « Mot de passe solide » · « Confirmation » · « Les mots de passe ne correspondent pas » · « Mettre à jour »

**Composants repérés** : `btn`, `input`

</details>

**Issues liées sur ce même écran :** [API-AUTH-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-06%5D%22) · [API-AUTH-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-12%5D%22) · [API-AUTH-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-19%5D%22) · [MOB-Q-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-03%5D%22) · [MOB-Q-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-16%5D%22) · [MOB-Q-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-28%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Règles minimales alignées sur l'API (schéma Joi d'inscription) : longueur minimale 8 caractères, au moins une minuscule, une majuscule, un chiffre (à confirmer avec `validators` de l'API).
- Force : faible / moyenne / solide selon longueur (≥ 12) et diversité ; texte « Mot de passe solide » en vert à partir de « solide ».
- Le nouveau mot de passe doit différer de l'ancien ; la confirmation doit être identique.

## 🛠️ Tâches

- [ ] Créer `core/validators/password_validator.dart` (`PasswordStrength`, `validate`).
- [ ] Créer `PasswordStrengthIndicator` (barre 3 segments + libellé).
- [ ] Afficher/masquer le mot de passe (icône œil) avec `obscureText` et `AutofillHints.newPassword`.
- [ ] Récupérer les règles depuis une constante partagée avec le flux d'inscription.
- [ ] Messages d'erreur localisés.
- [ ] Tests unitaires exhaustifs.
- [ ] Ne jamais journaliser les valeurs.
- [ ] Golden du widget d'indicateur.

## ✔️ Critères d'acceptation

- [ ] Étant donné `abc`, quand il est évalué, alors la force est « faible » et la règle de longueur est signalée.
- [ ] Étant donné `Barca!Culé2026x`, quand il est évalué, alors « Mot de passe solide » est affiché.
- [ ] Étant donné une confirmation différente, quand elle est saisie, alors « Les mots de passe ne correspondent pas » s'affiche.
- [ ] Étant donné un nouveau mot de passe identique à l'ancien, quand on valide, alors une erreur est affichée.

## 🧪 Tests à écrire

- [ ] Test unitaire : cas de force (5 cas).
- [ ] Test unitaire : confirmation.
- [ ] Test unitaire : différent de l'ancien.
- [ ] Widget test : indicateur.
- [ ] Widget test : afficher/masquer.

## ♿ Accessibilité et i18n

- Clés ARB : `passwordWeak`, `passwordMedium`, `passwordStrong`, `passwordMismatch`, `passwordSameAsOld`, `passwordRules`.

## 🔗 Dépendances

À réaliser après : `MOB-Q-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §5.1
- CDC Backend §5.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
