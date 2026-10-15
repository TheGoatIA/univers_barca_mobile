> **MOB-Q-14** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Q-07 « Mon compte » : Adresse e-mail (boris@exemple.com), Mot de passe (Modifié il y a 3 mois), Appareils connectés (3 appareils), section Mes données (Exporter mes données — Archive au format JSON) et Zone sensible (Supprimer mon compte — Action définitive).

## ✅ Objectif

Implémenter la page hub du compte reliée aux sous-flux.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-07` — Gérer mon compte
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-07_gerer-mon-compte__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-07_gerer-mon-compte__phone_light.webp?raw=true' width='230' alt='Q-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-07_gerer-mon-compte__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-07_gerer-mon-compte__phone_dark.webp?raw=true' width='230' alt='Q-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-07_gerer-mon-compte__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-07_gerer-mon-compte__tablet_light.webp?raw=true' width='330' alt='Q-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-07_gerer-mon-compte__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-07_gerer-mon-compte__tablet_dark.webp?raw=true' width='330' alt='Q-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Mon compte » · « Adresse e-mail » · « boris@exemple.com » · « Mot de passe » · « Modifié il y a 3 mois » · « Appareils connectés » · « 3 appareils » · « Mes données » · « Exporter mes données » · « Archive au format JSON » · « Zone sensible » · « Supprimer mon compte » · « Action définitive »

</details>

**Issues liées sur ce même écran :** [API-AUTH-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-12%5D%22) · [API-AUTH-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-15%5D%22) · [API-AUTH-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-19%5D%22) · [API-AUTH-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-24%5D%22) · [API-AUTH-26](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-26%5D%22) · [API-AUTH-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-31%5D%22) · [MOB-Q-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-01%5D%22) · [MOB-Q-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-02%5D%22) · [MOB-Q-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-03%5D%22) · [MOB-Q-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-29%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- « Modifié il y a 3 mois » est dérivé de `passwordChangedAt` (affiche « Jamais modifié » pour un compte social sans mot de passe).
- Comptes sociaux (Google/Apple) : lignes e-mail et mot de passe en lecture seule avec mention « Géré par Google/Apple ».
- La zone sensible est visuellement séparée (couleur danger) et mène au flux de suppression.

## 🛠️ Tâches

- [ ] Créer `account_management_page.dart` (`AccountCubit`).
- [ ] Créer `AccountTile(title, value, onTap)` et `DangerZoneCard`.
- [ ] Charger profil, nombre d'appareils (`GET /users/me/sessions`) en parallèle.
- [ ] Calculer le temps relatif avec `intl` (`RelativeTimeFormatter`).
- [ ] Gérer comptes sociaux (`authProviders`).
- [ ] Golden tests clair/sombre.
- [ ] Tests widget.
- [ ] Analytics `account_screen_viewed`.

## ✔️ Critères d'acceptation

- [ ] Étant donné un compte e-mail, quand Q-07 s'affiche, alors e-mail, ancienneté du mot de passe et nombre d'appareils sont visibles.
- [ ] Étant donné un compte Google, quand Q-07 s'affiche, alors e-mail et mot de passe sont en lecture seule.
- [ ] Étant donné « Supprimer mon compte », quand il est touché, alors le flux Q-13 démarre.
- [ ] Étant donné une erreur de chargement des appareils, quand Q-07 s'affiche, alors la ligne affiche « — » sans bloquer.

## 🧪 Tests à écrire

- [ ] Golden test : Q-07 clair/sombre.
- [ ] Widget test : compte social.
- [ ] Widget test : navigation vers sous-écrans.
- [ ] Widget test : erreur partielle.

## ♿ Accessibilité et i18n

- Clés ARB : `myAccount`, `emailAddress`, `password`, `passwordChanged` (placeholder), `connectedDevices`, `devicesCount` (pluriel), `myData`, `exportMyData`, `exportMyDataSub`, `sensitiveZone`, `deleteAccount`, `definitiveAction`.

## 🔗 Dépendances

À réaliser après : `MOB-Q-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.12
- CDC Global §2.13

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
