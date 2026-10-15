> **MOB-C-22** · Fonctionnel · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Depuis le détail du match, « Ajouter à mon agenda » exporte l'événement vers l'agenda natif (iCal) et « Rappel » programme une notification (1 h avant par défaut, CDC Global §2.12).

## ✅ Objectif

Deux actions fonctionnelles du détail match : export ponctuel .ics et rappel local/push.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `C-11` — Détail — prochain match
_Module : Accueil dashboard_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-11_detail-prochain-match__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-11_detail-prochain-match__phone_light.webp?raw=true' width='230' alt='C-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-11_detail-prochain-match__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-11_detail-prochain-match__phone_dark.webp?raw=true' width='230' alt='C-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-11_detail-prochain-match__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-11_detail-prochain-match__tablet_light.webp?raw=true' width='330' alt='C-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-11_detail-prochain-match__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-11_detail-prochain-match__tablet_dark.webp?raw=true' width='330' alt='C-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Détail du match » · « Liga · J11 » · « Prochain match » · « Barça » · « Sam. 24 oct. » · « Real Madrid » · « Coup d'envoi dans » · « min » · « Compétition » · « Liga EA Sports · Journée 11 » · « Stade » · « Estadi Olímpic Lluís Companys · Barcelone » · « Ton fuseau horaire » · « Africa/Douala · 20:00 WAT (21:00 CEST) » · « Forme récente » · « 5 derniers matchs » · « Ajouter à mon agenda » · « Rappel »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-14%5D%22) · [API-FOOT-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-20%5D%22) · [MOB-C-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-09%5D%22) · [MOB-C-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-21%5D%22) · [MOB-C-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-25%5D%22) · [MOB-C-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-26%5D%22) · [MOB-C-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-27%5D%22)

#### `C-04` — Dashboard — match en direct
_Module : Accueil dashboard_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-04_dashboard-match-en-direct__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-04_dashboard-match-en-direct__phone_light.webp?raw=true' width='230' alt='C-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-04_dashboard-match-en-direct__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-04_dashboard-match-en-direct__phone_dark.webp?raw=true' width='230' alt='C-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-04_dashboard-match-en-direct__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-04_dashboard-match-en-direct__tablet_light.webp?raw=true' width='330' alt='C-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-04_dashboard-match-en-direct__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-04_dashboard-match-en-direct__tablet_dark.webp?raw=true' width='330' alt='C-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Salut Boris 👋 » · « Liga · J11 » · « EN DIRECT 67' » · « Barça » · « 2 – 1 » · « Camp Nou » · « Real Madrid » · « Suivre le live » · « Résolu » · « Guess the Player » · « Trouvé en 3 essais » · « Niveau 2 » · « Quiz du jour » · « 10 questions · Culé » · « oct. » · « Aujourd'hui dans l'histoire · 2011 » · « Le Barça de Guardiola enchaîne un 4-0 mémorable en Ligue des champions. » · « Lecture 1 min » · « Lire l'anecdote » · « jours de suite » · « Record personnel : 27 jours » · « Ton XI Fantasy · J11 » · « 4-3-3 · 62 pts » · « Ferme dans 1 j 4 h » · « Modifier » · « Classement amis » · « sur 12 »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-15%5D%22) · [API-FOOT-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-22%5D%22) · [API-FOOT-27](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-27%5D%22) · [API-FOOT-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-29%5D%22) · [API-FOOT-52](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-52%5D%22) · [MOB-C-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-02%5D%22) · [MOB-C-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-03%5D%22) · [MOB-C-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-09%5D%22) · [MOB-C-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-10%5D%22) · [MOB-C-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-12%5D%22) · [MOB-C-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-16%5D%22) · [MOB-C-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-21%5D%22) · [MOB-C-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-25%5D%22) · [MOB-C-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-26%5D%22) · [MOB-C-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-27%5D%22)

## 📐 Règles de gestion

- Rappel par défaut 1 h avant le match (CDC Global §2.12), configurable.
- Export conforme iCalendar RFC 5545 (CDC Global §2.9).
- Permission de notification demandée en contexte, jamais au démarrage (CDC Flutter §6.4).

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `GET` | `/calendar/export.ics` | Export ponctuel .ics (filtrable par compétition/match) | ?competition=liga | fichier text/calendar |

## 🛠️ Tâches

- [ ] Appeler `GET /calendar/export.ics?matchId=:id` (téléchargement ponctuel, CDC Backend §3.7) ; enregistrer dans le dossier temporaire (`path_provider`) puis ouvrir via `share_plus`/`url_launcher` (sélection de l'app agenda).
- [ ] Alternative locale sans réseau : générer le contenu `.ics` côté client (RFC 5545 : `DTSTART` UTC, `DTEND` +2 h, `SUMMARY`, `LOCATION`, `VALARM` -PT1H).
- [ ] Rappel : `MatchReminderService` planifie une notification locale `flutter_local_notifications` à `kickoff - 60 min` (offset configurable : 15 min / 1 h / 3 h) avec payload deep link `/home/match/:id`.
- [ ] Enregistrer l'état du rappel dans Drift (`matchReminders`) pour afficher le bouton « Rappel activé » (toggle).
- [ ] Demander la permission de notification au premier usage (iOS/Android 13+) avec écran explicatif ; refus → message vers les réglages.
- [ ] Annuler/replanifier le rappel si l'heure du match change (resynchronisation via API).
- [ ] Limiter à 1 rappel actif par match ; toast de confirmation « Rappel activé pour 19:00 ».

## ✔️ Critères d'acceptation

- [ ] Étant donné un tap sur « Ajouter à mon agenda », quand l'export réussit, alors la feuille de partage ouvre un `.ics` valide avec alarme -1 h.
- [ ] Étant donné un tap sur « Rappel », quand la permission est accordée, alors une notification est planifiée 1 h avant le coup d'envoi.
- [ ] Étant donné un match reporté, quand l'API renvoie la nouvelle heure, alors le rappel est replanifié.
- [ ] Étant donné la permission refusée, quand on active le rappel, alors un message propose d'ouvrir les réglages.
- [ ] Étant donné un rappel actif, quand on touche à nouveau le bouton, alors il est annulé.

## 🧪 Tests à écrire

- [ ] Test unitaire : génération `.ics` conforme (VEVENT, VALARM).
- [ ] Test unitaire : calcul `kickoff - 60 min` et timezone.
- [ ] Test unitaire : replanification sur changement d'heure.
- [ ] Test de widget : toggle rappel.
- [ ] Test unitaire : permission refusée.

## ♿ Accessibilité et i18n

- ARB : `addToCalendar`, `reminderOn`, `reminderOff`, `reminderSetAt`, `notificationPermissionRationale`.

## 🔗 Dépendances

À réaliser après : `MOB-C-21` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.9, §2.12
- CDC Backend §3.7

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
