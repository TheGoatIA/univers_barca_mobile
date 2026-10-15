> **MOB-ZD-04** · Écran · Priorité **P0** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

Terrain vert rayé avec XI en 4-3-3 (Raphinha AG, Lewandowski BU, Yamal AD « C », Gavi, Pedri, De Jong, Balde, Araújo, Cubarsí, Koundé, ter Stegen GB), emplacements vides en pointillés « + », points par joueur (« 14 pts », « 5 pts »), choix de formations 4-3-3 / 4-2-3-1 / 3-5-2, cibles de dépôt 62×76 px.

## ✅ Objectif

`FantasyPitch`, `PitchSlot`, `FormationPicker` avec glisser-déposer.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZD-01` — Composants de jeu
_Module : Composants métier et responsive_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__desktop_light.webp?raw=true' width='330' alt='ZD-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__desktop_dark.webp?raw=true' width='330' alt='ZD-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__mobile_light.webp?raw=true' width='230' alt='ZD-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__mobile_dark.webp?raw=true' width='230' alt='ZD-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Métier · 01 » · « Composants de jeu » · « Guess the Player, Quiz, Fantasy : tuiles de résultat, options de réponse, terrain interactif. Les états sont distingués par la couleur ET par une icône ou un libellé. » · « Guess the Player — cellules d’indice » · « États d’une cellule » · « 28 ▲ » · « 10 ▼ » · « Vert : exact » · « Jaune : proche » · « Rouge : faux » · « ▲▼ plus / moins » · « Ligne de tentative » · « Pedri » · « 23 ▲ » · « 8 ▲ » · « Las Palmas » · « Quiz — options de réponse » · « Repos » · « Ivan Rakitić » · « Sélectionnée » · « Bonne réponse » · « Mauvaise réponse » · « Estompée » · « Chronomètre, paliers et classement » · « Chronomètre » · « normal · urgence ( » · « 5 s) » · « Paliers de difficulté » · « Supporter occasionnel » · « Culé »

**Composants repérés** : `card`, `empty`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-35](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-35%5D%22) · [MOB-ZD-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-01%5D%22) · [MOB-ZD-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-02%5D%22) · [MOB-ZD-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-03%5D%22)

## 📐 Règles de gestion

- Terrain ratio 0,68 ; tracé (lignes 2 px blanc 70 %) : surface, rond central, bandes alternées ; fond vert menthe clair / vert foncé sombre.
- Slot rempli : portrait 44 + nom (capsule) + poste ou points ; capitaine badge « C » or ; slot vide : cercle pointillé 44 avec « + ».
- Cibles de dépôt 62 × 76 px ; drag : portrait suit le doigt avec échelle 1,1 et ombre ; slot valide surligné.
- Formations : 4-3-3 (par défaut), 4-2-3-1, 3-5-2 ; changer de formation repositionne en 280 ms en conservant les joueurs compatibles.
- Les règles de composition (budget, 3 joueurs/club max…) sont dans le module Fantasy, pas ici.

## 🛠️ Tâches

- [ ] Créer `lib/core/widgets/game/fantasy_pitch.dart`, `pitch_painter.dart`, `pitch_slot.dart`, `formation_picker.dart`.
- [ ] Définir `Formation` (coordonnées normalisées 0-1 par poste).
- [ ] Implémenter `Draggable`/`DragTarget` avec feedback et haptique de dépôt.
- [ ] Animation de repositionnement 280 ms (`AnimatedPositioned`).
- [ ] Mode lecture seule (partage, classement).
- [ ] Tests, goldens à 2 formations.

## ✔️ Critères d'acceptation

- [ ] Étant donné 3-5-2 sélectionné, alors les slots se repositionnent en 280 ms.
- [ ] Étant donné un joueur glissé sur un slot valide, alors `onPlayerDropped(slotId, playerId)` est appelé.
- [ ] Étant donné un slot incompatible, alors il ne se surligne pas et le dépôt est refusé.
- [ ] Étant donné la lecture seule, alors aucun drag.

## 🧪 Tests à écrire

- [ ] Widget : formations.
- [ ] Widget : drag & drop.
- [ ] Widget : capitaine.
- [ ] Golden : 4-3-3 complet / incomplet clair/sombre.

## ♿ Accessibilité et i18n

- Alternative non-drag : appui sur slot → liste de joueurs ; labels « Poste BU, Lewandowski, 8 pts ».

## 📚 Références

- CDC Flutter §4 Fantasy
- CDC Global §4.5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
