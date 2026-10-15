> **MOB-B-12** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Le CDC Global §10.3 exige qu'une charte soit acceptée à l'inscription. B-08 présente 4 engagements et deux cases à cocher avant d'envoyer l'inscription.

## ✅ Objectif

Implémenter `CharterPage` conforme à B-08 qui, à « Accepter et continuer », enregistre le compte avec les consentements `terms` et `privacy`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-08` — Charte de la communauté
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-08_charte-de-la-communaute__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-08_charte-de-la-communaute__phone_light.webp?raw=true' width='230' alt='B-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-08_charte-de-la-communaute__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-08_charte-de-la-communaute__phone_dark.webp?raw=true' width='230' alt='B-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-08_charte-de-la-communaute__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-08_charte-de-la-communaute__tablet_light.webp?raw=true' width='330' alt='B-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-08_charte-de-la-communaute__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-08_charte-de-la-communaute__tablet_dark.webp?raw=true' width='330' alt='B-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « 2/4 » · « La charte des culés » · « Une communauté saine, c’est l’affaire de tous. » · « Respect avant tout » · « Aucun propos haineux, discriminatoire ou menaçant. » · « Pas de rivalité toxique » · « On chambre, on ne harcèle pas. » · « Signale, ne réponds pas » · « Un doute ? Utilise le bouton « Signaler ». » · « Ta position reste privée » · « Jamais de position exacte partagée. » · « J’accepte la » · « charte de la communauté » · « et les » · « conditions d’utilisation » · « J’ai lu la » · « politique de confidentialité » · « Accepter et continuer »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-AUTH-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-05%5D%22) · [API-AUTH-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-21%5D%22) · [API-AUTH-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-22%5D%22) · [MOB-B-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-01%5D%22) · [MOB-B-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-13%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Titre « LA CHARTE DES CULÉS », sous-titre « Une communauté saine, c'est l'affaire de tous. », 4 cartes : « Respect avant tout — Aucun propos haineux, discriminatoire ou menaçant. », « Pas de rivalité toxique — On chambre, on ne harcèle pas. », « Signale, ne réponds pas — Un doute ? Utilise le bouton « Signaler ». », « Ta position reste privée — Jamais de position exacte partagée. ».
- Case 1 : « J'accepte la **charte de la communauté** et les **conditions d'utilisation** » ; case 2 : « J'ai lu la **politique de confidentialité** » ; les liens ouvrent les documents dans une vue interne (WebView ou page Markdown) sans quitter le tunnel.
- « Accepter et continuer » désactivé tant que les deux cases ne sont pas cochées ; au tap : `POST /auth/register` avec `consents:{terms:true,privacy:true}` (+ `notifications`/`geolocation`/`analytics` à false par défaut, jamais pré-cochés).
- Les consentements sont historisés côté API (`ConsentRecord` : type, granted, version `1.0`, grantedAt) ; la version des documents acceptés est une constante `legalDocsVersion`.
- La charte couvre respect, contenu haineux, modération, sanctions (avertissement, suspension, bannissement), signalement.

## 🔄 Comportement et états

- Chargement : bouton avec spinner, champs désactivés ; succès → B-09 ; e-mail déjà utilisé (409) → retour à B-06 avec erreur sous le champ.
- Erreur réseau : SnackBar + bouton « Réessayer » ; les cases restent cochées.
- 429 : écran A-05 ou message temporisé.
- Retour : revient à B-06 sans perte de saisie.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `POST` | `/api/v1/auth/register` | Création du compte + consentements (existant). | {email,password,displayName,locale,consents:{terms:true,privacy:true}} | {success:true,data:{user,accessToken,refreshToken}} |

## 🛠️ Tâches

- [ ] Créer `lib/features/auth/presentation/pages/charter_page.dart` et `widgets/charter_pillar_card.dart`.
- [ ] Créer `widgets/legal_checkbox_row.dart` avec `Text.rich` et `TapGestureRecognizer`.
- [ ] Créer `LegalDocumentPage` (WebView/Markdown) pour `/legal/charter`, `/legal/terms`, `/legal/privacy`.
- [ ] Créer `RegisterCubit.submit()` appelant `RegisterUser` avec locale et consentements.
- [ ] Définir `legalDocsVersion` dans `lib/core/constants/legal_constants.dart`.
- [ ] Gérer 409 `EMAIL_TAKEN` avec retour à l'étape 1.
- [ ] Clés ARB `charterTitle`, `charterSubtitle`, 4 paires `charterPillarN`, `acceptCharterTerms`, `acceptPrivacy`, `acceptAndContinue`.
- [ ] Golden clair/sombre (cases décochées / cochées).

## ✔️ Critères d'acceptation

- [ ] Étant donné 0 ou 1 case cochée quand B-08 s'affiche alors « Accepter et continuer » est désactivé.
- [ ] Étant donné 2 cases cochées quand on appuie le bouton alors `POST /auth/register` est envoyé avec terms et privacy à true.
- [ ] Étant donné un 409 quand l'inscription échoue alors B-06 s'affiche avec « Cette adresse est déjà utilisée ».
- [ ] Étant donné un succès quand l'API répond alors B-09 s'affiche.
- [ ] Étant donné un lien « politique de confidentialité » quand on l'appuie alors le document s'ouvre sans perdre les cases.

## 🧪 Tests à écrire

- [ ] Widget test : activation du bouton selon cases.
- [ ] Test cubit : payload contient consents terms/privacy true.
- [ ] Test : 409 → retour B-06.
- [ ] Golden `charter` clair/sombre.
- [ ] Test : notifications/geolocation/analytics false par défaut.

## ♿ Accessibilité et i18n

- Cases avec libellé complet et liens annoncés « lien : charte ».
- Zones tactiles ≥ 48 dp autour des cases.

## 🔗 Dépendances

À réaliser après : `MOB-B-09` · `MOB-B-06` · `MOB-B-13` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §10.2
- CDC Global §10.3
- CDC Backend §3.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
