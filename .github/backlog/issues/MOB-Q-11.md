> **MOB-Q-11** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Q-05 « Confidentialité » : « Tu contrôles tes données. Chaque consentement est distinct et révocable à tout moment. » ; interrupteurs Géolocalisation approximative (« Pour te proposer des groupes locaux. Jamais ta position exacte. »), Notifications push, Statistiques d'usage anonymes, ligne Visibilité sur la carte (Ville uniquement), liens Politique de confidentialité et Historique de mes consentements (3 enregistrements).

## ✅ Objectif

Implémenter l'écran de consentements avec explications claires par finalité.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-05` — Confidentialité et consentements
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__phone_light.webp?raw=true' width='230' alt='Q-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__phone_dark.webp?raw=true' width='230' alt='Q-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__tablet_light.webp?raw=true' width='330' alt='Q-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-05_confidentialite-et-consentements__tablet_dark.webp?raw=true' width='330' alt='Q-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Confidentialité » · « Tu contrôles tes données. Chaque consentement est distinct et révocable à tout moment. » · « Géolocalisation approximative » · « Pour te proposer des groupes locaux. Jamais ta position exacte. » · « Notifications push » · « Rappels de match, série, communauté. » · « Statistiques d’usage anonymes » · « Nous aident à améliorer l’application. » · « Visibilité sur la carte » · « Ville uniquement » · « Politique de confidentialité » · « Historique de mes consentements » · « 3 enregistrements »

**Composants repérés** : `toggle`

</details>

**Issues liées sur ce même écran :** [API-AUTH-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-21%5D%22) · [API-AUTH-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-22%5D%22) · [API-AUTH-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-23%5D%22) · [API-AUTH-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-30%5D%22) · [MOB-Q-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-02%5D%22) · [MOB-Q-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-03%5D%22) · [MOB-Q-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-05%5D%22) · [MOB-Q-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-10%5D%22) · [MOB-Q-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-13%5D%22) · [MOB-Q-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-29%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Aucun interrupteur pré-activé à l'inscription pour la géolocalisation (opt-in explicite, RG-MAP-02) ; le consentement général d'inscription est distinct.
- Couper la géolocalisation ouvre la confirmation Q-06 ; l'activer déclenche la demande de permission système avec écran d'explication préalable.
- « Historique de mes consentements » ouvre la liste datée (type, accordé/révoqué, date, version).

## 🛠️ Tâches

- [ ] Créer `settings_privacy_page.dart` avec `ConsentSwitchTile(title, description, value)`.
- [ ] Créer `MapVisibilityTile` (→ sélecteur) et `LinkTile` vers la politique (WebView/navigateur) et l'historique.
- [ ] Brancher `SettingsCubit`/`ConsentRepository`.
- [ ] Créer `ConsentHistoryPage` (liste triée par date décroissante, état vide, hors-ligne).
- [ ] Gérer l'état permission système vs consentement (statut visible : « autorisé dans le système »).
- [ ] Golden tests clair/sombre.
- [ ] Tests widget.
- [ ] Analytics désactivés si consentement refusé (cf. D/E).

## ✔️ Critères d'acceptation

- [ ] Étant donné un nouveau compte, quand Q-05 s'affiche, alors « Géolocalisation approximative » est désactivée.
- [ ] Étant donné « Statistiques d'usage anonymes » coupé, quand l'app est utilisée, alors aucun événement n'est émis.
- [ ] Étant donné « Historique de mes consentements », quand il est touché, alors la liste des enregistrements s'affiche.
- [ ] Étant donné la géolocalisation activée, quand l'interrupteur est touché, alors un écran d'explication précède la demande système.

## 🧪 Tests à écrire

- [ ] Golden test : Q-05 clair/sombre.
- [ ] Widget test : défauts opt-in.
- [ ] Widget test : historique.
- [ ] Widget test : lien politique.
- [ ] Widget test : interaction géolocalisation.

## ♿ Accessibilité et i18n

- Clés ARB : `privacyTitle`, `privacyIntro`, `consentGeo`, `consentGeoDesc`, `consentPush`, `consentPushDesc`, `consentAnalytics`, `consentAnalyticsDesc`, `privacyPolicy`, `consentHistory`, `consentRecords` (pluriel).

## 🔗 Dépendances

À réaliser après : `MOB-Q-10` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §10.2, §2.16.2
- CDC Flutter §7.7

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
