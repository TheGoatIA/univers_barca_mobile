> **MOB-L-24** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

CDC §2.9 : rappels configurables répercutés dans les rappels des événements de l'agenda ; l'écran affiche aussi le fuseau utilisé.

## ✅ Objectif

Implémenter l'écran 'RAPPELS' (L-15) et leur propagation.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `L-15` — Rappels configurables
_Module : Calendrier et export agenda_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-15_rappels-configurables__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-15_rappels-configurables__phone_light.webp?raw=true' width='230' alt='L-15 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-15_rappels-configurables__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-15_rappels-configurables__phone_dark.webp?raw=true' width='230' alt='L-15 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-15_rappels-configurables__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-15_rappels-configurables__tablet_light.webp?raw=true' width='330' alt='L-15 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-15_rappels-configurables__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-15_rappels-configurables__tablet_dark.webp?raw=true' width='330' alt='L-15 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Rappels » · « Ces rappels sont aussi répercutés dans les événements de ton agenda. » · « Au coup d’envoi » · « 15 minutes avant » · « 1 heure avant » · « 3 heures avant » · « La veille à 20:00 » · « Les horaires s'affichent dans ton fuseau : » · « Africa/Douala (WAT) »

**Composants repérés** : `card`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-CAL-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-03%5D%22) · [API-CAL-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-10%5D%22) · [API-CAL-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-16%5D%22) · [MOB-L-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-01%5D%22) · [MOB-L-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-11%5D%22) · [MOB-L-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-14%5D%22) · [MOB-L-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-28%5D%22) · [MOB-L-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-29%5D%22)

## 📐 Règles de gestion

- Texte : 'Ces rappels sont aussi répercutés dans les événements de ton agenda.'
- Interrupteurs : 'Au coup d'envoi', '15 minutes avant', '1 heure avant' (actif), '3 heures avant', 'La veille à 20:00' (actif).
- Encart info : 'Les horaires s'affichent dans ton fuseau : Africa/Douala (WAT).' (fuseau détecté).
- Les rappels alimentent : événements ajoutés à l'agenda natif, abonnement webcal et .ics (paramètre reminders → VALARM côté API) ; les événements déjà créés ne sont pas modifiés rétroactivement (message d'aide).
- Aucun rappel actif autorisé (aucun VALARM).
- Ces rappels ne remplacent pas les notifications push de match (module Notifications).

## 🛠️ Tâches

- [ ] Créer presentation/pages/calendar_reminders_page.dart (route /calendar/reminders).
- [ ] Créer widgets/reminder_toggle_tile.dart, timezone_info_card.dart.
- [ ] Lier à ExportPreferencesCubit.reminders.
- [ ] Fournir ReminderOffset → Duration/ISO 8601 (PT0S, PT15M, PT1H, PT3H, veille 20:00 relatif).
- [ ] ARB calendarRemindersTitle, calendarRemindersHelp, calendarReminderAtKickoff/15min/1h/3h/eve2000, calendarTimezoneInfo.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné les défauts alors '1 heure avant' et 'La veille à 20:00' sont actifs.
- [ ] Étant donné un interrupteur modifié alors la préférence est persistée.
- [ ] Étant donné le fuseau Africa/Douala alors 'Africa/Douala (WAT)' est affiché.
- [ ] Étant donné aucun rappel alors l'export ne contient aucun VALARM.

## 🧪 Tests à écrire

- [ ] Test widget RemindersPage_defaults
- [ ] Test widget toggle_persiste
- [ ] Test unitaire offset_vers_iso8601
- [ ] Test widget info_fuseau
- [ ] Golden test L-15 clair/sombre

## ♿ Accessibilité et i18n

- Interrupteurs avec libellé et état ; encart fuseau lu.
- Zones ≥ 48 dp.

## 🔗 Dépendances

À réaliser après : `MOB-L-14` · `MOB-L-11` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.9
- CDC Flutter §7.8
- CDC Backend §3.7

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
