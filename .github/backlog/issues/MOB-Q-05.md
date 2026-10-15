> **MOB-Q-05** · Fonctionnel · Priorité **P0** · Taille **L** · Phase 1 — MVP

## 🎯 Contexte

CDC Flutter §7.12 : `SettingsCubit` gère l'état local immédiat des préférences d'affichage, synchronisé en arrière-plan avec le backend ; il alimente aussi la ligne « Notifications — 5 catégories actives » et « Visibilité sur la carte » de Q-01.

## ✅ Objectif

Implémenter le cubit central des réglages.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-01` — Paramètres
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__phone_light.webp?raw=true' width='230' alt='Q-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__phone_dark.webp?raw=true' width='230' alt='Q-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__tablet_light.webp?raw=true' width='330' alt='Q-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__tablet_dark.webp?raw=true' width='330' alt='Q-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Paramètres » · « Boris_Culé » · « boris@exemple.com » · « Préférences » · « Langue » · « Français » · « Thème » · « Automatique (système) » · « Notifications » · « 5 catégories actives » · « Taille du texte » · « Taille système » · « Confidentialité » · « Confidentialité et consentements » · « Localisation, analyses » · « Visibilité sur la carte » · « Ville uniquement » · « Compte » · « Gérer mon compte » · « Mot de passe, appareils, données » · « Aide et support » · « FAQ, contacter l’équipe » · « À propos » · « v1.0.0 · mentions légales » · « Se déconnecter »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-AUTH-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-28%5D%22) · [API-AUTH-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-30%5D%22) · [API-AUTH-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-31%5D%22) · [MOB-Q-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-01%5D%22) · [MOB-Q-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-02%5D%22) · [MOB-Q-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-06%5D%22) · [MOB-Q-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-13%5D%22) · [MOB-Q-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-29%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

#### `Q-02` — Langue
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__phone_light.webp?raw=true' width='230' alt='Q-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__phone_dark.webp?raw=true' width='230' alt='Q-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__tablet_light.webp?raw=true' width='330' alt='Q-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__tablet_dark.webp?raw=true' width='330' alt='Q-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Langue » · « La langue s'applique immédiatement, y compris aux contenus (quiz, notifications, assistant). » · « 🇫🇷 » · « Français » · « Langue par défaut » · « 🇬🇧 » · « English » · « 🇪🇸 » · « Español » · « Suivre la langue du système »

**Composants repérés** : `toggle`

</details>

**Issues liées sur ce même écran :** [API-AUTH-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-28%5D%22) · [MOB-Q-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-04%5D%22) · [MOB-Q-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-07%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

#### `Q-03` — Thème
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__phone_light.webp?raw=true' width='230' alt='Q-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__phone_dark.webp?raw=true' width='230' alt='Q-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__tablet_light.webp?raw=true' width='330' alt='Q-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__tablet_dark.webp?raw=true' width='330' alt='Q-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Thème » · « Auto » · « Système » · « Clair » · « Sombre » · « Le thème est appliqué immédiatement, sans redémarrage, et synchronisé avec ton compte. »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-AUTH-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-28%5D%22) · [MOB-Q-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-04%5D%22) · [MOB-Q-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-08%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

#### `Q-04` — Taille du texte et accessibilité
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__phone_light.webp?raw=true' width='230' alt='Q-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__phone_dark.webp?raw=true' width='230' alt='Q-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__tablet_light.webp?raw=true' width='330' alt='Q-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__tablet_dark.webp?raw=true' width='330' alt='Q-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Accessibilité » · « Aperçu » · « Le Barça s'impose 3-1 à domicile devant son public. » · « Taille du texte » · « 100 % » · « Réduire les animations » · « Contraste renforcé »

**Composants repérés** : `card`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-AUTH-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-28%5D%22) · [MOB-Q-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-04%5D%22) · [MOB-Q-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-09%5D%22) · [MOB-Q-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-29%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

#### `Q-05` — Confidentialité et consentements
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__phone_light.webp?raw=true' width='230' alt='Q-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__phone_dark.webp?raw=true' width='230' alt='Q-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__tablet_light.webp?raw=true' width='330' alt='Q-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__tablet_dark.webp?raw=true' width='330' alt='Q-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Confidentialité » · « Tu contrôles tes données. Chaque consentement est distinct et révocable à tout moment. » · « Géolocalisation approximative » · « Pour te proposer des groupes locaux. Jamais ta position exacte. » · « Notifications push » · « Rappels de match, série, communauté. » · « Statistiques d’usage anonymes » · « Nous aident à améliorer l’application. » · « Visibilité sur la carte » · « Ville uniquement » · « Politique de confidentialité » · « Historique de mes consentements » · « 3 enregistrements »

**Composants repérés** : `toggle`

</details>

**Issues liées sur ce même écran :** [API-AUTH-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-21%5D%22) · [API-AUTH-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-22%5D%22) · [API-AUTH-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-23%5D%22) · [API-AUTH-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-30%5D%22) · [MOB-Q-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-02%5D%22) · [MOB-Q-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-03%5D%22) · [MOB-Q-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-10%5D%22) · [MOB-Q-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-11%5D%22) · [MOB-Q-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-13%5D%22) · [MOB-Q-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-29%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Toute modification est appliquée localement avant l'appel réseau ; en cas d'échec réseau, la valeur locale est conservée et resynchronisée plus tard (jamais de retour arrière visible).
- Synchronisation compte : `PATCH /users/me {locale, themePreference}` avec debounce 500 ms ; textScale/reduceMotion/highContrast restent locaux (appareil).
- Au login sur un nouvel appareil, la langue/thème du compte l'emportent sur les valeurs par défaut locales.

## 🛠️ Tâches

- [ ] Créer `settings_cubit.dart` / `settings_state.dart` (`profile`, `display`, `consents`, `notificationsSummary`, `mapVisibility`, `status`).
- [ ] Méthodes : `load()`, `setLocale`, `setThemeMode`, `setTextScale`, `setReduceMotion`, `setHighContrast`, `setMapVisibility`.
- [ ] Debounce et file de synchronisation (`PendingActions` type `settings_patch`).
- [ ] Exposer `ThemeMode`, `Locale`, `textScale` au `MaterialApp.router` via `BlocBuilder`.
- [ ] Récupérer `activeCategoriesCount` depuis `NotificationPreferencesCubit` (groupe O).
- [ ] Gérer erreur/hors-ligne.
- [ ] `@lazySingleton` (état global).
- [ ] Tests bloc.

## ✔️ Critères d'acceptation

- [ ] Étant donné un changement de thème, quand l'utilisateur choisit « Sombre », alors l'UI bascule sans redémarrage avant toute réponse réseau.
- [ ] Étant donné le hors-ligne, quand la langue change, alors la valeur est conservée et envoyée au retour réseau.
- [ ] Étant donné un compte avec `themePreference:'dark'`, quand l'utilisateur se connecte sur un nouvel appareil, alors le thème sombre est appliqué.
- [ ] Étant donné 3 changements en 400 ms, quand le debounce expire, alors un seul PATCH est envoyé.

## 🧪 Tests à écrire

- [ ] bloc_test : changement de thème.
- [ ] bloc_test : hors-ligne + resync.
- [ ] bloc_test : priorité du compte au login.
- [ ] bloc_test : debounce.
- [ ] bloc_test : `textScale` local uniquement.

## 🔗 Dépendances

À réaliser après : `MOB-Q-04` · `MOB-Q-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.12
- CDC Flutter §9.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
