> **MOB-O-10** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

O-04 « Heures calmes » : interrupteur « Activer les heures calmes », deux cartes « De 23:00 » et « À 07:00 », sélection des jours (L M M J V actifs ; S D inactifs) et encart « Les alertes de match en direct ne sont jamais silencieuses pour les rencontres que tu suis. ».

## ✅ Objectif

Implémenter la configuration des heures calmes avec plage traversant minuit.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `O-04` — Heures calmes
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__phone_light.webp?raw=true' width='230' alt='O-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__phone_dark.webp?raw=true' width='230' alt='O-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__tablet_light.webp?raw=true' width='330' alt='O-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__tablet_dark.webp?raw=true' width='330' alt='O-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Heures calmes » · « Activer les heures calmes » · « De » · « Jours » · « Les alertes de match en direct ne sont jamais silencieuses pour les rencontres que tu suis. »

**Composants repérés** : `card`, `chip`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-01%5D%22) · [API-NOTIF-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-04%5D%22) · [API-NOTIF-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-05%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [MOB-O-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-02%5D%22) · [MOB-O-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-06%5D%22) · [MOB-O-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-11%5D%22) · [MOB-O-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-24%5D%22) · [MOB-O-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-26%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22) · [MOB-O-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-28%5D%22)

## 📐 Règles de gestion

- Plage par défaut 23:00 → 07:00 (traverse minuit) ; si `from == to` afficher une erreur (« Choisis deux heures différentes »).
- Jours sélectionnables (L→D) ; défaut : lundi à vendredi (maquette) ; au moins 1 jour requis quand activé.
- Les alertes de match en direct des rencontres suivies ne sont jamais silencieuses (règle produit, encart info).

## 🛠️ Tâches

- [ ] Créer `notification_quiet_hours_page.dart`.
- [ ] Créer `TimeCard(label, time, onTap)` (ouvre le sélecteur d'heure), `DayChipRow(selectedDays)` (7 `ChoiceChip` ronds).
- [ ] Créer l'encart info (`InfoBanner`).
- [ ] Valider `from != to` et ≥ 1 jour.
- [ ] Brancher `setQuietHours(...)` (envoi `quietHours{enabled,from,to,days}`).
- [ ] Griser les contrôles si désactivé.
- [ ] Golden test clair/sombre.
- [ ] Tests de validation.

## ✔️ Critères d'acceptation

- [ ] Étant donné l'activation, quand O-04 s'affiche, alors 23:00, 07:00 et L-V actifs sont visibles.
- [ ] Étant donné `from == to`, quand l'utilisateur valide, alors une erreur s'affiche et aucun PATCH n'est envoyé.
- [ ] Étant donné aucun jour sélectionné, quand on active, alors une erreur s'affiche.
- [ ] Étant donné la désactivation, quand l'interrupteur est coupé, alors les cartes sont grisées.

## 🧪 Tests à écrire

- [ ] Golden test : O-04.
- [ ] Widget test : validation `from == to`.
- [ ] Widget test : sélection de jours.
- [ ] Widget test : état désactivé.
- [ ] bloc_test : PATCH heures calmes.

## ♿ Accessibilité et i18n

- Clés ARB : `enableQuietHours`, `fromLabel`, `toLabel`, `days`, `dayMon`…`daySun`, `quietHoursInfo`, `chooseDifferentTimes`, `chooseOneDay`.
- Les jours sont annoncés par leur nom complet (« lundi, sélectionné »).

## 🔗 Dépendances

À réaliser après : `MOB-O-07` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.11
- CDC Global §2.12

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
