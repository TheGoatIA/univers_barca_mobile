> **MOB-B-25** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Atteint depuis le lien reçu par e-mail : l'utilisateur choisit un nouveau mot de passe, avec jauge de force, confirmation et checklist.

## ✅ Objectif

Implémenter `ResetPasswordPage` conforme à B-19 et le deep link associé.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-19` — Nouveau mot de passe
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-19_nouveau-mot-de-passe__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-19_nouveau-mot-de-passe__phone_light.webp?raw=true' width='230' alt='B-19 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-19_nouveau-mot-de-passe__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-19_nouveau-mot-de-passe__phone_dark.webp?raw=true' width='230' alt='B-19 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-19_nouveau-mot-de-passe__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-19_nouveau-mot-de-passe__tablet_light.webp?raw=true' width='330' alt='B-19 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-19_nouveau-mot-de-passe__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-19_nouveau-mot-de-passe__tablet_dark.webp?raw=true' width='330' alt='B-19 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « Nouveau mot de passe » · « Choisis un mot de passe solide que tu n’utilises nulle part ailleurs. » · « •••••••••••• » · « Mot de passe fort » · « Confirmation » · « 12 caractères ou plus » · « Une majuscule et un chiffre » · « Un symbole » · « Enregistrer »

**Composants repérés** : `btn`, `card`, `input`

</details>

**Issues liées sur ce même écran :** [API-AUTH-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-06%5D%22) · [API-AUTH-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-17%5D%22) · [API-AUTH-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-18%5D%22) · [API-AUTH-43](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-43%5D%22) · [MOB-B-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-06%5D%22) · [MOB-B-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-27%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Textes : « NOUVEAU MOT DE PASSE », « Choisis un mot de passe solide que tu n'utilises nulle part ailleurs. », champs « Nouveau mot de passe » (jauge « Mot de passe fort »), « Confirmation » (coche verte quand identique), carte checklist (« 12 caractères ou plus », « Une majuscule et un chiffre », « Un symbole »), bouton « Enregistrer ».
- Politique bloquante = celle de l'API (8–128 caractères, majuscule, minuscule, chiffre) ; la checklist de la maquette (12 caractères, symbole) est affichée comme recommandation de robustesse : décision produit à trancher (voir écarts).
- Confirmation obligatoire identique ; `POST /auth/reset-password {token,password}` ; token lu depuis le lien `https://…/reset-password?token=` ou schéma `univers-barca://reset-password?token=`.
- Token invalide/expiré (400) : message « Lien expiré » avec bouton « Demander un nouveau lien » vers B-18.

## 🔄 Comportement et états

- Chargement : bouton avec spinner.
- Succès → B-20 ; le serveur révoque les autres sessions.
- Ouverture sans token : redirection vers B-18.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `POST` | `/api/v1/auth/reset-password` | Réinitialise le mot de passe (existant). | {token,password} | {success:true} |

## 🛠️ Tâches

- [ ] Créer `lib/features/auth/presentation/pages/reset_password_page.dart` et `ResetPasswordCubit`.
- [ ] Réutiliser `password_validator.dart` et `password_strength_meter.dart`.
- [ ] Créer `widgets/password_checklist.dart` (3 lignes, coche verte/grise animée 150 ms).
- [ ] Configurer le deep link/universal link dans `app_router.dart` (`/reset-password`) et `AndroidManifest.xml`/`Info.plist`.
- [ ] Appeler `ResetPassword(token,password)`.
- [ ] Clés ARB `resetTitle`, `resetSubtitle`, `newPassword`, `confirmation`, `ruleLength12`, `ruleUpperDigit`, `ruleSymbol`, `savePassword`, `linkExpired`, `requestNewLink`.
- [ ] Golden clair/sombre (vide, fort, erreur, lien expiré).

## ✔️ Critères d'acceptation

- [ ] Étant donné un token valide et deux mots de passe identiques conformes quand on appuie « Enregistrer » alors B-20 s'affiche.
- [ ] Étant donné une confirmation différente quand elle est saisie alors un message « Les mots de passe ne correspondent pas » s'affiche.
- [ ] Étant donné un token expiré quand l'API répond 400 alors « Lien expiré » s'affiche avec le bouton vers B-18.
- [ ] Étant donné le mot de passe valide quand on le tape alors les 3 lignes passent au vert.

## 🧪 Tests à écrire

- [ ] Test cubit : confirmation.
- [ ] Test : jauge identique à l'inscription.
- [ ] Test deep link : token extrait.
- [ ] Golden `reset_password`.
- [ ] Test : 400 → lien expiré.

## ♿ Accessibilité et i18n

- Checklist en liste sémantique ; état coché annoncé.
- Champs `autofillHints: newPassword`.

## 🔗 Dépendances

À réaliser après : `MOB-B-10` · `MOB-B-24` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §5.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
