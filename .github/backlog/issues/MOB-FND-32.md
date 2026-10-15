> **MOB-FND-32** · Fonctionnel · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

`flutter_local_notifications` est initialisé mais `_handleForegroundMessage` est un `À faire`. Les rappels (match dans 1 h, série en danger) doivent aussi pouvoir être planifiés localement.

## ✅ Objectif

Afficher et planifier des notifications locales cohérentes avec la maquette « Notification push » (ZC-01).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZC-01` — Surfaces flottantes — sheets, modales, toasts
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_light.webp?raw=true' width='330' alt='ZC-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_dark.webp?raw=true' width='330' alt='ZC-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_light.webp?raw=true' width='230' alt='ZC-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_dark.webp?raw=true' width='230' alt='ZC-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 07 » · « Surfaces flottantes » · « Bottom sheets (24 px de rayon), modales centrées, toasts et infobulles. Sur tablette, les sheets deviennent des panneaux centrés de 600 px maximum. » · « Bottom sheet et modale » · « Bottom sheet » · « Formation » · « 4-3-3 » · « 4-2-3-1 » · « Appliquer » · « Modale de confirmation » · « Désactiver la localisation ? » · « Tu n’apparaîtras plus dans les compteurs. » · « Désactiver » · « Annuler » · « Modale de célébration » · « Nouveau badge ! » · « GOAT voter » · « Super ! » · « Toasts, snackbars et infobulles » · « Toast succès » · « Équipe enregistrée · J11 » · « Toast erreur » · « Composition déjà verrouillée » · « Toast information » · « Ta série de 12 jours est en danger » · « Infobulle » · « Pose-moi une question sur le Barça ! 👋 » · « Toast admin » · « Fiche publiée » · « Notification push »

**Composants repérés** : `btn`, `modal`, `sheet`, `toast`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-16](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-16%5D%22) · [ADM-ADS-17](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-17%5D%22) · [ADM-ADS-18](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-18%5D%22) · [ADM-ADS-37](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-37%5D%22)

## 📐 Règles de gestion

- Canaux Android : `match` (importance haute), `streak`, `community`, `system` (basse) ; icône monochrome `ic_stat_barca`, couleur garnet #A50044.
- Contenu type : « Match dans 1 h ⚽ » / « Barça – Real Madrid · 20:00 » (ZC-01).
- Planification : `zonedSchedule` avec fuseau de l'utilisateur ; annulation si le match est reporté ; max 64 notifications planifiées iOS.
- Payload JSON contenant `route` validé par la liste blanche des deep links.
- Tap → deep link ; action « Ajouter à mon agenda » en option (hors socle).

## 🛠️ Tâches

- [ ] Créer `lib/core/notifications/local_notification_service.dart`.
- [ ] Créer `NotificationChannels` (ids, noms ARB).
- [ ] Ajouter `timezone` + `flutter_timezone` si absents.
- [ ] Brancher le foreground FCM.
- [ ] Écrire `ScheduleReminder` (use case) pour usage par les modules.
- [ ] Ajouter assets d'icônes `drawable-*/ic_stat_barca.png`.

## ✔️ Critères d'acceptation

- [ ] Étant donné un push en foreground alors une notification locale s'affiche sur le bon canal.
- [ ] Étant donné un rappel planifié à T-1h quand le match est reporté alors il est annulé.
- [ ] Étant donné un tap alors la route du payload est ouverte.

## 🧪 Tests à écrire

- [ ] Test unitaire : choix du canal.
- [ ] Test unitaire : calcul de l'heure planifiée (fuseaux).
- [ ] Test unitaire : annulation.
- [ ] Test unitaire : rejet d'un payload à route non autorisée.

## ♿ Accessibilité et i18n

- Titres/corps via ARB `notif_match_in_1h_title`, `notif_match_in_1h_body`.

## 🔗 Dépendances

À réaliser après : `MOB-FND-31` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §6.3
- CDC Global §2.12

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
