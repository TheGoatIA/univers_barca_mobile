> **MOB-Q-26** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Q-17 « À propos » : logo, « Version 1.0.0 (build 42) · Production », liens Conditions d'utilisation, Politique de confidentialité, Charte de la communauté, Licences open source, et l'avertissement « Univers Barça est une application communautaire non officielle, sans lien avec le FC Barcelone. Aucune marque déposée du club n'est utilisée. ».

## ✅ Objectif

Implémenter la page légale avec version dynamique par flavor.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-17` — À propos et mentions légales
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-17_a-propos-et-mentions-legales__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-17_a-propos-et-mentions-legales__phone_light.webp?raw=true' width='230' alt='Q-17 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-17_a-propos-et-mentions-legales__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-17_a-propos-et-mentions-legales__phone_dark.webp?raw=true' width='230' alt='Q-17 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-17_a-propos-et-mentions-legales__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-17_a-propos-et-mentions-legales__tablet_light.webp?raw=true' width='330' alt='Q-17 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-17_a-propos-et-mentions-legales__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-17_a-propos-et-mentions-legales__tablet_dark.webp?raw=true' width='330' alt='Q-17 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « À propos » · « Univers » · « Barça » · « Version 1.0.0 (build 42) · Production » · « Conditions d’utilisation » · « Politique de confidentialité » · « Charte de la communauté » · « Licences open source » · « Univers Barça est une application communautaire non officielle, sans lien avec le FC Barcelone. Aucune marque déposée du club n'est utilisée. »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-AUTH-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-22%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Version et build issues de `package_info_plus` ; l'environnement (Production/Staging/Dev) vient du flavor (CDC Flutter §11.2) ; masquer la mention en production si non souhaité.
- Liens ouverts via `url_launcher` (navigateur in-app) vers les pages publiques versionnées ; mode hors-ligne : message « Connexion nécessaire ».
- Licences open source : `showLicensePage` avec `applicationName` et `applicationVersion`.

## 🛠️ Tâches

- [ ] Créer `about_page.dart`.
- [ ] Créer `LegalLinkTile(title, url)` ×4 et `VersionLabel`.
- [ ] Lire la version avec `PackageInfo.fromPlatform()` et le flavor depuis `AppConfig`.
- [ ] Définir les URL dans `core/constants/legal_urls.dart` (par langue fr/en/es).
- [ ] Ouvrir `showLicensePage`.
- [ ] Gérer l'indisponibilité du navigateur.
- [ ] Golden test clair/sombre.
- [ ] Tests widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné le build 42, quand Q-17 s'affiche, alors « Version 1.0.0 (build 42) · Production » est visible.
- [ ] Étant donné « Conditions d'utilisation », quand il est touché, alors la page légale s'ouvre dans la langue de l'app.
- [ ] Étant donné « Licences open source », quand il est touché, alors la page de licences Flutter s'ouvre.
- [ ] Étant donné le hors-ligne, quand un lien est touché, alors un message s'affiche sans crash.

## 🧪 Tests à écrire

- [ ] Golden test : Q-17.
- [ ] Widget test : version affichée.
- [ ] Test : URL par langue.
- [ ] Widget test : hors-ligne.
- [ ] Widget test : licences.

## ♿ Accessibilité et i18n

- Clés ARB : `aboutTitle`, `versionBuild` (placeholders), `termsOfUse`, `privacyPolicy`, `communityCharter`, `openSourceLicenses`, `unofficialDisclaimer`.

## 🔗 Dépendances

À réaliser après : `MOB-Q-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §10.1, §10.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
