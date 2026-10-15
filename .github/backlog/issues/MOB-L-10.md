> **MOB-L-10** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Quand la sélection ne retourne aucun match, un état vide propose de revenir à toutes les compétitions.

## ✅ Objectif

Implémenter L-04 et les états d'erreur.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `L-04` — Liste — aucun match
_Module : Calendrier et export agenda_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-04_liste-aucun-match__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-04_liste-aucun-match__phone_light.webp?raw=true' width='230' alt='L-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-04_liste-aucun-match__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-04_liste-aucun-match__phone_dark.webp?raw=true' width='230' alt='L-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-04_liste-aucun-match__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-04_liste-aucun-match__tablet_light.webp?raw=true' width='330' alt='L-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-04_liste-aucun-match__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-04_liste-aucun-match__tablet_dark.webp?raw=true' width='330' alt='L-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Calendrier » · « Toutes » · « Liga » · « Ligue des champions » · « Coupe du Roi » · « Amicaux » · « Aucun match à venir » · « Aucune rencontre programmée pour cette sélection. Le calendrier est mis à jour automatiquement. » · « Voir toutes les compétitions »

**Composants repérés** : `btn`, `chip`

</details>

**Issues liées sur ce même écran :** [API-CAL-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-04%5D%22) · [API-CAL-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-22%5D%22) · [API-FOOT-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-13%5D%22) · [API-FOOT-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-21%5D%22) · [MOB-L-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-05%5D%22) · [MOB-L-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-29%5D%22)

## 📐 Règles de gestion

- Vide : titre 'Aucun match à venir', texte 'Aucune rencontre programmée pour cette sélection. Le calendrier est mis à jour automatiquement.', bouton 'Voir toutes les compétitions'.
- Le bouton émet CalendarCompetitionsCleared (chip 'Toutes' active).
- Erreur réseau sans cache : AppErrorView offline + 'Réessayer' ; erreur serveur : message distinct ; avec cache : liste + bandeau 'Hors-ligne · mis à jour il y a X'.
- Si 'Toutes' est déjà active et aucun match : texte 'Aucun match programmé pour le moment' sans bouton.

## 🛠️ Tâches

- [ ] Créer widgets/calendar_empty_view.dart.
- [ ] Brancher CalendarEmpty/CalendarFailure.
- [ ] Créer le bandeau StaleBanner.
- [ ] ARB calendarEmptyTitle, calendarEmptyBody, calendarEmptyAction, calendarOfflineBanner.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné un filtre sans résultat alors le message et le bouton s'affichent.
- [ ] Étant donné le tap sur 'Voir toutes les compétitions' alors 'Toutes' est active.
- [ ] Étant donné 'Toutes' sans résultat alors pas de bouton.
- [ ] Étant donné hors-ligne avec cache alors bandeau + liste.

## 🧪 Tests à écrire

- [ ] Test widget empty_textes
- [ ] Test bloc clear_filtres
- [ ] Test widget empty_sans_bouton_si_toutes
- [ ] Test widget bandeau_stale
- [ ] Golden test L-04

## ♿ Accessibilité et i18n

- Bouton ≥ 48 dp, message annoncé.

## 🔗 Dépendances

À réaliser après : `MOB-L-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.8
- CDC Flutter §9.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
