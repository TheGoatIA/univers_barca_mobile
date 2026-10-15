> **MOB-O-09** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

O-03 « Série » : « Protège ta série de 12 jours — Une notification discrète t'avertit si le jeu du jour n'est pas joué. », interrupteur « Activer le rappel », « Heure du rappel 20:30 », aperçu « Ta série est en danger 🔥 — Joue à Guess the Player avant minuit. ».

## ✅ Objectif

Implémenter l'écran de configuration du rappel de série avec sélecteur d'heure et aperçu en direct.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `O-03` — Détail — série en danger
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__phone_light.webp?raw=true' width='230' alt='O-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__phone_dark.webp?raw=true' width='230' alt='O-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__tablet_light.webp?raw=true' width='330' alt='O-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__tablet_dark.webp?raw=true' width='330' alt='O-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Série » · « Protège ta série de 12 jours » · « Une notification discrète t'avertit si le jeu du jour n'est pas joué. » · « Activer le rappel » · « Heure du rappel » · « Aperçu » · « Ta série est en danger 🔥 » · « Joue à Guess the Player avant minuit. »

**Composants repérés** : `card`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-04%5D%22) · [API-NOTIF-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-15%5D%22) · [API-NOTIF-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-16%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [MOB-O-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-02%5D%22) · [MOB-O-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-06%5D%22) · [MOB-O-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-11%5D%22) · [MOB-O-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-26%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22) · [MOB-O-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-28%5D%22)

## 📐 Règles de gestion

- Heure par défaut 20:30 (`streakReminderTime`) ; plage recommandée 17:00–23:30 ; le serveur n'envoie que si le jeu du jour n'est pas joué (CDC Global §2.12 : « quelques heures avant la réinitialisation »).
- Le nombre de jours de la série (12) vient de `user_progress.currentStreak` ; masqué si 0 (« Protège ta série »).
- L'aperçu reprend le gabarit exact de O-09 et se met à jour avec l'heure choisie.

## 🛠️ Tâches

- [ ] Créer `notification_streak_prefs_page.dart`.
- [ ] Créer `StreakHeaderCard(streak)`, `ReminderTimeTile` (ouvre `showTimePicker` cupertino/material selon plateforme) et `NotificationPreviewCard(title, body)`.
- [ ] Valider l'heure (format `HH:mm`, minutes par pas de 5).
- [ ] Brancher `setStreakTime` et `toggleCategory(streak)`.
- [ ] Griser l'heure si le rappel est désactivé.
- [ ] Envoyer le fuseau IANA de l'appareil avec la préférence (voir issue fuseau).
- [ ] Golden test clair/sombre.
- [ ] Analytics `notif_streak_time_changed`.

## ✔️ Critères d'acceptation

- [ ] Étant donné le rappel activé à 20:30, quand O-03 s'affiche, alors l'aperçu et l'heure sont cohérents.
- [ ] Étant donné une nouvelle heure 21:15, quand elle est validée, alors le PATCH contient `streakReminderTime:'21:15'`.
- [ ] Étant donné le rappel désactivé, quand O-03 s'affiche, alors la ligne d'heure est grisée.
- [ ] Étant donné une série de 0, quand O-03 s'affiche, alors le titre n'affiche pas de nombre de jours.

## 🧪 Tests à écrire

- [ ] Golden test : O-03.
- [ ] Widget test : sélection d'heure.
- [ ] Widget test : état désactivé.
- [ ] Widget test : série à 0.
- [ ] bloc_test : PATCH heure.

## ♿ Accessibilité et i18n

- Clés ARB : `streakProtectTitle` (pluriel), `streakProtectBody`, `enableReminder`, `reminderTime`, `preview`, `streakDangerTitle`, `streakDangerBody`.

## 🔗 Dépendances

À réaliser après : `MOB-O-07` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.11
- CDC Global §2.12

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
