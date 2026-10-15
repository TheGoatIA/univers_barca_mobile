> **MOB-L-12** · Écran · Priorité **P0** · Taille **L** · Phase 1 — MVP

## 🎯 Contexte

Écran 'MATCH' d'une rencontre à venir : bandeau compétition/équipes/heure, lieu, coup d'envoi converti, rappel et ajout à l'agenda.

## ✅ Objectif

Implémenter L-05 (CalendarMatchDetailScreen du CDC).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `L-05` — Détail d’un match programmé
_Module : Calendrier et export agenda_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-05_detail-d-un-match-programme__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-05_detail-d-un-match-programme__phone_light.webp?raw=true' width='230' alt='L-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-05_detail-d-un-match-programme__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-05_detail-d-un-match-programme__phone_dark.webp?raw=true' width='230' alt='L-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-05_detail-d-un-match-programme__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-05_detail-d-un-match-programme__tablet_light.webp?raw=true' width='330' alt='L-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-05_detail-d-un-match-programme__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-05_detail-d-un-match-programme__tablet_dark.webp?raw=true' width='330' alt='L-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Match » · « Liga · Journée 11 » · « Barça » · « WAT · sam. 24 oct. » · « Real Madrid » · « Estadi Olímpic Lluís Companys » · « Barcelone, Espagne » · « Coup d’envoi » · « 21:00 CEST · 20:00 dans ton fuseau (WAT) » · « Rappel » · « 1 h avant le match » · « Ajouter à mon agenda »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-CAL-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-03%5D%22) · [API-CAL-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-06%5D%22) · [API-CAL-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-09%5D%22) · [API-CAL-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-10%5D%22) · [API-CAL-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-22%5D%22) · [API-FOOT-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-13%5D%22) · [API-FOOT-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-16%5D%22) · [MOB-L-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-01%5D%22) · [MOB-L-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-05%5D%22) · [MOB-L-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-11%5D%22) · [MOB-L-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-22%5D%22) · [MOB-L-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-27%5D%22) · [MOB-L-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-28%5D%22) · [MOB-L-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-29%5D%22)

## 📐 Règles de gestion

- Barre : retour, 'MATCH', icône cloche (raccourci vers les rappels L-15).
- Bandeau dégradé : puce 'Liga · Journée 11', écussons FCB / RMA, 'VS', '20:00', 'WAT · sam. 24 oct.', noms 'Barça' / 'Real Madrid'.
- Carte infos : lieu 'Estadi Olímpic Lluís Companys · Barcelone, Espagne' ; 'Coup d'envoi — 21:00 CEST · 20:00 dans ton fuseau (WAT)' ; 'Rappel — 1 h avant le match' (chevron → L-15).
- Bouton principal 'Ajouter à mon agenda' (→ L-14) + bouton carré partager (share_plus, lien profond).
- Match reporté → bannière L-06 en tête ; match terminé/en direct : boutons masqués, statut affiché.
- Lieu absent → ligne masquée ; matchday absent → seule la compétition.

## 🛠️ Tâches

- [ ] Créer presentation/pages/calendar_match_detail_page.dart (route /calendar/match/:id) et CalendarMatchDetailCubit (GetMatchById, cache).
- [ ] Créer widgets/match_hero_banner.dart, match_info_card.dart, info_row.dart.
- [ ] Utiliser TimeZoneService pour la ligne coup d'envoi.
- [ ] Câbler cloche et ligne Rappel vers /calendar/reminders.
- [ ] Câbler 'Ajouter à mon agenda' vers la feuille L-14.
- [ ] Partage : texte 'Barça – Real Madrid · sam. 24 oct. · 20:00 WAT' + lien.
- [ ] ARB calendarKickoff, calendarKickoffLocal='{time} dans ton fuseau ({tz})', calendarAddToAgenda.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné le match Liga J11 alors le bandeau et la carte infos de la maquette sont affichés.
- [ ] Étant donné un fuseau identique au lieu alors une seule heure est affichée.
- [ ] Étant donné le tap sur 'Ajouter à mon agenda' alors la feuille L-14 s'ouvre.
- [ ] Étant donné un match terminé alors 'Ajouter à mon agenda' est masqué.
- [ ] Étant donné un id inconnu alors un état d'erreur 'Match introuvable'.

## 🧪 Tests à écrire

- [ ] Test widget MatchDetail_infos
- [ ] Test widget ligne_fuseau_double
- [ ] Test widget bouton_ajouter_ouvre_feuille
- [ ] Test widget match_termine_sans_boutons
- [ ] Test cubit match_introuvable
- [ ] Golden test L-05

## ♿ Accessibilité et i18n

- Bandeau : 'Liga journée 11, FC Barcelone contre Real Madrid, samedi 24 octobre 20 heures heure de Douala'.
- Boutons ≥ 48 dp, partage libellé 'Partager le match'.

## 🔗 Dépendances

À réaliser après : `MOB-L-05` · `MOB-L-11` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.9
- CDC Flutter §7.8

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
