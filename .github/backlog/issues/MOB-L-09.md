> **MOB-L-09** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Pendant le chargement initial, l'en-tête et les chips sont visibles, les cartes sont des squelettes.

## ✅ Objectif

Implémenter L-03 avec shimmer.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `L-03` — Liste — chargement
_Module : Calendrier et export agenda_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-03_liste-chargement__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-03_liste-chargement__phone_light.webp?raw=true' width='230' alt='L-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-03_liste-chargement__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-03_liste-chargement__phone_dark.webp?raw=true' width='230' alt='L-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-03_liste-chargement__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-03_liste-chargement__tablet_light.webp?raw=true' width='330' alt='L-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-03_liste-chargement__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-03_liste-chargement__tablet_dark.webp?raw=true' width='330' alt='L-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Calendrier » · « Toutes » · « Liga » · « Ligue des champions » · « Coupe du Roi » · « Amicaux »

**Composants repérés** : `card`, `chip`

</details>

**Issues liées sur ce même écran :** [API-CAL-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-04%5D%22) · [API-CAL-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-18%5D%22) · [API-FOOT-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-13%5D%22) · [MOB-L-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-05%5D%22) · [MOB-L-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-29%5D%22)

## 📐 Règles de gestion

- 5 squelettes de carte (bloc date, 2 lignes équipes, heure, puce) ; chips actives dès le début.
- Shimmer 1,2 s ; statique si reduce motion.
- Cache disponible → pas de squelette (affichage immédiat, cache-then-network).
- Durée > 10 s → message 'Chargement plus long que prévu' avec Réessayer.
- Transition 200 ms vers le contenu.

## 🛠️ Tâches

- [ ] Créer widgets/match_card_skeleton.dart et calendar_skeleton.dart.
- [ ] Brancher CalendarLoading.
- [ ] Implémenter le timeout d'affichage 10 s.
- [ ] ARB calendarSlowLoading.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné Loading sans cache alors 5 squelettes.
- [ ] Étant donné un cache alors aucun squelette.
- [ ] Étant donné 10 s écoulées alors 'Réessayer' est proposé.
- [ ] Étant donné reduce motion alors statique.

## 🧪 Tests à écrire

- [ ] Test widget skeleton_5_cartes
- [ ] Test widget pas_de_squelette_si_cache
- [ ] Test widget timeout_10s
- [ ] Golden test L-03

## ♿ Accessibilité et i18n

- Semantics 'Chargement du calendrier' liveRegion.

## 🔗 Dépendances

À réaliser après : `MOB-L-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.8
- CDC Flutter §9.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
