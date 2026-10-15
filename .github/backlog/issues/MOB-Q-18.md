> **MOB-Q-18** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Q-10 « Appareils » : « Tu es connecté(e) sur ces appareils. Déconnecte ceux que tu ne reconnais pas. » ; iPhone 15 · Yaoundé (Cet appareil · actif maintenant, badge « Actuel »), iPad Air · Yaoundé (Dernière activité il y a 2 j, « Retirer »), Pixel 8 · Paris (il y a 3 sem.) et « Se déconnecter de tous les appareils ».

## ✅ Objectif

Implémenter la liste des sessions et leur révocation.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-10` — Appareils connectés
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-10_appareils-connectes__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-10_appareils-connectes__phone_light.webp?raw=true' width='230' alt='Q-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-10_appareils-connectes__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-10_appareils-connectes__phone_dark.webp?raw=true' width='230' alt='Q-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-10_appareils-connectes__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-10_appareils-connectes__tablet_light.webp?raw=true' width='330' alt='Q-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-10_appareils-connectes__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-10_appareils-connectes__tablet_dark.webp?raw=true' width='330' alt='Q-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Appareils » · « Tu es connecté(e) sur ces appareils. Déconnecte ceux que tu ne reconnais pas. » · « iPhone 15 · Yaoundé » · « Cet appareil · actif maintenant » · « Actuel » · « iPad Air · Yaoundé » · « Dernière activité il y a 2 j » · « Retirer » · « Pixel 8 · Paris » · « Dernière activité il y a 3 sem. » · « Se déconnecter de tous les appareils »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-15%5D%22) · [API-AUTH-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-16%5D%22) · [API-AUTH-43](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-43%5D%22) · [API-AUTH-45](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-45%5D%22) · [MOB-Q-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-02%5D%22) · [MOB-Q-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-03%5D%22) · [MOB-Q-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-23%5D%22) · [MOB-Q-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-28%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Source : refresh tokens actifs (`deviceId`, `platform`, `userAgent`, `lastUsedAt`) ; la localisation affichée est une ville approximative dérivée côté serveur (jamais l'IP brute).
- « Retirer » révoque la famille de refresh tokens de l'appareil (`DELETE /users/me/sessions/:id`) après confirmation ; l'appareil courant n'a pas de bouton « Retirer ».
- « Se déconnecter de tous les appareils » = `POST /auth/logout-all` (existant) ; l'appareil courant est aussi déconnecté, retour au login.

## 🛠️ Tâches

- [ ] Créer `connected_devices_page.dart` + `DevicesCubit` (`load`, `revoke(id)`, `logoutAll`).
- [ ] Créer `DeviceTile(icon, name, subtitle, isCurrent, onRemove)` ; icône selon plateforme.
- [ ] Confirmation `showDialog` avant retrait et avant déconnexion globale.
- [ ] Après `logoutAll`, effacer tokens, jeton FCM et caches, naviguer vers `/login`.
- [ ] Temps relatif localisé (« il y a 2 j », « il y a 3 sem. »).
- [ ] États : chargement, vide (un seul appareil), erreur, hors-ligne (lecture seule).
- [ ] Golden tests clair/sombre.
- [ ] Tests cubit/widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné 3 sessions, quand Q-10 s'affiche, alors l'appareil courant est en tête avec « Actuel » et sans bouton « Retirer ».
- [ ] Étant donné « Retirer » sur l'iPad, quand il est confirmé, alors la session disparaît de la liste.
- [ ] Étant donné « Se déconnecter de tous les appareils », quand il est confirmé, alors l'utilisateur revient au login.
- [ ] Étant donné le hors-ligne, quand Q-10 s'affiche, alors les actions de retrait sont désactivées.

## 🧪 Tests à écrire

- [ ] bloc_test : chargement.
- [ ] bloc_test : retrait d'une session.
- [ ] bloc_test : logout-all.
- [ ] Widget test : badge « Actuel ».
- [ ] Golden test : Q-10.

## ♿ Accessibilité et i18n

- Clés ARB : `devicesTitle`, `devicesIntro`, `currentDevice`, `thisDeviceActive`, `lastActivity` (placeholder), `remove`, `signOutEverywhere`, `removeDeviceConfirm`.

## 🔗 Dépendances

À réaliser après : `MOB-Q-14` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §5.1
- CDC Global §2.13

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
