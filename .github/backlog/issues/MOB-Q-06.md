> **MOB-Q-06** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Q-01 « Paramètres » : carte profil (avatar « BT », Boris_Culé, boris@exemple.com) puis sections PRÉFÉRENCES (Langue Français, Thème Automatique (système), Notifications 5 catégories actives, Taille du texte Taille système), CONFIDENTIALITÉ (Confidentialité et consentements, Visibilité sur la carte Ville uniquement), COMPTE (Gérer mon compte, Aide et support), À propos (v1.0.0 · mentions légales) et « Se déconnecter ».

## ✅ Objectif

Implémenter la liste groupée de réglages avec sous-titres dynamiques.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-01` — Paramètres
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__phone_light.webp?raw=true' width='230' alt='Q-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__phone_dark.webp?raw=true' width='230' alt='Q-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__tablet_light.webp?raw=true' width='330' alt='Q-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-01_parametres__tablet_dark.webp?raw=true' width='330' alt='Q-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Paramètres » · « Boris_Culé » · « boris@exemple.com » · « Préférences » · « Langue » · « Français » · « Thème » · « Automatique (système) » · « Notifications » · « 5 catégories actives » · « Taille du texte » · « Taille système » · « Confidentialité » · « Confidentialité et consentements » · « Localisation, analyses » · « Visibilité sur la carte » · « Ville uniquement » · « Compte » · « Gérer mon compte » · « Mot de passe, appareils, données » · « Aide et support » · « FAQ, contacter l’équipe » · « À propos » · « v1.0.0 · mentions légales » · « Se déconnecter »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-AUTH-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-28%5D%22) · [API-AUTH-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-30%5D%22) · [API-AUTH-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-31%5D%22) · [MOB-Q-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-01%5D%22) · [MOB-Q-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-02%5D%22) · [MOB-Q-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-05%5D%22) · [MOB-Q-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-13%5D%22) · [MOB-Q-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-29%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Chaque ligne = icône teintée, titre, sous-titre de valeur courante, chevron ; tap → sous-écran correspondant.
- Sous-titres dynamiques : langue (« Français / English / Español »), thème (« Automatique (système) / Clair / Sombre »), texte (« Taille système » ou « 110 % »), visibilité carte (« Masquée / Pays uniquement / Ville uniquement »).
- Pied de page : « Se déconnecter » (ouvre Q-16) et version `v{version}` issue de `package_info_plus`.

## 🛠️ Tâches

- [ ] Créer `presentation/pages/settings_page.dart` (`ListView` avec `SettingsSection(title, children)`).
- [ ] Créer `SettingsTile(icon, color, title, subtitle, onTap)` et `ProfileHeaderCard(avatar, name, email)` (avatar à initiales si pas de photo).
- [ ] Brancher `SettingsCubit` ; squelette de chargement.
- [ ] Navigations vers Q-02…Q-18 et `/notifications/preferences`.
- [ ] Bouton « Se déconnecter » (couleur danger, style texte).
- [ ] Afficher la version via `PackageInfo.fromPlatform()`.
- [ ] Golden tests clair/sombre ; tests widget.
- [ ] `Semantics` des lignes.

## ✔️ Critères d'acceptation

- [ ] Étant donné les valeurs de la maquette, quand Q-01 s'affiche, alors tous les sous-titres de valeur sont corrects.
- [ ] Étant donné un tap sur « Langue », quand il est touché, alors Q-02 s'ouvre.
- [ ] Étant donné « Se déconnecter », quand il est touché, alors la confirmation Q-16 s'ouvre.
- [ ] Étant donné un texte système à 200 %, quand l'écran s'affiche, alors aucun débordement.

## 🧪 Tests à écrire

- [ ] Golden test : Q-01 clair/sombre.
- [ ] Widget test : sous-titres dynamiques.
- [ ] Widget test : navigation de chaque ligne.
- [ ] Widget test : textScale 2.0.
- [ ] Widget test : version affichée.

## ♿ Accessibilité et i18n

- Clés ARB : `settingsTitle`, `sectionPreferences`, `sectionPrivacy`, `sectionAccount`, `language`, `theme`, `themeAuto`, `notifications`, `activeCategories` (pluriel), `textSize`, `textSizeSystem`, `privacyAndConsents`, `privacySub`, `mapVisibility`, `cityOnly`, `manageAccount`, `manageAccountSub`, `helpSupport`, `helpSupportSub`, `about`, `aboutSub`, `signOut`.

## 🔗 Dépendances

À réaliser après : `MOB-Q-05` · `MOB-Q-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.12
- CDC Global §2.13

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
