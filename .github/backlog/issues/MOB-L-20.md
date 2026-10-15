> **MOB-L-20** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

CDC §6.4 : aucune permission n'est demandée au lancement ; un priming screen explique pourquoi avant le dialogue natif.

## ✅ Objectif

Implémenter l'écran/feuille de pré-permission L-12 et la logique de demande.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `L-12` — Autorisation agenda — pré-permission
_Module : Calendrier et export agenda_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-12_autorisation-agenda-pre-permission__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-12_autorisation-agenda-pre-permission__phone_light.webp?raw=true' width='230' alt='L-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-12_autorisation-agenda-pre-permission__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-12_autorisation-agenda-pre-permission__phone_dark.webp?raw=true' width='230' alt='L-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-12_autorisation-agenda-pre-permission__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-12_autorisation-agenda-pre-permission__tablet_light.webp?raw=true' width='330' alt='L-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-12_autorisation-agenda-pre-permission__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-12_autorisation-agenda-pre-permission__tablet_dark.webp?raw=true' width='330' alt='L-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ne rate plus un match. » · « Ajoute les rencontres du Barça à ton agenda. » · « Application communautaire non officielle · fan-made » · « Accès à ton agenda » · « Pour ajouter directement les matchs, Univers Barça a besoin d'écrire dans ton agenda. Nous ne lisons jamais tes autres événements. » · « Autoriser l’accès » · « Utiliser un fichier .ics »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-CAL-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-12%5D%22) · [MOB-L-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-22%5D%22) · [MOB-L-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-25%5D%22) · [MOB-L-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-29%5D%22)

## 📐 Règles de gestion

- Affiché uniquement au premier ajout direct à l'agenda natif (L-14) tant que la permission n'est pas accordée.
- Contenu : logo 'Univers Barça', accroche 'Ne rate plus un match.', 'Ajoute les rencontres du Barça à ton agenda.', mention 'Application communautaire non officielle · fan-made', bloc 'Accès à ton agenda — Pour ajouter directement les matchs, Univers Barça a besoin d'écrire dans ton agenda. Nous ne lisons jamais tes autres événements.'
- Boutons : 'Autoriser l'accès' → dialogue natif (permission_handler / device_calendar.requestPermissions) ; 'Utiliser un fichier .ics' → flux L-10 sans permission.
- Minimisation RGPD : demander l'accès en écriture seule (iOS 17 : requestWriteOnlyAccessToEvents ; Android : WRITE_CALENDAR) ; ne jamais lire les événements existants hormis la liste des calendriers inscriptibles.
- Accordée → continuer directement vers l'ajout ; refusée → L-13.
- L'écran n'est pas réaffiché si la permission est déjà accordée.

## 🛠️ Tâches

- [ ] Créer presentation/pages/calendar_permission_priming_page.dart (ou sheet) et CalendarPermissionCubit (unknown/granted/denied/permanentlyDenied).
- [ ] Créer CalendarPermissionService encapsulant device_calendar + permission_handler.
- [ ] Brancher l'issue sur AddMatchToDeviceCalendar.
- [ ] Persister 'priming vu' en local.
- [ ] ARB calendarPermTitle, calendarPermBody, calendarPermAllow, calendarPermUseIcs, calendarFanMade.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné la permission inconnue alors L-12 s'affiche avant le dialogue natif.
- [ ] Étant donné 'Autoriser l'accès' accordé alors l'ajout se poursuit.
- [ ] Étant donné 'Utiliser un fichier .ics' alors aucun dialogue natif n'est demandé.
- [ ] Étant donné la permission déjà accordée alors L-12 est ignoré.

## 🧪 Tests à écrire

- [ ] Test cubit permission_inconnue_affiche_priming
- [ ] Test cubit permission_accordee_continue
- [ ] Test cubit permission_refusee_vers_l13
- [ ] Test widget textes_priming
- [ ] Golden test L-12

## ♿ Accessibilité et i18n

- Texte lisible, bouton primaire en premier dans l'ordre du focus.

## 🔗 Dépendances

À réaliser après : `MOB-L-12` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §6.4
- CDC Flutter §7.8
- CDC Global §2.9

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
