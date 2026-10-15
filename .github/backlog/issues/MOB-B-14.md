> **MOB-B-14** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Après l'inscription, un code à 6 chiffres est envoyé à l'adresse saisie ; l'écran B-09 le recueille, propose le renvoi après un délai et la modification de l'adresse.

## ✅ Objectif

Implémenter `VerifyEmailPage` conforme à B-09 avec saisie OTP, minuterie de renvoi et vérification.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-09` — Vérification de l’e-mail
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-09_verification-de-l-e-mail__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-09_verification-de-l-e-mail__phone_light.webp?raw=true' width='230' alt='B-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-09_verification-de-l-e-mail__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-09_verification-de-l-e-mail__phone_dark.webp?raw=true' width='230' alt='B-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-09_verification-de-l-e-mail__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-09_verification-de-l-e-mail__tablet_light.webp?raw=true' width='330' alt='B-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-09_verification-de-l-e-mail__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-09_verification-de-l-e-mail__tablet_dark.webp?raw=true' width='330' alt='B-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « 3/4 » · « Vérifie ta boîte mail » · « Nous avons envoyé un code à 6 chiffres à » · « boris@exemple.com » · « Pas reçu ? » · « Renvoyer le code » · « dans 00:42 » · « Vérifier » · « Modifier l’adresse e-mail »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-01%5D%22) · [API-AUTH-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-02%5D%22) · [API-AUTH-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-03%5D%22) · [API-AUTH-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-04%5D%22) · [API-AUTH-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-20%5D%22) · [API-AUTH-43](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-43%5D%22) · [MOB-B-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-01%5D%22) · [MOB-B-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-06%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Textes : « VÉRIFIE TA BOÎTE MAIL », « Nous avons envoyé un code à 6 chiffres à **boris@exemple.com** », champ OTP à 6 cases, « Pas reçu ? Renvoyer le code dans 00:42 », bouton « Vérifier », lien « Modifier l'adresse e-mail ».
- Délai de renvoi 60 s (compte à rebours mm:ss à partir de 00:42 dans la maquette) puis lien « Renvoyer le code » actif ; maximum 5 renvois par heure (limiteur API `sensitive` 5/h) — au-delà message « Réessaie plus tard ».
- Saisie : chiffres uniquement, collage d'un code à 6 chiffres réparti sur les cases, remplissage automatique depuis le SMS/e-mail non requis ; « Vérifier » actif quand 6 chiffres sont saisis ; vérification automatique possible dès le 6e chiffre.
- Code invalide ou expiré : cases en rouge avec secousse 300 ms et message « Code incorrect ou expiré » ; 5 essais maximum avant blocage temporaire (limiteur auth 20/15 min).

## 🔄 Comportement et états

- Succès → B-10 ; l'e-mail est marqué vérifié (`emailVerifiedAt`).
- « Modifier l'adresse e-mail » : retourne à B-06 avec e-mail éditable ; un nouveau code est envoyé à la nouvelle adresse.
- Application en arrière-plan puis au premier plan : le compte à rebours est recalculé.
- Hors-ligne : SnackBar, saisie conservée.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `POST` | `/api/v1/auth/verify-email` | Vérifie l'e-mail. L'API actuelle attend `{token}` (lien) ; l'écran impose un code à 6 chiffres : à aligner dans l'issue API (code OTP) — voir écarts. | {token:'123456'} | {success:true} |
| `POST` | `/api/v1/auth/resend-verification` | Renvoi du code (absent de l'API actuelle ; à créer, limite 5/h). | {email} | {success:true} |

## 🛠️ Tâches

- [ ] Créer `lib/features/auth/presentation/pages/verify_email_page.dart` et `widgets/otp_input.dart` (6 `TextField` + `FocusNode`, collage géré).
- [ ] Créer `VerifyEmailBloc` (events `CodeChanged`, `Submitted`, `ResendRequested`, `Tick` ; états `idle`, `submitting`, `invalid`, `verified`, `resendCooldown(n)`).
- [ ] Utiliser `Ticker`/`Timer.periodic` 1 s avec horloge monotone.
- [ ] Appeler `VerifyEmail(code)` et `ResendVerification()` (voir issue API liée).
- [ ] Créer `core/widgets/countdown_text.dart` partagé avec A-05.
- [ ] Clés ARB `verifyEmailTitle`, `verifyEmailSent` (placeholder `{email}`), `verifyNotReceived`, `verifyResendIn` (`{time}`), `verifyResend`, `verifyAction`, `verifyChangeEmail`, `verifyInvalidCode`.
- [ ] Animation secousse (`AnimationController` + `Curves.elasticIn`).
- [ ] Golden clair/sombre (vide, rempli, erreur).

## ✔️ Critères d'acceptation

- [ ] Étant donné 6 chiffres corrects quand on appuie « Vérifier » alors B-10 s'affiche.
- [ ] Étant donné un code incorrect quand il est soumis alors les cases secouent et « Code incorrect ou expiré » s'affiche.
- [ ] Étant donné le compte à rebours à 00:00 quand il atteint zéro alors « Renvoyer le code » devient actif.
- [ ] Étant donné « Renvoyer le code » quand on l'appuie alors un nouveau code est envoyé et le compteur repart à 60 s.
- [ ] Étant donné « Modifier l'adresse e-mail » quand on l'appuie alors B-06 s'affiche avec le champ e-mail éditable.

## 🧪 Tests à écrire

- [ ] Test bloc : cooldown 60 → 0.
- [ ] Widget test : collage de 6 chiffres.
- [ ] Test : tentative invalide → état `invalid`.
- [ ] Test : limite de renvois.
- [ ] Golden `verify_email` clair/sombre.

## ♿ Accessibilité et i18n

- Cases annoncées « chiffre 1 sur 6 » ; saisie via clavier numérique (`TextInputType.number`, `autofillHints: oneTimeCode`).
- Compte à rebours annoncé par paliers.

## 🔗 Dépendances

À réaliser après : `MOB-B-06` · `MOB-B-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.13
- CDC Backend §3.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
