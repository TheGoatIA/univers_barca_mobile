> **MOB-Q-04** · Données · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Langue, thème, taille du texte, animations réduites et contraste renforcé doivent être appliqués immédiatement, persistés localement (Drift/SharedPreferences) puis synchronisés avec le compte (CDC Flutter §8.1, §9.1).

## ✅ Objectif

Créer `SettingsLocalDataSource` avec lecture synchrone au démarrage pour éviter tout flash de thème ou de langue.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-02` — Langue
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__phone_light.webp?raw=true' width='230' alt='Q-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__phone_dark.webp?raw=true' width='230' alt='Q-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__tablet_light.webp?raw=true' width='330' alt='Q-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__tablet_dark.webp?raw=true' width='330' alt='Q-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Langue » · « La langue s'applique immédiatement, y compris aux contenus (quiz, notifications, assistant). » · « 🇫🇷 » · « Français » · « Langue par défaut » · « 🇬🇧 » · « English » · « 🇪🇸 » · « Español » · « Suivre la langue du système »

**Composants repérés** : `toggle`

</details>

**Issues liées sur ce même écran :** [API-AUTH-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-28%5D%22) · [MOB-Q-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-05%5D%22) · [MOB-Q-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-07%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

#### `Q-03` — Thème
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__phone_light.webp?raw=true' width='230' alt='Q-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__phone_dark.webp?raw=true' width='230' alt='Q-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__tablet_light.webp?raw=true' width='330' alt='Q-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__tablet_dark.webp?raw=true' width='330' alt='Q-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Thème » · « Auto » · « Système » · « Clair » · « Sombre » · « Le thème est appliqué immédiatement, sans redémarrage, et synchronisé avec ton compte. »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-AUTH-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-28%5D%22) · [MOB-Q-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-05%5D%22) · [MOB-Q-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-08%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

#### `Q-04` — Taille du texte et accessibilité
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__phone_light.webp?raw=true' width='230' alt='Q-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__phone_dark.webp?raw=true' width='230' alt='Q-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__tablet_light.webp?raw=true' width='330' alt='Q-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-04_taille-du-texte-et-accessibilite__tablet_dark.webp?raw=true' width='330' alt='Q-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Accessibilité » · « Aperçu » · « Le Barça s'impose 3-1 à domicile devant son public. » · « Taille du texte » · « 100 % » · « Réduire les animations » · « Contraste renforcé »

**Composants repérés** : `card`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-AUTH-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-28%5D%22) · [MOB-Q-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-05%5D%22) · [MOB-Q-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-09%5D%22) · [MOB-Q-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-29%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Clés : `locale` (`fr|en|es|system`), `themeMode` (`system|light|dark`), `textScale` (double), `reduceMotion` (bool), `highContrast` (bool), `lastSyncedAt`.
- Chargement avant `runApp` (splash) pour appliquer thème/langue dès la première frame.
- Langue par défaut = langue du système à la première ouverture (CDC Flutter §8.1), repli `fr` si non supportée.

## 🛠️ Tâches

- [ ] Créer `data/datasources/settings_local_datasource.dart` (`SharedPreferences` pour clés simples).
- [ ] Créer `DisplaySettingsRepository` (`load()`, `save(partial)`, `watch()` en `Stream`).
- [ ] Appeler `load()` dans `main.dart` avant `runApp` et injecter la valeur initiale dans `SettingsCubit`.
- [ ] Gérer la migration de clés (`settingsSchemaVersion`).
- [ ] Effacer les préférences d'affichage à la suppression de compte (pas à la déconnexion).
- [ ] Tests avec `SharedPreferences.setMockInitialValues`.
- [ ] Documenter les clés dans le README.
- [ ] Gérer valeurs corrompues (repli sur défauts).

## ✔️ Critères d'acceptation

- [ ] Étant donné un premier lancement avec système en espagnol, quand les réglages sont chargés, alors `locale == es`.
- [ ] Étant donné un système en allemand, quand les réglages sont chargés, alors `locale == fr`.
- [ ] Étant donné une valeur `textScale` corrompue, quand elle est lue, alors la valeur par défaut 1.0 est utilisée.
- [ ] Étant donné un changement de thème, quand l'app est relancée, alors le thème est restauré dès la première frame.

## 🧪 Tests à écrire

- [ ] Test : chargement par défaut.
- [ ] Test : langue système non supportée.
- [ ] Test : valeur corrompue.
- [ ] Test : migration de schéma.
- [ ] Test : `watch()` émet les changements.

## 🔗 Dépendances

À réaliser après : `MOB-Q-02` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §8.1, §9.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
