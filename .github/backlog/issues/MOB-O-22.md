> **MOB-O-22** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

O-10 : pendant l'utilisation, une carte flottante en haut de l'écran annonce « But du Barça ! ⚽ 2 – 1 — Raphinha (67') · Touche pour suivre le live — maintenant », avec avatar du buteur.

## ✅ Objectif

Implémenter une bannière in-app globale pour les messages reçus au premier plan.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `O-10` — Notification dans l’application
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-10_notification-dans-l-application__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-10_notification-dans-l-application__phone_light.webp?raw=true' width='230' alt='O-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-10_notification-dans-l-application__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-10_notification-dans-l-application__phone_dark.webp?raw=true' width='230' alt='O-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-10_notification-dans-l-application__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-10_notification-dans-l-application__tablet_light.webp?raw=true' width='330' alt='O-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-10_notification-dans-l-application__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-10_notification-dans-l-application__tablet_dark.webp?raw=true' width='330' alt='O-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « But du Barça ! ⚽ 2 – 1 » · « Raphinha (67') · Touche pour suivre le live » · « maintenant »

**Composants repérés** : `avatar`, `card`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-07%5D%22) · [API-NOTIF-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-08%5D%22) · [API-NOTIF-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-12%5D%22) · [API-NOTIF-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-14%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [MOB-O-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-18%5D%22) · [MOB-O-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-19%5D%22) · [MOB-O-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-25%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22) · [MOB-O-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-28%5D%22)

## 📐 Règles de gestion

- Affichage 5 s (pause au toucher), glissement vers le haut pour fermer, une seule bannière à la fois (file FIFO de 3 max).
- Tap → deep link (ex. live du match) ; la notification est ajoutée à l'inbox et marquée non lue.
- Ne pas afficher si la catégorie est désactivée ni sur l'écran de jeu en cours (D-03, E-03) pour ne pas perturber la partie, sauf buts live.

## 🛠️ Tâches

- [ ] Créer `core/widgets/in_app_notification_overlay.dart` (`OverlayEntry` géré par `InAppBannerController`).
- [ ] Créer `InAppBanner(avatar, title, subtitle, time)` aux tokens du design system (carte, ombre, rayon 16).
- [ ] Écouter le flux `PushEvent` dans le shell principal.
- [ ] Animer l'entrée/sortie (250 ms, `SlideTransition`) ; désactivé si `reduceMotion`.
- [ ] Gérer la file et le `Dismissible` vers le haut.
- [ ] Respecter la zone sûre (encoche) via `MediaQuery.padding.top`.
- [ ] Golden test clair/sombre.
- [ ] Tests widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné un message au premier plan, quand il arrive, alors la bannière s'affiche 5 s en haut de l'écran.
- [ ] Étant donné deux messages simultanés, quand ils arrivent, alors ils s'affichent l'un après l'autre.
- [ ] Étant donné un tap, quand la bannière est touchée, alors le deep link est ouvert et la bannière disparaît.
- [ ] Étant donné une partie de quiz en cours, quand une notification non live arrive, alors elle va dans l'inbox sans bannière.

## 🧪 Tests à écrire

- [ ] Golden test : O-10.
- [ ] Widget test : durée 5 s.
- [ ] Widget test : file FIFO.
- [ ] Widget test : swipe-up.
- [ ] Widget test : suppression pendant un jeu.

## ♿ Accessibilité et i18n

- Annonce `liveRegion` du titre ; focus non volé.
- Clés ARB : `inAppBannerNow`.

## 🔗 Dépendances

À réaliser après : `MOB-O-19` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.11
- CDC Flutter §7.11

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
