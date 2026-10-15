> **MOB-ZB-13** · Écran · Priorité **P0** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

La planche Cartes : rayon 16 ; standard (ombre douce), à plat (sans ombre, fond surface), sélectionnée (bordure primary 2 px), héros (dégradé garnet → navy, ex. « Liga · J11 Barça – Real Madrid »), navy (« Quiz adaptatif · Niveau 2 · Culé »), or (« Badge débloqué ! Série de 10 jours »), et cartes sémantiques (avertissement, erreur, succès, information).

## ✅ Objectif

`BarcaCard` avec variantes et tailles de padding, remplaçant `Card` Material.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-05` — Cartes, listes et grilles
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__desktop_light.webp?raw=true' width='330' alt='ZB-05 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__desktop_dark.webp?raw=true' width='330' alt='ZB-05 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__mobile_light.webp?raw=true' width='230' alt='ZB-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-05_cartes-listes-et-grilles__mobile_dark.webp?raw=true' width='230' alt='ZB-05 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 05 » · « Cartes et listes » · « Cartes de 16 px de rayon, empilées et indépendantes ; ombres douces en clair, bordures subtiles en sombre. » · « Variantes de cartes » · « Standard » · « Titre de carte » · « Contenu de la carte avec texte secondaire. » · « À plat » · « Carte à plat » · « Sans ombre, fond surface. » · « Sélectionnée » · « Choix actif » · « Bordure primaire 2 px. » · « Héros (garnet → navy) » · « Liga · J11 » · « Barça – Real Madrid » · « Navy » · « Quiz adaptatif » · « Niveau 2 · Culé » · « Or (mise en avant) » · « Badge débloqué ! » · « Série de 10 jours » · « Cartes sémantiques » · « Avertissement » · « Série en danger » · « Erreur » · « Échec de l’envoi » · « Succès » · « Composition validée » · « Information »

**Composants repérés** : `avatar`, `card`, `toggle`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-14](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-14%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [MOB-ZA-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-03%5D%22) · [MOB-ZB-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-14%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22)

## 📐 Règles de gestion

- Rayon 16 ; padding 16 (compact 12) ; clair : ombre douce ; sombre : bordure 1 px outline.
- Sélectionnée : bordure primary 2 px, transition 180 ms.
- Héros : `AppGradients.hero`, texte blanc ; navy : fond secondary ; or : fond accent + texte #1A1A2E.
- Sémantiques : fond teinte 12 %, bordure gauche 4 px, icône + titre (« Série en danger », « Échec de l'envoi », « Composition validée », « Ta position reste privée »).
- Carte interactive : feedback pressé 100 ms (échelle 0,98), cible ≥ 44.

## 🛠️ Tâches

- [ ] Créer `lib/core/widgets/barca_card/barca_card.dart` (`BarcaCardVariant`).
- [ ] Créer `barca_semantic_card.dart` (`BarcaSemanticKind`).
- [ ] Support `onTap`, `selected`, `header`, `footer`, `padding`.
- [ ] Appliquer `AppSurface.decoration` de `za-radii-shadows`.
- [ ] Remplacer les usages de `Card`.
- [ ] Tests, use cases, goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné une carte héros, alors le fond est le dégradé 135° garnet → navy.
- [ ] Étant donné `selected: true`, alors la bordure primary de 2 px s'affiche sans décaler le contenu.
- [ ] Étant donné le thème sombre, alors la carte standard n'a pas d'ombre mais une bordure.
- [ ] Étant donné la carte erreur, alors une icône et un titre textuel accompagnent la couleur.

## 🧪 Tests à écrire

- [ ] Widget : variantes.
- [ ] Widget : sélection sans saut de layout.
- [ ] Widget : tap pressé.
- [ ] Golden : 8 variantes clair/sombre.

## ♿ Accessibilité et i18n

- Carte tappable : `Semantics(button: true)` avec label agrégé.

## 🔗 Dépendances

À réaliser après : `MOB-ZB-11` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.3
- CDC Global §4.5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
