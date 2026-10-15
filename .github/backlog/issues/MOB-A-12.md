> **MOB-A-12** · Écran · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Après une expiration de session, l'écran A-08 rassure l'utilisateur et lui propose de se reconnecter ou de changer de compte.

## ✅ Objectif

Implémenter `SessionExpiredPage` conforme à A-08.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `A-08` — Session expirée
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__phone_light.webp?raw=true' width='230' alt='A-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__phone_dark.webp?raw=true' width='230' alt='A-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__tablet_light.webp?raw=true' width='330' alt='A-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-08_session-expiree__tablet_dark.webp?raw=true' width='330' alt='A-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Session expirée » · « Pour ta sécurité, reconnecte-toi pour continuer. » · « Me reconnecter » · « Changer de compte »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-09%5D%22) · [API-AUTH-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-13%5D%22) · [API-AUTH-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-16%5D%22) · [API-AUTH-44](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-44%5D%22) · [API-AUTH-45](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-45%5D%22) · [MOB-A-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-01%5D%22) · [MOB-A-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-05%5D%22) · [MOB-A-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-11%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

## 📐 Règles de gestion

- Textes : « Session expirée », « Pour ta sécurité, reconnecte-toi pour continuer. », bouton principal « Me reconnecter », action secondaire « Changer de compte ».
- « Me reconnecter » ouvre B-16 avec l'e-mail pré-rempli (`lastEmail`) et ramène ensuite à la route sauvegardée (`returnTo`).
- « Changer de compte » demande confirmation, supprime le cache Drift lié au compte, puis ouvre B-05.
- Écran non dismissible ; `PopScope(canPop:false)`.

## 🔄 Comportement et états

- Pas de timer d'inactivité côté client : l'écran n'apparaît qu'après échec de refresh.
- Hors-ligne : message « Reconnecte-toi une fois en ligne » et boutons actifs vers B-16.
- Reconnexion réussie : retour à `returnTo` avec animation de fondu.

## 🛠️ Tâches

- [ ] Créer `lib/features/system/presentation/pages/session_expired_page.dart`.
- [ ] Ajouter `returnTo` (query param encodé) dans `RouteConstants`/`GoRouter`.
- [ ] Implémenter `ClearLocalAccountDataUseCase` (Drift : purge des tables liées au compte).
- [ ] Dialogue de confirmation « Changer de compte ? ».
- [ ] Clés ARB `sessionExpiredTitle`, `sessionExpiredMessage`, `sessionExpiredLogin`, `sessionExpiredSwitch`, `switchAccountConfirm`.
- [ ] Golden clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné A-08 quand l'utilisateur choisit « Me reconnecter » alors B-16 s'ouvre avec l'e-mail rempli.
- [ ] Étant donné une reconnexion réussie quand elle aboutit alors l'utilisateur retrouve la page précédente.
- [ ] Étant donné « Changer de compte » confirmé quand l'action s'exécute alors le cache est purgé et B-05 s'ouvre.
- [ ] Étant donné le retour Android quand on l'appuie alors rien ne se passe.

## 🧪 Tests à écrire

- [ ] Widget test : 2 boutons, libellés exacts.
- [ ] Test : returnTo propagé.
- [ ] Test : purge Drift lors du changement de compte.
- [ ] Golden `session_expired`.

## ♿ Accessibilité et i18n

- Annonce « Session expirée » au focus initial.
- Boutons ≥ 48 dp.

## 🔗 Dépendances

À réaliser après : `MOB-A-11` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §13.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
