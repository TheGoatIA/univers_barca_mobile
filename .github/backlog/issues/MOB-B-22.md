> **MOB-B-22** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Variante de B-16 : bandeau « Identifiants incorrects — Vérifie ton e-mail et ton mot de passe. Il te reste 3 essais. » et bouton en état chargement « Connexion… ».

## ✅ Objectif

Implémenter les états erreur et chargement du formulaire de connexion et le compteur d'essais.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-17` — Connexion — erreur et chargement
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-17_connexion-erreur-et-chargement__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-17_connexion-erreur-et-chargement__phone_light.webp?raw=true' width='230' alt='B-17 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-17_connexion-erreur-et-chargement__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-17_connexion-erreur-et-chargement__phone_dark.webp?raw=true' width='230' alt='B-17 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-17_connexion-erreur-et-chargement__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-17_connexion-erreur-et-chargement__tablet_light.webp?raw=true' width='330' alt='B-17 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-17_connexion-erreur-et-chargement__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-17_connexion-erreur-et-chargement__tablet_dark.webp?raw=true' width='330' alt='B-17 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « Content de te revoir » · « Identifiants incorrects » · « Vérifie ton e-mail et ton mot de passe. Il te reste 3 essais. » · « E-mail » · « boris@exemple.com » · « Mot de passe » · « •••••••••• » · « Connexion… » · « Créer un compte »

**Composants repérés** : `btn`, `card`, `input`, `spinner`

</details>

**Issues liées sur ce même écran :** [API-AUTH-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-07%5D%22) · [API-AUTH-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-08%5D%22) · [API-AUTH-41](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-41%5D%22) · [API-AUTH-42](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-42%5D%22) · [API-AUTH-44](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-44%5D%22) · [MOB-B-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-07%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Erreur 401 `BAD_CREDENTIALS` : carte rouge sous le titre « Identifiants incorrects » + « Vérifie ton e-mail et ton mot de passe. Il te reste 3 essais. » ; message volontairement unique (pas d'énumération de comptes).
- Compteur d'essais : valeur issue de l'API (`RateLimit` draft-7 ou `details.remainingAttempts`) ; sans information serveur, le texte « Il te reste N essais » est omis. Le limiteur d'auth serveur est de 20 requêtes/15 min ; verrouillage progressif (CDC Backend §5.1).
- Chargement : bouton désactivé avec spinner « Connexion… », champs en lecture seule, annulation impossible ; timeout client 15 s.
- 429 : écran A-05 (compte à rebours) ou message « Trop de tentatives, réessaie dans {minutes} min ».

## 🔄 Comportement et états

- Après erreur : focus sur le mot de passe, champ mot de passe vidé, carte annoncée aux lecteurs d'écran.
- Le lien « Créer un compte » reste actif.
- Erreur 5xx : A-04 en variante compacte ou SnackBar.

## 🛠️ Tâches

- [ ] Ajouter l'état `LoginStatus.failure(code, remainingAttempts)` dans `LoginFormCubit`.
- [ ] Créer `widgets/auth_error_card.dart` (icône alerte, titre, message).
- [ ] Parser `RateLimit-Remaining` dans `ErrorMappingInterceptor` et le placer dans `AuthFailure.details`.
- [ ] Gérer le timeout 15 s et le bouton `AppButton(loading:true)`.
- [ ] Vider le mot de passe et replacer le focus.
- [ ] Clés ARB `loginErrorTitle`, `loginErrorBody`, `loginAttemptsLeft` (pluriel `{count}`), `loggingIn`, `tooManyAttempts`.
- [ ] Tests de golden état erreur et chargement.

## ✔️ Critères d'acceptation

- [ ] Étant donné de mauvais identifiants quand le serveur répond 401 alors la carte « Identifiants incorrects » s'affiche.
- [ ] Étant donné remainingAttempts=3 quand l'erreur s'affiche alors « Il te reste 3 essais » apparaît.
- [ ] Étant donné une requête en cours quand le bouton est pressé alors « Connexion… » et le spinner s'affichent et un second appui est ignoré.
- [ ] Étant donné un 429 quand il survient alors le compte à rebours s'affiche.
- [ ] Étant donné un timeout de 15 s quand il est dépassé alors une erreur réseau s'affiche sans carte « Identifiants incorrects ».

## 🧪 Tests à écrire

- [ ] Test cubit : 401 → failure.
- [ ] Test : pluriel « essai/essais ».
- [ ] Widget test : bouton en chargement.
- [ ] Golden `login_error` et `login_loading`.
- [ ] Test : mot de passe vidé après erreur.

## ♿ Accessibilité et i18n

- `liveRegion` pour la carte d'erreur ; spinner annoncé « Connexion en cours ».

## 🔗 Dépendances

À réaliser après : `MOB-B-21` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §5.1
- CDC Backend §5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
