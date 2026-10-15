> **MOB-P-16** · Écran · Priorité **P1** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Écran 'MA SÉRIE' : grande carte '12 jours de suite' (Record : 27 jours) et calendrier mensuel 'Octobre 2026' en carte de chaleur (Moins -> Plus, 4 niveaux), navigation mois précédent/suivant.

## ✅ Objectif

Visualiser la régularité d'activité.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `P-10` — Ma série — calendrier d’activité
_Module : Culé Passport_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-10_ma-serie-calendrier-d-activite__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-10_ma-serie-calendrier-d-activite__phone_light.webp?raw=true' width='230' alt='P-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-10_ma-serie-calendrier-d-activite__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-10_ma-serie-calendrier-d-activite__phone_dark.webp?raw=true' width='230' alt='P-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-10_ma-serie-calendrier-d-activite__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-10_ma-serie-calendrier-d-activite__tablet_light.webp?raw=true' width='330' alt='P-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-10_ma-serie-calendrier-d-activite__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-10_ma-serie-calendrier-d-activite__tablet_dark.webp?raw=true' width='330' alt='P-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ma série » · « jours de suite » · « Record : 27 jours » · « Octobre 2026 » · « Moins » · « Plus »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-PASS-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-01%5D%22) · [API-PASS-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-02%5D%22) · [API-PASS-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-06%5D%22) · [API-PASS-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-16%5D%22) · [API-PASS-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-17%5D%22) · [API-PASS-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-18%5D%22) · [API-PASS-27](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-27%5D%22) · [API-PASS-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-32%5D%22) · [MOB-P-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-04%5D%22) · [MOB-P-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-20%5D%22) · [MOB-P-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-21%5D%22)

## 📐 Règles de gestion

- Série = jours consécutifs avec au moins un jeu quotidien joué (badge Série de 10 jours) ; record = bestStreak.
- Intensité par jour : 0, 1, 2, 3+ activités (4 teintes) ; jours futurs en gris clair.
- Semaines commençant le lundi (L M M J V S D).
- Navigation mois : pas au-delà du mois courant.

## 🔄 Comportement et états

- Mois sans activité : toutes cases neutres ; squelette ; hors-ligne cache.

## 🛠️ Tâches

- [ ] Créer lib/features/profile_passport/presentation/pages/streak_screen.dart.
- [ ] Widgets StreakHeroCard, ActivityHeatmap.
- [ ] Use case GetActivityCalendar(month).
- [ ] Navigation de mois.
- [ ] Clés ARB (jours, mois).
- [ ] Golden.

## ✔️ Critères d'acceptation

- [ ] Étant donné 12 jours alors '12 jours de suite' et 'Record : 27 jours'.
- [ ] Étant donné un jour à 3 activités alors teinte la plus foncée.
- [ ] Étant donné le mois courant alors suivant désactivé.
- [ ] Étant donné un jour futur alors case neutre.

## 🧪 Tests à écrire

- [ ] niveaux d'intensité
- [ ] semaine commençant lundi
- [ ] nav mois
- [ ] golden

## ♿ Accessibilité et i18n

- Chaque case a Semantics 'Mardi 7 : 2 activités'

## 🔗 Dépendances

À réaliser après : `MOB-P-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.11
- CDC Flutter §7.12

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
