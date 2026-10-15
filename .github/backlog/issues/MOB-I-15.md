> **MOB-I-15** · Écran · Priorité **P1** · Taille **L** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Écran 'PROGRESSION' avec onglets Global | Attributs | Forme, courbe 'Note globale' (+12 en 8 semaines, S1 à S8) et radar hexagonal Actuel vs Départ sur Technique, Physique, Intelligence, Vitesse, Mental, Finition.

## ✅ Objectif

Visualiser l'évolution (AcademyProgressionScreen, CDC Flutter §7.6).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `I-09` — Progression et graphiques
_Module : La Masia Academy_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-09_progression-et-graphiques__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-09_progression-et-graphiques__phone_light.webp?raw=true' width='230' alt='I-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-09_progression-et-graphiques__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-09_progression-et-graphiques__phone_dark.webp?raw=true' width='230' alt='I-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-09_progression-et-graphiques__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-09_progression-et-graphiques__tablet_light.webp?raw=true' width='330' alt='I-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-09_progression-et-graphiques__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-09_progression-et-graphiques__tablet_dark.webp?raw=true' width='330' alt='I-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Progression » · « Global » · « Attributs » · « Forme » · « Note globale » · « +12 en 8 semaines » · « S1 » · « S4 » · « S8 » · « Actuel » · « Départ »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [MOB-I-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-03%5D%22) · [MOB-I-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-21%5D%22) · [MOB-I-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-22%5D%22)

## 📐 Règles de gestion

- Courbe : 8 dernières semaines, aire grenat translucide, point final marqué ; badge vert '+12 en 8 semaines'.
- Radar : deux polygones (Actuel grenat, Départ bleu) sur échelle 0-100 ; légende.
- Onglet Attributs : une courbe par attribut ; onglet Forme : courbe forme et fatigue.
- Données : GetProgression (séries hebdomadaires).

## 🔄 Comportement et états

- Vide (< 2 semaines) : message 'Pas encore assez de données'.
- Tap sur un point : infobulle valeur.

## 🛠️ Tâches

- [ ] Créer lib/features/academy/presentation/pages/progression_page.dart.
- [ ] Intégrer fl_chart (LineChart, RadarChart) ou CustomPainter.
- [ ] Composants GlobalLineChart, AttributesRadar.
- [ ] Onglets TabBar.
- [ ] Couleurs via tokens.
- [ ] Clés ARB.
- [ ] Golden.

## ✔️ Critères d'acceptation

- [ ] Étant donné 8 semaines alors la courbe affiche S1 à S8.
- [ ] Étant donné l'onglet Attributs alors une série par attribut.
- [ ] Étant donné moins de 2 semaines alors l'état vide.
- [ ] Étant donné un tap sur un point alors la valeur s'affiche.

## 🧪 Tests à écrire

- [ ] courbe 8 points
- [ ] radar 6 axes
- [ ] état vide
- [ ] tap infobulle
- [ ] golden

## ♿ Accessibilité et i18n

- Alternative textuelle tabulaire des valeurs

## 🔗 Dépendances

À réaliser après : `MOB-I-03` · `MOB-I-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
