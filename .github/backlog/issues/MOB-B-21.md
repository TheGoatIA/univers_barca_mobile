> **MOB-B-21** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Formulaire de connexion avec e-mail, mot de passe, « Rester connecté », « Mot de passe oublié ? » et boutons Apple/Google.

## ✅ Objectif

Implémenter `LoginPage` conforme à B-16.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-16` — Connexion
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-16_connexion__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-16_connexion__phone_light.webp?raw=true' width='230' alt='B-16 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-16_connexion__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-16_connexion__phone_dark.webp?raw=true' width='230' alt='B-16 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-16_connexion__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-16_connexion__tablet_light.webp?raw=true' width='330' alt='B-16 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-16_connexion__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-16_connexion__tablet_dark.webp?raw=true' width='330' alt='B-16 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « Content de te revoir » · « Connecte-toi pour retrouver ta série. » · « E-mail » · « boris@exemple.com » · « Mot de passe » · « •••••••••• » · « Rester connecté » · « Mot de passe oublié ? » · « Se connecter » · « ou » · « Apple » · « Google » · « Pas encore de compte ? » · « Créer un compte »

**Composants repérés** : `btn`, `input`

</details>

**Issues liées sur ce même écran :** [API-AUTH-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-07%5D%22) · [API-AUTH-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-08%5D%22) · [API-AUTH-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-09%5D%22) · [API-AUTH-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-10%5D%22) · [API-AUTH-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-11%5D%22) · [API-AUTH-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-12%5D%22) · [API-AUTH-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-14%5D%22) · [API-AUTH-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-17%5D%22) · [API-AUTH-42](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-42%5D%22) · [API-AUTH-43](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-43%5D%22) · [API-AUTH-45](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-45%5D%22) · [MOB-B-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-06%5D%22) · [MOB-B-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-07%5D%22) · [MOB-B-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-08%5D%22) · [MOB-B-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-23%5D%22) · [MOB-B-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-27%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Textes : « Content de te revoir », « Connecte-toi pour retrouver ta série. », champs « E-mail » (boris@exemple.com) et « Mot de passe » (points), case « Rester connecté » (cochée), lien « Mot de passe oublié ? », bouton « Se connecter », boutons « Apple » et « Google », pied « Pas encore de compte ? » + « Créer un compte ».
- Validation locale minimale : e-mail valide, mot de passe non vide (≤128) ; le serveur reste l'autorité (pas d'indice sur la politique de mot de passe au login).
- Succès : `AuthBloc` → `authenticated` ; première connexion sur l'appareil → A-02, sinon `/home` ou `returnTo` ; onboarding incomplet → B-11.
- Comptes restreints : 403 `ACCOUNT_SUSPENDED` → A-09 ; `ACCOUNT_DISABLED` → A-10.

## 🔄 Comportement et états

- Pré-remplissage de l'e-mail depuis `lastEmail` (jamais le mot de passe).
- Clavier : e-mail `next`, mot de passe `done` → soumission.
- Hors-ligne : SnackBar « Pas de connexion ».

## 🛠️ Tâches

- [ ] Créer `lib/features/auth/presentation/pages/login_page.dart` et `LoginFormCubit`.
- [ ] Utiliser `AuthTextField` partagé et `AutofillGroup` (`AutofillHints.email`, `password`).
- [ ] Brancher `LoginRequested(email,password,rememberMe)` sur `AuthBloc`.
- [ ] Routes `/login`, `/forgot-password`, `/register`.
- [ ] Clés ARB `loginTitle`, `loginSubtitle`, `rememberMe`, `forgotPasswordLink`, `signInAction`, `noAccountYet`.
- [ ] Aligner la case « Rester connecté » sur `SessionStorage`.
- [ ] Enregistrer `lastEmail`.
- [ ] Golden clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné des identifiants corrects quand on appuie « Se connecter » alors `/home` (ou A-02) s'affiche.
- [ ] Étant donné « Mot de passe oublié ? » quand on l'appuie alors B-18 s'affiche.
- [ ] Étant donné un compte suspendu quand le login est tenté alors A-09 s'affiche.
- [ ] Étant donné l'e-mail vide quand on soumet alors une erreur de champ s'affiche sans appel réseau.

## 🧪 Tests à écrire

- [ ] Widget test : soumission clavier.
- [ ] Test bloc : succès/erreurs.
- [ ] Test : lastEmail préremplit.
- [ ] Golden `login` clair/sombre.
- [ ] Test : mot de passe jamais persisté.

## ♿ Accessibilité et i18n

- Autofill/gestionnaire de mots de passe supporté ; case annoncée « Rester connecté, cochée ».

## 🔗 Dépendances

À réaliser après : `MOB-B-08` · `MOB-B-07` · `MOB-B-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.1
- CDC Backend §5.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
