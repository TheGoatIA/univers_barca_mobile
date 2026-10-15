> **MOB-A-15** · Écran · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Pour un bannissement définitif, l'écran « Accès retiré » informe sans ambiguïté et n'offre que le contact du support et la déconnexion.

## ✅ Objectif

Implémenter `AccountBannedPage` conforme à A-10.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `A-10` — Compte banni
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-10_compte-banni__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-10_compte-banni__phone_light.webp?raw=true' width='230' alt='A-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-10_compte-banni__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-10_compte-banni__phone_dark.webp?raw=true' width='230' alt='A-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-10_compte-banni__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-10_compte-banni__tablet_light.webp?raw=true' width='330' alt='A-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-10_compte-banni__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-10_compte-banni__tablet_dark.webp?raw=true' width='330' alt='A-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Accès retiré » · « Ton compte a été banni définitivement pour non-respect répété de la charte de la communauté. » · « Contacter le support » · « Se déconnecter »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-08%5D%22) · [API-AUTH-44](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-44%5D%22) · [API-AUTH-45](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-45%5D%22) · [MOB-A-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-01%5D%22) · [MOB-A-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-13%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

## 📐 Règles de gestion

- Textes : « Accès retiré », « Ton compte a été banni définitivement pour non-respect répété de la charte de la communauté. », bouton « Contacter le support », action « Se déconnecter ».
- « Contacter le support » ouvre un e-mail prérempli (identifiant de compte, version de l'app) vers l'adresse de support de configuration.
- « Se déconnecter » : `POST /auth/logout` best effort, purge des jetons et du cache compte, retour à B-05.
- Aucun accès aux autres écrans ; aucune création de nouveau compte avec le même e-mail (contrôle serveur).

## 🔄 Comportement et états

- Pas de carte motif (le motif n'est pas affiché pour un bannissement dans la maquette).
- Hors-ligne : déconnexion locale possible, appel serveur ignoré.
- Retour Android bloqué.

## 🛠️ Tâches

- [ ] Créer `lib/features/system/presentation/pages/account_banned_page.dart`.
- [ ] Réutiliser `ClearLocalAccountDataUseCase`.
- [ ] Ajouter `SupportContactService` (mailto + diagnostics non personnels).
- [ ] Clés ARB `bannedTitle`, `bannedMessage`, `bannedContactSupport`, `bannedSignOut`.
- [ ] Brancher le routage `/system/banned`.
- [ ] Golden clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné un compte banni quand l'app démarre alors A-10 s'affiche et aucune autre route n'est accessible.
- [ ] Étant donné « Se déconnecter » quand on l'appuie alors les jetons sont supprimés et B-05 s'ouvre.
- [ ] Étant donné « Contacter le support » quand on l'appuie alors un e-mail avec l'id de compte s'ouvre.
- [ ] Étant donné le retour Android quand on l'appuie alors l'écran reste.

## 🧪 Tests à écrire

- [ ] Widget test : 2 actions.
- [ ] Test : logout hors-ligne purge localement.
- [ ] Golden `account_banned`.
- [ ] Test : mailto contient l'id de compte.

## ♿ Accessibilité et i18n

- Titre annoncé en premier ; contraste conforme.

## 🔗 Dépendances

À réaliser après : `MOB-A-13` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §10.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
