> **MOB-K-18** · Écran · Priorité **P1** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Le détail d'une watch party : « Clásico au Relais », Sam. 24 oct. · 19:30 WAT, Le Relais (Quartier Bastos, Yaoundé), organisé par Mamadou D. (Modérateur du groupe), 37 participants dont 12 de tes connaissances, carte du match FCB Barça – RMA Real Madrid · Liga, bouton « Je participe ».

## ✅ Objectif

Informer sur l'événement et permettre de s'y inscrire en un tap.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `K-09` — Détail d’un événement
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-09_detail-d-un-evenement__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-09_detail-d-un-evenement__phone_light.webp?raw=true' width='230' alt='K-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-09_detail-d-un-evenement__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-09_detail-d-un-evenement__phone_dark.webp?raw=true' width='230' alt='K-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-09_detail-d-un-evenement__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-09_detail-d-un-evenement__tablet_light.webp?raw=true' width='330' alt='K-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-09_detail-d-un-evenement__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-09_detail-d-un-evenement__tablet_dark.webp?raw=true' width='330' alt='K-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Watch party » · « Clásico » · « au Relais » · « Sam. 24 oct. » · « 19:30 WAT » · « Le Relais » · « Quartier Bastos, Yaoundé » · « Organisé par Mamadou D. » · « Modérateur du groupe » · « 37 participants » · « dont 12 de tes connaissances » · « Match » · « Barça » · « vs » · « Real Madrid » · « Liga » · « Je participe »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-COMM-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-24%5D%22) · [API-COMM-25](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-25%5D%22) · [API-COMM-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-28%5D%22) · [MOB-K-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-04%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

## 📐 Règles de gestion

- « Je participe » bascule en « Je participe ✓ » (réversible) avec mise à jour optimiste du compteur.
- Le lieu est un lieu public nommé (aucune adresse privée) ; tap sur le lieu ouvre la carte externe via une URL de recherche textuelle.
- « dont 12 de tes connaissances » n'est affiché que si l'API fournit le nombre (fonction à confirmer, sinon masqué).
- Le match lié vient du calendrier (FCB / RMA, compétition Liga).
- Option « Ajouter à mon agenda » en repli secondaire via device_calendar/.ics (groupe calendrier).

## 🔄 Comportement et états

- Chargement : squelette ; événement supprimé/annulé : message « Cet événement n'est plus disponible » ; hors-ligne : participation bloquée avec explication.

## 🛠️ Tâches

- [ ] Créer presentation/pages/group_event_page.dart (route /community/groups/:id/events/:eventId).
- [ ] Créer GroupEventCubit (load, toggleAttendance).
- [ ] Créer widgets/event_match_card.dart.
- [ ] Créer widgets/attendance_button.dart (états : non inscrit, inscrit, chargement).
- [ ] Formater la date/heure avec intl (jour abrégé, mois, HH:mm, fuseau).
- [ ] Ouvrir la carte externe via url_launcher.
- [ ] Ajouter ARB et goldens.
- [ ] Tests cubit/widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné un événement, quand la page s'affiche, alors titre, date, lieu, organisateur et participants sont visibles.
- [ ] Étant donné un tap sur « Je participe », quand l'appel réussit, alors le bouton passe à l'état inscrit et 38 participants sont affichés.
- [ ] Étant donné une erreur, quand l'inscription échoue, alors le compteur revient à 37.
- [ ] Étant donné un événement supprimé, quand la page charge, alors le message d'indisponibilité s'affiche.

## 🧪 Tests à écrire

- [ ] group_event_cubit_test : optimiste/rollback.
- [ ] attendance_button_test.
- [ ] event_match_card_test.
- [ ] golden_group_event_light_dark.

## ♿ Accessibilité et i18n

- ARB : eventIParticipate « Je participe », eventParticipating, eventOrganizedBy « Organisé par {name} », eventParticipantsCount

## 🔗 Dépendances

À réaliser après : `MOB-K-17` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.8

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
