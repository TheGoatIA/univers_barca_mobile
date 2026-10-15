> **MOB-ZB-03** · Écran · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Au bas de la planche Boutons : icône + texte (« Ajouter à mon agenda », « Partager », « Continuer »), icônes seules 44 × 44 (+, partager, cloche, ⋯), formes (carré rayon 8, arrondi 12, pilule, rond), connexion sociale (Apple noir, Google contour), bouton flottant IA (58 px, anneau or) et boutons « glass » sur fond dégradé.

## ✅ Objectif

Décliner BarcaButton en icône/forme et ajouter `BarcaIconButton`, `BarcaSocialButton`, `BarcaAiFab`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-01` — Boutons — variantes, tailles et formes
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_light.webp?raw=true' width='330' alt='ZB-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_dark.webp?raw=true' width='330' alt='ZB-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_light.webp?raw=true' width='230' alt='ZB-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_dark.webp?raw=true' width='230' alt='ZB-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 01 » · « Boutons » · « Hauteurs 28 / 36 / 44 / 52 / 56 px, rayon 12 px. Toute zone interactive respecte une cible tactile d’au moins 44 × 44 points (la zone invisible est étendue pour les boutons XS et SM). » · « Variantes » · « Primaire » · « Valider » · « BarcaButton.primary » · « Secondaire (contour) » · « BarcaButton.secondary » · « Tonal » · « BarcaButton.tonal » · « Fantôme » · « BarcaButton.ghost » · « Texte » · « BarcaButton.text » · « Navy » · « BarcaButton.navy » · « Or » · « BarcaButton.gold » · « Danger » · « BarcaButton.danger » · « Tailles » · « Hauteur et typographie par taille — de XS (28 px) à Large (56 px). » · « Échelle » · « XS · 28 px » · « Continuer » · « SM · 36 px » · « MD · 44 px » · « Défaut · 52 px » · « LG · 56 px »

**Composants repérés** : `btn`, `spinner`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-06](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-06%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [ADM-ADS-37](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-37%5D%22) · [MOB-ZB-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-01%5D%22) · [MOB-ZB-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-02%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22) · [MOB-ZD-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-12%5D%22)

#### `ZD-05` — Accessibilité
_Module : Composants métier et responsive_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-05_accessibilite__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-05_accessibilite__desktop_light.webp?raw=true' width='330' alt='ZD-05 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-05_accessibilite__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-05_accessibilite__desktop_dark.webp?raw=true' width='330' alt='ZD-05 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-05_accessibilite__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-05_accessibilite__mobile_light.webp?raw=true' width='230' alt='ZD-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-05_accessibilite__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-05_accessibilite__mobile_dark.webp?raw=true' width='230' alt='ZD-05 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Qualité · 01 » · « Accessibilité » · « Cibles tactiles ≥ 44 × 44 pt, contrastes WCAG AA dans les deux thèmes, libellés sémantiques pour VoiceOver/TalkBack, navigation clavier complète côté admin. » · « Cibles tactiles » · « Bouton icône 44 × 44 » · « 44 × 44 pt minimum » · « Bouton compact 36 px + zone étendue » · « Rejoindre » · « zone de frappe étendue à 44 pt » · « Espacement entre cibles » · « ≥ 8 px entre deux cibles » · « Focus, lecteur d’écran et clavier » · « Anneau de focus » · « Valider » · « Rechercher » · « contour 3 px · décalage 2 px » · « Libellés sémantiques » · « Semantics(label: « Partager mon résultat ») » · « Semantics(label: « Ajouter à mon agenda ») » · « aria-label=« Bannir l’utilisateur » » · « aria-describedby → message d’erreur » · « Raccourcis admin » · « Ctrl K » · « Recherche globale » · « J / K » · « Signalement suivant / précédent » · « A / R » · « Approuver / rejeter » · « Esc » · « Fermer le panneau »

**Composants repérés** : `btn`, `input`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-26](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-26%5D%22) · [ADM-ADS-27](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-27%5D%22) · [ADM-ADS-29](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-29%5D%22) · [MOB-FND-36](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-36%5D%22) · [MOB-ZA-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-12%5D%22) · [MOB-ZD-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-11%5D%22) · [MOB-ZD-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-12%5D%22)

## 📐 Règles de gestion

- Icône + texte : icône 18 px à gauche (ou droite pour « Continuer → »), espace 8 px.
- Icône seule : 44 × 44, variantes primaire, contour, tonal, ghost ; `semanticLabel` obligatoire.
- Formes : `BarcaButtonShape.square(8)`, `.rounded(12)` (défaut), `.pill`, `.circle`.
- Connexion sociale : « Continuer avec Apple » (fond noir, logo blanc, obligatoire sur iOS) et « Continuer avec Google » (fond blanc, contour, logo en couleurs, hauteur 52) ; Apple masqué sur Android s'il n'est pas requis.
- Bouton flottant IA : cercle 58 px, dégradé hero, icône étincelles, anneau or 2 px, pastille or de notification 10 px ; version mini 44 px ; visible dans la zone du pouce (cf. ZE-03).
- Glass : fond blanc 18 % + flou 12 sur dégradé, variantes « Blanc » et « Verre » pour appui long.

## 🛠️ Tâches

- [ ] Ajouter `BarcaButton.icon(...)`, `iconTrailing`.
- [ ] Créer `barca_icon_button.dart` (44 × 44, variantes) réutilisant `ExpandedTapTarget`.
- [ ] Créer `barca_social_button.dart` (`BarcaSocialProvider.apple|google`) avec logos SVG fournis en assets (respect des guidelines de marque).
- [ ] Créer `barca_ai_fab.dart` (diamètre 58/44, anneau or, badge) ; l'animation d'ouverture est traitée dans ZE.
- [ ] Ajouter `BarcaButtonShape` et paramètre `shape`.
- [ ] Ajouter `BarcaGlassButton` (BackdropFilter, opacité 18 %).
- [ ] Use cases widgetbook et goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné `BarcaIconButton` sans `semanticLabel`, quand il est construit en debug, alors un assert échoue.
- [ ] Étant donné `BarcaButtonShape.pill`, quand il est rendu, alors son rayon vaut la moitié de la hauteur.
- [ ] Étant donné Android, quand l'écran de connexion s'affiche, alors le bouton Apple est masqué selon la configuration.
- [ ] Étant donné `BarcaAiFab`, quand il est rendu, alors son diamètre est 58 px et sa cible 58 ≥ 44.

## 🧪 Tests à écrire

- [ ] Widget : icône seule 44 × 44.
- [ ] Widget : formes (rayons).
- [ ] Widget : bouton Apple sur iOS vs Android (`debugDefaultTargetPlatformOverride`).
- [ ] Golden : icône+texte, icônes seules, formes, sociaux, FAB IA (clair/sombre).

## ♿ Accessibilité et i18n

- ARB : `signInWithApple` « Continuer avec Apple », `signInWithGoogle` « Continuer avec Google », `aiAssistantFab` « Ouvrir l'assistant Barça AI ».

## 🔗 Dépendances

À réaliser après : `MOB-ZB-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.3
- CDC Global §3.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
