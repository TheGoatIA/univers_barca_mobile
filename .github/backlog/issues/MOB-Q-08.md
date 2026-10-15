> **MOB-Q-08** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Q-03 « Thème » : trois cartes d'aperçu (Auto — Système, Clair, Sombre) et la mention « Le thème est appliqué immédiatement, sans redémarrage, et synchronisé avec ton compte. ».

## ✅ Objectif

Implémenter le sélecteur de thème piloté par `ThemeCubit`/`SettingsCubit`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-03` — Thème
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__phone_light.webp?raw=true' width='230' alt='Q-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__phone_dark.webp?raw=true' width='230' alt='Q-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__tablet_light.webp?raw=true' width='330' alt='Q-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-03_theme__tablet_dark.webp?raw=true' width='330' alt='Q-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Thème » · « Auto » · « Système » · « Clair » · « Sombre » · « Le thème est appliqué immédiatement, sans redémarrage, et synchronisé avec ton compte. »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-AUTH-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-28%5D%22) · [MOB-Q-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-04%5D%22) · [MOB-Q-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-05%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Trois états : `system` (défaut, suit `ThemeMode.system`), `light`, `dark` (CDC Flutter §9.1).
- Application immédiate : `MaterialApp.router(themeMode:)` reconstruit ; transition douce 200 ms (désactivée si animations réduites).
- Synchronisation : `PATCH /users/me {themePreference}` (`system|light|dark`).

## 🛠️ Tâches

- [ ] Créer `settings_theme_page.dart` avec `ThemeOptionCard(mode, previewWidget, selected)`.
- [ ] Créer des aperçus miniatures (mini-écran clair/sombre/dégradé) via `CustomPaint`.
- [ ] Brancher `SettingsCubit.setThemeMode`.
- [ ] Appliquer `AnimatedTheme` pour la transition.
- [ ] Mettre à jour la barre de statut (`SystemUiOverlayStyle`) selon le thème effectif.
- [ ] Golden test clair/sombre.
- [ ] Tests widget.
- [ ] Vérifier les contrastes dans les deux thèmes.

## ✔️ Critères d'acceptation

- [ ] Étant donné « Sombre » touché, quand le choix est validé, alors tous les écrans passent en sombre sans redémarrage.
- [ ] Étant donné « Auto », quand le système bascule en sombre, alors l'app suit.
- [ ] Étant donné un changement de thème, quand la synchro réussit, alors le compte porte `themePreference:'dark'`.
- [ ] Étant donné la barre de statut, quand le thème change, alors les icônes de barre restent lisibles.

## 🧪 Tests à écrire

- [ ] Golden test : Q-03 clair/sombre.
- [ ] Widget test : sélection.
- [ ] Widget test : suivi du système.
- [ ] Test : barre de statut.

## ♿ Accessibilité et i18n

- Clés ARB : `themeTitle`, `themeAuto`, `themeSystem`, `themeLight`, `themeDark`, `themeNote`.

## 🔗 Dépendances

À réaliser après : `MOB-Q-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.1
- CDC Global §4.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
