> **MOB-P-11** · Écran · Priorité **P1** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Feuille 'Niveau La Masia — À débloquer : Atteins le niveau 5 du quiz adaptatif pour obtenir ce badge d'exception', 'Niveau actuel 2 / 5' et bouton 'Jouer au quiz'.

## ✅ Objectif

Expliquer comment obtenir le badge et y mener.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `P-05` — Badge verrouillé — progression
_Module : Culé Passport_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-05_badge-verrouille-progression__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-05_badge-verrouille-progression__phone_light.webp?raw=true' width='230' alt='P-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-05_badge-verrouille-progression__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-05_badge-verrouille-progression__phone_dark.webp?raw=true' width='230' alt='P-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-05_badge-verrouille-progression__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-05_badge-verrouille-progression__tablet_light.webp?raw=true' width='330' alt='P-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-05_badge-verrouille-progression__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-05_badge-verrouille-progression__tablet_dark.webp?raw=true' width='330' alt='P-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Badge » · « À débloquer » · « Niveau La Masia » · « Atteins le niveau 5 du quiz adaptatif pour obtenir ce badge d'exception. » · « Niveau actuel » · « 2 / 5 » · « Jouer au quiz »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-P-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-09%5D%22)

## 📐 Règles de gestion

- Progression numérique (2/5) et barre.
- Le bouton dépend du badge : Jouer au quiz, Voir Fantasy, etc. -> deep link.
- Badge d'exception signalé par un libellé.
- Aucune information sensible.

## 🔄 Comportement et états

- Cas sans action : bouton masqué.

## 🛠️ Tâches

- [ ] Créer lib/features/profile_passport/presentation/widgets/locked_badge_sheet.dart.
- [ ] Mapping badge -> action/deep link.
- [ ] Barre de progression.
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné niveau 2/5 alors la barre est à 40 %.
- [ ] Étant donné 'Jouer au quiz' alors navigation vers Quiz.
- [ ] Étant donné un badge sans action alors pas de bouton.
- [ ] Étant donné le mode sombre alors lisible.

## 🧪 Tests à écrire

- [ ] progression 40 %
- [ ] deep link quiz
- [ ] bouton masqué

## 🔗 Dépendances

À réaliser après : `MOB-P-08` · `MOB-P-09` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.12
- CDC Global §2.11

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
