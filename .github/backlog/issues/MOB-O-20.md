> **MOB-O-20** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

O-08 : sur l'écran verrouillé, « Match dans 1 h ⚽ — maintenant », « FC Barcelone – Real Madrid · Liga · 20:00 WAT ».

## ✅ Objectif

Définir le gabarit et le rendu du rappel de match localisé avec l'heure de l'utilisateur.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `O-08` — Écran verrouillé — rappel de match
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__phone_light.webp?raw=true' width='230' alt='O-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__phone_dark.webp?raw=true' width='230' alt='O-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__tablet_light.webp?raw=true' width='330' alt='O-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__tablet_dark.webp?raw=true' width='330' alt='O-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Jeudi 15 octobre » · « Match dans 1 h ⚽ » · « maintenant » · « FC Barcelone – Real Madrid · Liga · 20:00 WAT »

</details>

**Issues liées sur ce même écran :** [API-NOTIF-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-07%5D%22) · [API-NOTIF-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-08%5D%22) · [API-NOTIF-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-09%5D%22) · [API-NOTIF-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-12%5D%22) · [API-NOTIF-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-13%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [API-NOTIF-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-30%5D%22) · [MOB-O-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-11%5D%22) · [MOB-O-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-18%5D%22) · [MOB-O-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-19%5D%22) · [MOB-O-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-25%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22) · [MOB-O-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-28%5D%22)

## 📐 Règles de gestion

- Titre : « Match dans 1 h ⚽ » (offset configurable : 1 h par défaut) ; corps : « {domicile} – {extérieur} · {compétition} · {HH:mm} {fuseau} ».
- L'heure et l'abréviation de fuseau sont celles de l'appareil ; le serveur envoie l'instant UTC en `data.kickoffAt`, le client peut reformater lors de l'affichage local.
- Tap → `/home/match/:id` (dashboard avec le détail du match) ; action rapide Android « Ajouter à l'agenda » (optionnelle).

## 🛠️ Tâches

- [ ] Définir le contrat de payload : `{type:'match_reminder', matchId, kickoffAt, home, away, competition, deepLink}`.
- [ ] Créer `NotificationFormatter.matchReminder(payload, locale, tz)` (renvoie titre/corps).
- [ ] Utiliser `flutter_local_notifications` pour les messages data-only (formatage local) et `notification` du serveur sinon.
- [ ] Définir `threadIdentifier: 'match-{id}'` (iOS) et `groupKey` (Android).
- [ ] Configurer `sound` par défaut et `interruptionLevel: timeSensitive` pour le live (iOS 15+).
- [ ] Tests du formatter fr/en/es.
- [ ] Capture de référence (test manuel) iOS/Android.
- [ ] Documenter dans `docs/notifications.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné un coup d'envoi à 19:00 UTC et un appareil en WAT, quand la notification est formatée, alors « 20:00 WAT » est affiché.
- [ ] Étant donné la langue anglaise, quand le titre est formaté, alors « Match in 1 h ⚽ » est produit.
- [ ] Étant donné un tap, quand la notification est ouverte, alors le détail du match s'ouvre.
- [ ] Étant donné la catégorie Matchs désactivée, quand le moment arrive, alors rien n'est affiché.

## 🧪 Tests à écrire

- [ ] Test unitaire : formatter fr.
- [ ] Test unitaire : fuseau WAT.
- [ ] Test unitaire : en/es.
- [ ] Test : deep link match.
- [ ] Test : payload incomplet → repli.

## ♿ Accessibilité et i18n

- Clés ARB côté client pour le formatage local : `notifMatchReminderTitle`, `notifMatchReminderBody`.

## 🔗 Dépendances

À réaliser après : `MOB-O-19` · `MOB-O-11` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.12
- CDC Flutter §7.11

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
