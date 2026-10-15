> **MOB-L-13** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Lorsqu'un horaire change (RG-CAL-03), l'utilisateur voit l'ancien et le nouvel horaire et sait que son agenda abonné se met à jour tout seul (sous 24 h).

## ✅ Objectif

Implémenter la bannière d'alerte et la carte Avant/Maintenant de L-06.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `L-06` — Match reporté — changement d’horaire
_Module : Calendrier et export agenda_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-06_match-reporte-changement-d-horaire__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-06_match-reporte-changement-d-horaire__phone_light.webp?raw=true' width='230' alt='L-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-06_match-reporte-changement-d-horaire__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-06_match-reporte-changement-d-horaire__phone_dark.webp?raw=true' width='230' alt='L-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-06_match-reporte-changement-d-horaire__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-06_match-reporte-changement-d-horaire__tablet_light.webp?raw=true' width='330' alt='L-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-06_match-reporte-changement-d-horaire__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-06_match-reporte-changement-d-horaire__tablet_dark.webp?raw=true' width='330' alt='L-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Match » · « Horaire modifié » · « Le coup d'envoi passe de 18:30 à 21:00. Ton agenda abonné sera mis à jour automatiquement. » · « Barça – Atlético Madrid » · « Avant » · « Dim. 2 nov. · 18:30 » · « Maintenant » · « Dim. 2 nov. · 21:00 »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-CAL-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-02%5D%22) · [API-CAL-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-06%5D%22) · [API-CAL-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-07%5D%22) · [API-CAL-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-11%5D%22) · [API-CAL-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-19%5D%22) · [API-CAL-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-22%5D%22) · [API-FOOT-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-13%5D%22) · [MOB-L-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-01%5D%22) · [MOB-L-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-04%5D%22) · [MOB-L-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-27%5D%22) · [MOB-L-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-29%5D%22)

## 📐 Règles de gestion

- Bannière jaune/ambre : icône alerte, titre 'Horaire modifié', texte 'Le coup d'envoi passe de 18:30 à 21:00. Ton agenda abonné sera mis à jour automatiquement.'
- Carte : 'Barça – Atlético Madrid' avec écussons ; 'Avant : Dim. 2 nov. · 18:30' barré (gris) ; 'Maintenant : Dim. 2 nov. · 21:00' grenat en gras.
- Déclenchement : status=postponed ou kickoffAt ≠ previousKickoffAt ; affichée tant que l'horaire modifié est à moins de 14 jours du coup d'envoi ou que l'utilisateur ne l'a pas fermée.
- Texte adapté : si l'utilisateur n'est pas abonné → 'Pense à mettre à jour ton agenda ou à t'abonner' + bouton 'S'abonner'.
- Date indéterminée (reporté sans nouvelle date) : 'Nouvelle date à confirmer', sans ligne Maintenant.
- Les deux horaires sont affichés dans le fuseau local.

## 🛠️ Tâches

- [ ] Créer widgets/schedule_changed_banner.dart et schedule_change_card.dart.
- [ ] Utiliser CalendarMatch.previousKickoffAtUtc et la détection du repository.
- [ ] Stocker localement 'bannière vue/fermée' par matchId+kickoffAt (Drift/préférences).
- [ ] Détecter l'état d'abonnement (flag local issu de L-09).
- [ ] Gérer le cas date inconnue.
- [ ] ARB calendarScheduleChangedTitle, calendarScheduleChangedBody='Le coup d'envoi passe de {before} à {after}…', calendarBefore, calendarNow.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné 18:30 → 21:00 alors 'passe de 18:30 à 21:00' est affiché et l'ancienne ligne est barrée.
- [ ] Étant donné un utilisateur non abonné alors le texte invite à s'abonner.
- [ ] Étant donné status postponed sans date alors 'Nouvelle date à confirmer'.
- [ ] Étant donné la bannière fermée alors elle ne réapparaît pas pour le même changement.

## 🧪 Tests à écrire

- [ ] Test widget bannière_textes
- [ ] Test widget ancien_horaire_barre
- [ ] Test widget non_abonne_cta
- [ ] Test widget date_inconnue
- [ ] Test unitaire persistance_fermeture
- [ ] Golden test L-06 clair/sombre

## ♿ Accessibilité et i18n

- Bannière role alert ; ancien horaire annoncé 'ancien horaire, dimanche 2 novembre 18 heures 30, annulé'.

## 🔗 Dépendances

À réaliser après : `MOB-L-12` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.16.1
- CDC Global §2.16.1 (RG-CAL-03)
- CDC Flutter §7.8

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
