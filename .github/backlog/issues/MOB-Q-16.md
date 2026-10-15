> **MOB-Q-16** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Q-08 « Mot de passe » : champs « Mot de passe actuel », « Nouveau mot de passe » (indicateur « Mot de passe solide »), « Confirmation » (erreur « Les mots de passe ne correspondent pas ») et bouton « Mettre à jour ».

## ✅ Objectif

Implémenter le formulaire et la soumission sécurisée.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-08` — Changer le mot de passe
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__phone_light.webp?raw=true' width='230' alt='Q-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__phone_dark.webp?raw=true' width='230' alt='Q-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__tablet_light.webp?raw=true' width='330' alt='Q-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__tablet_dark.webp?raw=true' width='330' alt='Q-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Mot de passe » · « Mot de passe actuel » · « •••••••• » · « Nouveau mot de passe » · « •••••••••• » · « Mot de passe solide » · « Confirmation » · « Les mots de passe ne correspondent pas » · « Mettre à jour »

**Composants repérés** : `btn`, `input`

</details>

**Issues liées sur ce même écran :** [API-AUTH-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-06%5D%22) · [API-AUTH-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-12%5D%22) · [API-AUTH-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-19%5D%22) · [MOB-Q-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-03%5D%22) · [MOB-Q-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-15%5D%22) · [MOB-Q-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-28%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Le bouton reste désactivé tant que le formulaire est invalide ; erreur serveur `INVALID_CREDENTIALS` affichée sous « Mot de passe actuel ».
- Après succès, les autres sessions sont révoquées (`revokedOtherSessions`) ; session courante conservée ; toast « Mot de passe mis à jour ».
- Limitation d'essais côté serveur (limiteur « sensible ») : message « Trop de tentatives, réessaie plus tard » à 429.

## 🛠️ Tâches

- [ ] Créer `change_password_page.dart` + `ChangePasswordCubit` (`idle`, `submitting`, `success`, `failure(fieldErrors)`).
- [ ] Utiliser `PasswordValidator` et `PasswordStrengthIndicator`.
- [ ] Brancher `POST /users/me/password` via le repository.
- [ ] Mettre à jour `passwordChangedAt` dans le profil local.
- [ ] Gérer le focus (action clavier `next` / `done`), autofill.
- [ ] Masquer le clavier au succès, retour à Q-07.
- [ ] Golden test clair/sombre.
- [ ] Tests cubit/widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné les 3 champs valides, quand « Mettre à jour » est touché, alors une requête est envoyée et un toast de succès s'affiche.
- [ ] Étant donné un mot de passe actuel erroné, quand le serveur répond 401, alors l'erreur apparaît sous le champ.
- [ ] Étant donné un 429, quand il est reçu, alors un message de patience s'affiche.
- [ ] Étant donné le succès, quand l'écran se ferme, alors Q-07 affiche « Modifié à l'instant ».

## 🧪 Tests à écrire

- [ ] bloc_test : succès.
- [ ] bloc_test : mot de passe actuel erroné.
- [ ] bloc_test : 429.
- [ ] Widget test : bouton désactivé.
- [ ] Golden test : Q-08.

## ♿ Accessibilité et i18n

- Clés ARB : `changePasswordTitle`, `currentPassword`, `newPassword`, `confirmation`, `updatePassword`, `passwordUpdated`, `tooManyAttempts`.

## 🔗 Dépendances

À réaliser après : `MOB-Q-15` · `MOB-Q-14` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.12
- CDC Backend §5.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
