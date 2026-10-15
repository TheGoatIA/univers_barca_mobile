> **MOB-ZD-01** · Écran · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

La planche présente les tuiles de résultat de Guess the Player : vert = exact, jaune = proche, rouge = faux, avec flèches ▲▼ (plus / moins) pour valeurs numériques (28 ▲, 10 ▼), et une ligne de tentative « PEDRI · ES · MC · 23 ▲ · 8 ▲ · Las Palmas ».

## ✅ Objectif

`GuessCell` et `GuessAttemptRow` réutilisés par le module Jeux.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZD-01` — Composants de jeu
_Module : Composants métier et responsive_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__desktop_light.webp?raw=true' width='330' alt='ZD-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__desktop_dark.webp?raw=true' width='330' alt='ZD-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__mobile_light.webp?raw=true' width='230' alt='ZD-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__mobile_dark.webp?raw=true' width='230' alt='ZD-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Métier · 01 » · « Composants de jeu » · « Guess the Player, Quiz, Fantasy : tuiles de résultat, options de réponse, terrain interactif. Les états sont distingués par la couleur ET par une icône ou un libellé. » · « Guess the Player — cellules d’indice » · « États d’une cellule » · « 28 ▲ » · « 10 ▼ » · « Vert : exact » · « Jaune : proche » · « Rouge : faux » · « ▲▼ plus / moins » · « Ligne de tentative » · « Pedri » · « 23 ▲ » · « 8 ▲ » · « Las Palmas » · « Quiz — options de réponse » · « Repos » · « Ivan Rakitić » · « Sélectionnée » · « Bonne réponse » · « Mauvaise réponse » · « Estompée » · « Chronomètre, paliers et classement » · « Chronomètre » · « normal · urgence ( » · « 5 s) » · « Paliers de difficulté » · « Supporter occasionnel » · « Culé »

**Composants repérés** : `card`, `empty`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-35](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-35%5D%22) · [MOB-ZD-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-02%5D%22) · [MOB-ZD-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-03%5D%22) · [MOB-ZD-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-04%5D%22)

## 📐 Règles de gestion

- États : `exact` (success), `close` (warning, texte #1A1A2E), `wrong` (error), `empty` (surface-variant) ; couleur ET icône/libellé : ▲ plus, ▼ moins, ✓ exact, ≈ proche (ZD-05).
- Cellule : hauteur 44, rayon 8, texte 12 px w700 MAJUSCULES ; valeur numérique + flèche (28 ▲).
- Ligne : colonnes Joueur, Nationalité, Poste, Âge, Numéro, Équipe ; défilement horizontal si < 360 px.
- Révélation : retournement de chaque cellule (rotation Y) 240 ms, décalage 80 ms entre colonnes, haptique `selectionClick` par cellule (ZE-01).

## 🛠️ Tâches

- [ ] Créer `lib/core/widgets/game/guess_cell.dart` (`GuessCellState`, `GuessDirection`).
- [ ] Créer `guess_attempt_row.dart` avec `Wrap`/`Row` adaptatif.
- [ ] Implémenter l'animation de flip (`Transform` perspective 0,002) pilotée par `Interval` décalés de 80 ms.
- [ ] Respecter animations réduites : révélation instantanée, haptique conservée.
- [ ] Accessibilité : `Semantics(label: 'Âge : 23, plus que la cible')`.
- [ ] Tests, widgetbook, goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné une cellule `close`, alors elle affiche la couleur jaune et un symbole ≈ accessible.
- [ ] Étant donné 6 colonnes, quand la ligne est révélée, alors la dernière cellule se retourne 400 ms après la première.
- [ ] Étant donné animations réduites, alors toutes les cellules sont révélées immédiatement.
- [ ] Étant donné un écran de 320 px, alors la ligne défile horizontalement sans overflow.

## 🧪 Tests à écrire

- [ ] Widget : 4 états.
- [ ] Widget : décalage 80 ms (pump).
- [ ] Widget : flèche ▲/▼.
- [ ] Golden : états et ligne clair/sombre.

## ♿ Accessibilité et i18n

- Label complet par cellule ; ARB `guessExact`, `guessClose`, `guessWrong`, `guessHigher`, `guessLower`.

## 📚 Références

- CDC Flutter §4 jeux
- CDC Global §4.5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
