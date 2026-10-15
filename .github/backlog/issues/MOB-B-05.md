> **MOB-B-05** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Porte d'entrée de l'authentification : « Bienvenue, culé ! », deux actions principales et deux boutons de connexion sociale Apple et Google.

## ✅ Objectif

Implémenter `WelcomePage` conforme à B-05.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-05` — Bienvenue — créer ou se connecter
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-05_bienvenue-creer-ou-se-connecter__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-05_bienvenue-creer-ou-se-connecter__phone_light.webp?raw=true' width='230' alt='B-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-05_bienvenue-creer-ou-se-connecter__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-05_bienvenue-creer-ou-se-connecter__phone_dark.webp?raw=true' width='230' alt='B-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-05_bienvenue-creer-ou-se-connecter__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-05_bienvenue-creer-ou-se-connecter__tablet_light.webp?raw=true' width='330' alt='B-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-05_bienvenue-creer-ou-se-connecter__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-05_bienvenue-creer-ou-se-connecter__tablet_dark.webp?raw=true' width='330' alt='B-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « Bienvenue, » · « culé ! » · « Rejoins la communauté de supporters du Barça. » · « Créer un compte » · « J’ai déjà un compte » · « ou continuer avec » · « Apple » · « Google »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-05%5D%22) · [API-AUTH-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-10%5D%22) · [API-AUTH-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-11%5D%22) · [API-AUTH-43](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-43%5D%22) · [MOB-B-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-01%5D%22) · [MOB-B-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-08%5D%22) · [MOB-B-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-23%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Textes : « Bienvenue, culé ! », « Rejoins la communauté de supporters du Barça. », bouton principal « Créer un compte », bouton secondaire (contour) « J'ai déjà un compte », séparateur « ou continuer avec », boutons « Apple » et « Google ».
- « Créer un compte » → B-06 ; « J'ai déjà un compte » → B-16 ; Apple/Google → flux social (voir issue dédiée).
- Le bouton Apple est obligatoire sur iOS dès qu'un autre fournisseur social est proposé (CDC Flutter §7.1) ; sur Android il reste affiché, comme sur la maquette, via le flux web Apple.
- Cible d'entrée du guard : toute route protégée non authentifiée redirige ici.

## 🔄 Comportement et états

- Hors-ligne : boutons visibles, actions réseau (sociales) désactivées avec infobulle ; la création de compte ouvre B-06 qui échouera proprement.
- Utilisateur ayant `lastEmail` : la page reste identique (pas de pré-remplissage ici).

## 🛠️ Tâches

- [ ] Créer `lib/features/auth/presentation/pages/welcome_page.dart`.
- [ ] Créer `widgets/social_sign_in_button.dart` (Apple/Google, styles guidelines marque).
- [ ] Créer `widgets/or_divider.dart`.
- [ ] Brancher les routes `/register`, `/login`.
- [ ] Clés ARB `welcomeTitle`, `welcomeSubtitle`, `createAccount`, `haveAccount`, `orContinueWith`, `appleLabel`, `googleLabel`.
- [ ] Conserver l'écusson et le pied « Application communautaire non officielle · fan-made ».
- [ ] Golden clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné B-05 quand on appuie « Créer un compte » alors B-06 s'affiche.
- [ ] Étant donné B-05 quand on appuie « J'ai déjà un compte » alors B-16 s'affiche.
- [ ] Étant donné iOS quand B-05 s'affiche alors le bouton Apple est présent.
- [ ] Étant donné un utilisateur non authentifié quand il ouvre `/home` alors il est redirigé vers B-05.

## 🧪 Tests à écrire

- [ ] Widget test : 2 boutons principaux + 2 sociaux.
- [ ] Test redirect go_router.
- [ ] Golden `welcome` clair/sombre.
- [ ] Widget test : sociaux désactivés hors-ligne.

## ♿ Accessibilité et i18n

- Boutons sociaux avec libellé « Continuer avec Apple/Google ».
- Contraste texte secondaire ≥ 4,5:1.

## 🔗 Dépendances

À réaliser après : `MOB-B-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
