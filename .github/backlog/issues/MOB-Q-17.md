> **MOB-Q-17** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Q-09 « Adresse e-mail » : « Un code de vérification sera envoyé à ta nouvelle adresse. » ; e-mail actuel, nouvel e-mail, mot de passe, bouton « Envoyer le code ».

## ✅ Objectif

Implémenter le changement d'e-mail en deux temps (demande avec mot de passe, puis saisie du code).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-09` — Changer l’e-mail
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-09_changer-l-e-mail__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-09_changer-l-e-mail__phone_light.webp?raw=true' width='230' alt='Q-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-09_changer-l-e-mail__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-09_changer-l-e-mail__phone_dark.webp?raw=true' width='230' alt='Q-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-09_changer-l-e-mail__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-09_changer-l-e-mail__tablet_light.webp?raw=true' width='330' alt='Q-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-09_changer-l-e-mail__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-09_changer-l-e-mail__tablet_dark.webp?raw=true' width='330' alt='Q-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Adresse e-mail » · « Un code de vérification sera envoyé à ta nouvelle adresse. » · « E-mail actuel » · « boris@exemple.com » · « Nouvel e-mail » · « boris.t@exemple.com » · « Mot de passe » · « •••••••• » · « Envoyer le code »

**Composants repérés** : `btn`, `input`

</details>

**Issues liées sur ce même écran :** [API-AUTH-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-20%5D%22) · [MOB-Q-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-03%5D%22) · [MOB-Q-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-28%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Validation de format e-mail (RFC simplifiée) et différent de l'actuel ; erreur `EMAIL_ALREADY_USED` sans révéler d'information excessive (message neutre).
- Après « Envoyer le code », afficher le champ de code à 6 chiffres (réutiliser l'écran de vérification e-mail du groupe auth si disponible) valable 10 minutes (à confirmer).
- L'ancien e-mail reste actif jusqu'à validation du code ; un e-mail d'alerte est envoyé à l'ancienne adresse (côté serveur).

## 🛠️ Tâches

- [ ] Créer `change_email_page.dart` + `ChangeEmailCubit`.
- [ ] Appeler `POST /users/me/email {newEmail, password}` puis `POST /users/me/email/verify {code}`.
- [ ] Créer `OtpField` (6 cases, collage, autofill SMS/e-mail) ou réutiliser le composant existant.
- [ ] Renvoyer le code avec délai de 60 s (compte à rebours).
- [ ] Mettre à jour le profil local après vérification.
- [ ] Gérer erreurs et limitations (429).
- [ ] Golden test clair/sombre.
- [ ] Tests cubit/widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné un e-mail valide et le bon mot de passe, quand « Envoyer le code » est touché, alors le champ de code apparaît.
- [ ] Étant donné un code correct, quand il est saisi, alors l'e-mail du profil est mis à jour.
- [ ] Étant donné un e-mail déjà utilisé, quand la demande est faite, alors un message neutre s'affiche.
- [ ] Étant donné « Renvoyer », quand 60 s ne sont pas écoulées, alors le bouton est désactivé avec compte à rebours.

## 🧪 Tests à écrire

- [ ] bloc_test : demande de code.
- [ ] bloc_test : vérification.
- [ ] Widget test : format e-mail.
- [ ] Widget test : renvoi à 60 s.
- [ ] Golden test : Q-09.

## ♿ Accessibilité et i18n

- Clés ARB : `changeEmailTitle`, `changeEmailIntro`, `currentEmail`, `newEmail`, `sendCode`, `enterCode`, `resendCode`, `emailUpdated`.

## 🔗 Dépendances

À réaliser après : `MOB-Q-14` · `MOB-Q-15` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.13
- CDC Backend §3.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
