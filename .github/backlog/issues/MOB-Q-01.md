> **MOB-Q-01** · Infrastructure · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

`RouteConstants.settings = '/settings'` existe déjà mais aucune page. Le CDC Flutter §7.12 prévoit `SettingsScreen` et `AccountManagementScreen` pilotés par `SettingsCubit`.

## ✅ Objectif

Créer `lib/features/settings/` et `lib/features/account/` et déclarer toutes les routes.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-01` — Paramètres
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__phone_light.webp?raw=true' width='230' alt='Q-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__phone_dark.webp?raw=true' width='230' alt='Q-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__tablet_light.webp?raw=true' width='330' alt='Q-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__tablet_dark.webp?raw=true' width='330' alt='Q-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Paramètres » · « Boris_Culé » · « boris@exemple.com » · « Préférences » · « Langue » · « Français » · « Thème » · « Automatique (système) » · « Notifications » · « 5 catégories actives » · « Taille du texte » · « Taille système » · « Confidentialité » · « Confidentialité et consentements » · « Localisation, analyses » · « Visibilité sur la carte » · « Ville uniquement » · « Compte » · « Gérer mon compte » · « Mot de passe, appareils, données » · « Aide et support » · « FAQ, contacter l’équipe » · « À propos » · « v1.0.0 · mentions légales » · « Se déconnecter »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-AUTH-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-28%5D%22) · [API-AUTH-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-30%5D%22) · [API-AUTH-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-31%5D%22) · [MOB-Q-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-02%5D%22) · [MOB-Q-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-05%5D%22) · [MOB-Q-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-06%5D%22) · [MOB-Q-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-13%5D%22) · [MOB-Q-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-29%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

#### `Q-07` — Gérer mon compte
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-07_gerer-mon-compte__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-07_gerer-mon-compte__phone_light.webp?raw=true' width='230' alt='Q-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-07_gerer-mon-compte__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-07_gerer-mon-compte__phone_dark.webp?raw=true' width='230' alt='Q-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-07_gerer-mon-compte__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-07_gerer-mon-compte__tablet_light.webp?raw=true' width='330' alt='Q-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-07_gerer-mon-compte__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-07_gerer-mon-compte__tablet_dark.webp?raw=true' width='330' alt='Q-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Mon compte » · « Adresse e-mail » · « boris@exemple.com » · « Mot de passe » · « Modifié il y a 3 mois » · « Appareils connectés » · « 3 appareils » · « Mes données » · « Exporter mes données » · « Archive au format JSON » · « Zone sensible » · « Supprimer mon compte » · « Action définitive »

</details>

**Issues liées sur ce même écran :** [API-AUTH-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-12%5D%22) · [API-AUTH-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-15%5D%22) · [API-AUTH-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-19%5D%22) · [API-AUTH-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-24%5D%22) · [API-AUTH-26](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-26%5D%22) · [API-AUTH-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-31%5D%22) · [MOB-Q-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-02%5D%22) · [MOB-Q-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-03%5D%22) · [MOB-Q-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-14%5D%22) · [MOB-Q-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-29%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Routes : `/settings`, `/settings/language`, `/settings/theme`, `/settings/accessibility`, `/settings/privacy`, `/settings/account`, `/settings/account/password`, `/settings/account/email`, `/settings/account/devices`, `/settings/account/export`, `/settings/account/delete`, `/settings/about`, `/settings/help`.
- La suppression de compte est un flux de 3 étapes plein écran sans barre de navigation (1/3, 2/3, 3/3).
- L'écran Q-15 (compte supprimé) est hors guard d'authentification, comme les routes `/auth`.

## 🛠️ Tâches

- [ ] Créer `lib/features/settings/{domain,data,presentation/{cubit,pages,widgets}}` et `lib/features/account/{domain,data,presentation}`.
- [ ] Compléter `core/constants/route_constants.dart` (une constante par route ci-dessus).
- [ ] Déclarer les `GoRoute` dans `routes/app_router.dart` ; `parentNavigatorKey: rootNavigatorKey` pour le flux de suppression.
- [ ] Autoriser `/account-deleted` dans le `redirect` du router (pas de redirection vers login).
- [ ] Créer les pages vides et les enregistrer dans la DI (`@injectable`).
- [ ] Ajouter `README.md` des features (cartographie Q-01 → sous-écrans).
- [ ] Brancher l'entrée depuis le profil (rouage) et l'inbox O-05.
- [ ] Test de routage.

## ✔️ Critères d'acceptation

- [ ] Étant donné l'app authentifiée, quand `/settings` est ouvert, alors `SettingsPage` s'affiche.
- [ ] Étant donné `/account-deleted`, quand il est ouvert sans session, alors la page s'affiche sans redirection.
- [ ] Étant donné `/settings/account/delete`, quand il s'ouvre, alors la barre de navigation est masquée.
- [ ] Étant donné `flutter analyze`, quand les features sont ajoutées, alors aucun avertissement.

## 🧪 Tests à écrire

- [ ] Test de routage : toutes les routes.
- [ ] Test : `/account-deleted` accessible hors session.
- [ ] Test d'injection : `getIt<SettingsCubit>()`.
- [ ] Test : retour arrière dans la pile.

## ♿ Accessibilité et i18n

- Clés ARB `settingsTitle`, `accountTitle`.

## 📚 Références

- CDC Flutter §7.12
- CDC Flutter §6.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
