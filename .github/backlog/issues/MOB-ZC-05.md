> **MOB-ZC-05** · Écran · Priorité **P2** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Infobulle noire « Pose-moi une question sur le Barça ! 👋 » ancrée à la bulle IA, et aperçu de notification push « Match dans 1 h ⚽ — Barça – Real Madrid · 20:00 » sur fond dégradé.

## ✅ Objectif

`BarcaTooltipBubble` (coach mark) et `BarcaInAppNotification` (bandeau foreground).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZC-01` — Surfaces flottantes — sheets, modales, toasts
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_light.webp?raw=true' width='330' alt='ZC-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_dark.webp?raw=true' width='330' alt='ZC-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_light.webp?raw=true' width='230' alt='ZC-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_dark.webp?raw=true' width='230' alt='ZC-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 07 » · « Surfaces flottantes » · « Bottom sheets (24 px de rayon), modales centrées, toasts et infobulles. Sur tablette, les sheets deviennent des panneaux centrés de 600 px maximum. » · « Bottom sheet et modale » · « Bottom sheet » · « Formation » · « 4-3-3 » · « 4-2-3-1 » · « Appliquer » · « Modale de confirmation » · « Désactiver la localisation ? » · « Tu n’apparaîtras plus dans les compteurs. » · « Désactiver » · « Annuler » · « Modale de célébration » · « Nouveau badge ! » · « GOAT voter » · « Super ! » · « Toasts, snackbars et infobulles » · « Toast succès » · « Équipe enregistrée · J11 » · « Toast erreur » · « Composition déjà verrouillée » · « Toast information » · « Ta série de 12 jours est en danger » · « Infobulle » · « Pose-moi une question sur le Barça ! 👋 » · « Toast admin » · « Fiche publiée » · « Notification push »

**Composants repérés** : `btn`, `modal`, `sheet`, `toast`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-16](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-16%5D%22) · [ADM-ADS-17](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-17%5D%22) · [ADM-ADS-18](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-18%5D%22) · [ADM-ADS-37](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-37%5D%22) · [MOB-FND-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-32%5D%22) · [MOB-ZC-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-01%5D%22) · [MOB-ZC-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-02%5D%22) · [MOB-ZC-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-03%5D%22) · [MOB-ZC-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-04%5D%22) · [MOB-ZC-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-17%5D%22)

## 📐 Règles de gestion

- Infobulle : fond #1A1A2E, texte blanc 13 px, rayon 12, flèche 8 px vers l'ancre ; apparition 180 ms après 900 ms de présence de la bulle IA ; disparition auto 5 s ; affichage une seule fois (préférence locale).
- Notification in-app (app au premier plan) : carte glass sur dégradé hero, icône d'app, titre 14 w700, corps 13 ; glisse du haut en 280 ms, reste 4 s, swipe-up pour fermer, tap = deep link.
- Respect du canal/permission (coordonné FND `notifications-locales` et `permissions-priming`).

## 🛠️ Tâches

- [ ] Créer `barca_tooltip_bubble.dart` (`OverlayPortal`, ancre via `CompositedTransformTarget`).
- [ ] Créer `CoachMarkController` avec persistance Drift/SharedPreferences (clés `coach_ai_fab_seen`).
- [ ] Créer `barca_in_app_notification.dart` + `InAppNotificationHost`.
- [ ] Brancher le tap sur le routeur de deep links FND.
- [ ] Tests, widgetbook.

## ✔️ Critères d'acceptation

- [ ] Étant donné première ouverture de l'accueil, alors l'infobulle apparaît une fois près de la bulle IA.
- [ ] Étant donné l'infobulle déjà vue, alors elle n'apparaît plus.
- [ ] Étant donné une notification reçue au premier plan, quand on tape, alors le deep link s'ouvre.

## 🧪 Tests à écrire

- [ ] Widget : infobulle unique.
- [ ] Widget : auto-dismiss 5 s.
- [ ] Widget : tap notification → route.
- [ ] Golden : infobulle et notification.

## ♿ Accessibilité et i18n

- Infobulle lisible par lecteur d'écran à l'ancre ; notification `liveRegion`.

## 🔗 Dépendances

À réaliser après : `MOB-ZC-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
