> **MOB-B-15** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Confirmation de la vérification : visuel de réussite et deux actions, personnaliser maintenant ou plus tard.

## ✅ Objectif

Implémenter `EmailVerifiedPage` conforme à B-10.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-10` — E-mail vérifié
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-10_e-mail-verifie__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-10_e-mail-verifie__phone_light.webp?raw=true' width='230' alt='B-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-10_e-mail-verifie__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-10_e-mail-verifie__phone_dark.webp?raw=true' width='230' alt='B-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-10_e-mail-verifie__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-10_e-mail-verifie__tablet_light.webp?raw=true' width='330' alt='B-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-10_e-mail-verifie__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-10_e-mail-verifie__tablet_dark.webp?raw=true' width='330' alt='B-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « Adresse confirmée ! » · « Ton compte est prêt. Encore deux petites questions pour personnaliser ton expérience. » · « Personnaliser mon profil » · « Plus tard »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-04%5D%22) · [API-AUTH-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-29%5D%22) · [API-AUTH-43](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-43%5D%22) · [MOB-B-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-01%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Textes : « Adresse confirmée ! », « Ton compte est prêt. Encore deux petites questions pour personnaliser ton expérience. », bouton principal « Personnaliser mon profil », lien « Plus tard ».
- « Personnaliser mon profil » → B-11 ; « Plus tard » → B-15 (pré-permission notifications) puis `/home`, l'onboarding de personnalisation est alors marqué non terminé et sera proposé à nouveau via une carte de profil à compléter (hors périmètre).
- À cet instant l'utilisateur est authentifié (jetons reçus à l'inscription) : le guard autorise `/home`.
- Animation de succès : coche qui se dessine (500 ms) + léger rebond de l'écusson ; confettis facultatifs désactivés avec animations réduites.

## 🔄 Comportement et états

- Pas d'état de chargement ; page purement locale.
- Retour système désactivé (on ne revient pas au code déjà validé).

## 🛠️ Tâches

- [ ] Créer `lib/features/auth/presentation/pages/email_verified_page.dart`.
- [ ] Créer l'animation `AnimatedCheckmark` (CustomPainter + `AnimationController`).
- [ ] Mettre à jour `AuthBloc`/profil : `emailVerified=true`.
- [ ] Marquer `profileSetupDone=false` si « Plus tard ».
- [ ] `PopScope(canPop:false)`.
- [ ] Clés ARB `emailVerifiedTitle`, `emailVerifiedBody`, `personalizeProfile`, `later`.
- [ ] Golden clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné B-10 quand on appuie « Personnaliser mon profil » alors B-11 s'affiche.
- [ ] Étant donné B-10 quand on appuie « Plus tard » alors B-15 puis `/home` s'affichent.
- [ ] Étant donné l'écran affiché quand le retour Android est utilisé alors rien ne se passe.
- [ ] Étant donné animations réduites quand B-10 s'affiche alors la coche apparaît directement.

## 🧪 Tests à écrire

- [ ] Widget test : 2 actions.
- [ ] Test : `profileSetupDone=false` après « Plus tard ».
- [ ] Test : PopScope.
- [ ] Golden `email_verified`.

## ♿ Accessibilité et i18n

- Titre annoncé immédiatement ; animation décorative exclue.

## 🔗 Dépendances

À réaliser après : `MOB-B-14` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.13

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
