> **MOB-O-14** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

O-07 : en tête des préférences, une carte « Notifications désactivées — Tu ne recevras ni rappels de match ni alertes de série. L'application reste pleinement utilisable. » avec le bouton « Activer dans les réglages » ; les lignes Matchs et Série en danger restent visibles en dessous.

## ✅ Objectif

Afficher la bannière de permission refusée et gérer la réactivation.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `O-07` — Notifications désactivées
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-07_notifications-desactivees__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-07_notifications-desactivees__phone_light.webp?raw=true' width='230' alt='O-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-07_notifications-desactivees__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-07_notifications-desactivees__phone_dark.webp?raw=true' width='230' alt='O-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-07_notifications-desactivees__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-07_notifications-desactivees__tablet_light.webp?raw=true' width='330' alt='O-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-07_notifications-desactivees__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-07_notifications-desactivees__tablet_dark.webp?raw=true' width='330' alt='O-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Préférences » · « Notifications désactivées » · « Tu ne recevras ni rappels de match ni alertes de série. L'application reste pleinement utilisable. » · « Activer dans les réglages » · « Matchs » · « Rappel, mi-temps, résultat final » · « Série en danger » · « Rappel avant minuit »

**Composants repérés** : `btn`, `card`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-02%5D%22) · [API-NOTIF-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-03%5D%22) · [API-NOTIF-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-04%5D%22) · [API-NOTIF-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-06%5D%22) · [API-NOTIF-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-11%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [MOB-O-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-06%5D%22) · [MOB-O-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-12%5D%22) · [MOB-O-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-13%5D%22) · [MOB-O-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-24%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22) · [MOB-O-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-28%5D%22)

## 📐 Règles de gestion

- La carte n'apparaît que si la permission système est `denied`/`restricted` (statut relu à chaque retour au premier plan).
- Les interrupteurs restent actifs mais un libellé secondaire « Désactivé dans le système » peut être ajouté sans bloquer la saisie.
- La carte disparaît automatiquement quand la permission est accordée.

## 🛠️ Tâches

- [ ] Créer `NotificationsDisabledCard(onOpenSettings)` (ton informatif, sans alarme rouge).
- [ ] L'insérer en tête de `NotificationPreferencesPage` via `BlocBuilder` sur `systemPermission`.
- [ ] Bouton → `PermissionService.openSettings()` (ou demande système si encore possible).
- [ ] Écouter `resumed` pour rafraîchir le statut.
- [ ] Version dans l'inbox O-05 : bandeau discret au-dessus de la liste.
- [ ] Golden test clair/sombre.
- [ ] Tests widget.
- [ ] Analytics `notif_disabled_card_clicked`.

## ✔️ Critères d'acceptation

- [ ] Étant donné la permission refusée, quand O-01 s'affiche, alors la carte O-07 est visible.
- [ ] Étant donné la permission accordée depuis les réglages, quand l'app revient, alors la carte disparaît.
- [ ] Étant donné le bouton, quand il est touché, alors les réglages de l'app s'ouvrent.
- [ ] Étant donné la carte affichée, quand on bascule un toggle, alors l'action reste possible.

## 🧪 Tests à écrire

- [ ] Golden test : O-07.
- [ ] Widget test : visibilité selon permission.
- [ ] Widget test : disparition au retour.
- [ ] Widget test : bouton ouvre les réglages.

## ♿ Accessibilité et i18n

- Clés ARB : `notifDisabledTitle`, `notifDisabledBody`, `enableInSettings`.
- La carte est annoncée comme `liveRegion` à l'apparition.

## 🔗 Dépendances

À réaliser après : `MOB-O-13` · `MOB-O-07` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §6.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
