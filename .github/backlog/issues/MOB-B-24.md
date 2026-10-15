> **MOB-B-24** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

L'utilisateur saisit son e-mail pour recevoir un lien sécurisé de réinitialisation.

## ✅ Objectif

Implémenter `ForgotPasswordPage` conforme à B-18.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-18` — Mot de passe oublié
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-18_mot-de-passe-oublie__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-18_mot-de-passe-oublie__phone_light.webp?raw=true' width='230' alt='B-18 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-18_mot-de-passe-oublie__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-18_mot-de-passe-oublie__phone_dark.webp?raw=true' width='230' alt='B-18 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-18_mot-de-passe-oublie__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-18_mot-de-passe-oublie__tablet_light.webp?raw=true' width='330' alt='B-18 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-18_mot-de-passe-oublie__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-18_mot-de-passe-oublie__tablet_dark.webp?raw=true' width='330' alt='B-18 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « 1/3 » · « Mot de passe oublié ? » · « Saisis ton e-mail : nous t’envoyons un lien sécurisé pour en choisir un nouveau. » · « E-mail » · « boris@exemple.com » · « Envoyer le lien »

**Composants repérés** : `btn`, `input`

</details>

**Issues liées sur ce même écran :** [API-AUTH-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-01%5D%22) · [API-AUTH-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-02%5D%22) · [API-AUTH-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-03%5D%22) · [API-AUTH-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-17%5D%22) · [API-AUTH-41](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-41%5D%22) · [API-AUTH-42](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-42%5D%22) · [API-AUTH-43](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-43%5D%22) · [MOB-B-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-06%5D%22) · [MOB-B-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-27%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Textes : « MOT DE PASSE OUBLIÉ ? », « Saisis ton e-mail : nous t'envoyons un lien sécurisé pour en choisir un nouveau. », champ « E-mail », bouton « Envoyer le lien », indicateur 1/3.
- Réponse identique que l'e-mail existe ou non (API : pas d'énumération de comptes) ; le client affiche toujours « Si un compte existe, tu vas recevoir un e-mail » puis propose de retourner à la connexion.
- Endpoint limité à 5 requêtes par heure (`sensitiveLimiter`) : 429 → message temporisé ; renvoi possible après 60 s.
- Le lien reçu ouvre l'app (deep link) sur B-19 avec `token` ; sinon le web.

## 🔄 Comportement et états

- Pré-remplissage avec l'e-mail de B-16 si saisi.
- Bouton en chargement pendant l'envoi.
- Hors-ligne : SnackBar.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `POST` | `/api/v1/auth/forgot-password` | Envoie le lien de réinitialisation (existant). | {email} | {success:true} |

## 🛠️ Tâches

- [ ] Créer `lib/features/auth/presentation/pages/forgot_password_page.dart` et `ForgotPasswordCubit`.
- [ ] Appeler `ForgotPassword(email)` (`POST /auth/forgot-password`).
- [ ] Créer un écran/état de confirmation « Vérifie ta boîte mail » dans la même page.
- [ ] Gérer le cooldown 60 s avec `countdown_text.dart`.
- [ ] Route `/forgot-password`.
- [ ] Clés ARB `forgotTitle`, `forgotBody`, `sendLink`, `forgotSent`.
- [ ] Golden clair/sombre (formulaire, envoyé).

## ✔️ Critères d'acceptation

- [ ] Étant donné un e-mail valide quand on appuie « Envoyer le lien » alors le message de confirmation générique s'affiche.
- [ ] Étant donné un e-mail inconnu quand on l'envoie alors le même message s'affiche.
- [ ] Étant donné un 429 quand il survient alors un message temporisé s'affiche.
- [ ] Étant donné un e-mail invalide quand on soumet alors une erreur de champ s'affiche sans appel.

## 🧪 Tests à écrire

- [ ] Test cubit : succès générique.
- [ ] Test : même état pour compte inexistant.
- [ ] Test : cooldown.
- [ ] Golden `forgot_password`.
- [ ] Test : 429.

## ♿ Accessibilité et i18n

- Message de confirmation en `liveRegion`.

## 🔗 Dépendances

À réaliser après : `MOB-B-06` · `MOB-B-21` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §5.1
- CDC Backend §5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
