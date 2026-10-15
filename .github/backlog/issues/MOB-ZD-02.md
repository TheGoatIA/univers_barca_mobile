> **MOB-ZD-02** · Écran · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Option « A Ivan Rakitić » : repos (contour), sélectionnée (fond bleu clair + contour navy), bonne réponse (vert + icône coche), mauvaise réponse (rouge + croix), estompée (opacité réduite). Retour visuel immédiat requis par CDC Flutter (jeux).

## ✅ Objectif

`QuizOptionTile` animé avec feedback couleur + icône + haptique.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZD-01` — Composants de jeu
_Module : Composants métier et responsive_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__desktop_light.webp?raw=true' width='330' alt='ZD-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__desktop_dark.webp?raw=true' width='330' alt='ZD-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__mobile_light.webp?raw=true' width='230' alt='ZD-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__mobile_dark.webp?raw=true' width='230' alt='ZD-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Métier · 01 » · « Composants de jeu » · « Guess the Player, Quiz, Fantasy : tuiles de résultat, options de réponse, terrain interactif. Les états sont distingués par la couleur ET par une icône ou un libellé. » · « Guess the Player — cellules d’indice » · « États d’une cellule » · « 28 ▲ » · « 10 ▼ » · « Vert : exact » · « Jaune : proche » · « Rouge : faux » · « ▲▼ plus / moins » · « Ligne de tentative » · « Pedri » · « 23 ▲ » · « 8 ▲ » · « Las Palmas » · « Quiz — options de réponse » · « Repos » · « Ivan Rakitić » · « Sélectionnée » · « Bonne réponse » · « Mauvaise réponse » · « Estompée » · « Chronomètre, paliers et classement » · « Chronomètre » · « normal · urgence ( » · « 5 s) » · « Paliers de difficulté » · « Supporter occasionnel » · « Culé »

**Composants repérés** : `card`, `empty`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-35](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-35%5D%22) · [MOB-ZD-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-01%5D%22) · [MOB-ZD-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-03%5D%22) · [MOB-ZD-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-04%5D%22)

## 📐 Règles de gestion

- Hauteur 56, rayon 12, lettre A/B/C/D dans pastille 28 ; texte body w500.
- Appui 100 ms ; validation 220 ms ; coche 300 ms ; haptique `lightImpact` bonne réponse / `notificationError` mauvaise (ZE-01).
- Après validation : bonne réponse toujours révélée ; autres estompées à 50 %.
- Jamais la couleur seule : icône coche/croix + libellé sémantique ; points gagnés « +15 PTS » sur la bonne réponse en 600 ms.

## 🛠️ Tâches

- [ ] Créer `quiz_option_tile.dart` (`QuizOptionState`).
- [ ] Séquence d'animation `Interval(0,.33)`, `.33–.73`, `.73–1`.
- [ ] Overlay de gain de points (`+15 PTS`).
- [ ] Verrou après réponse (pas de double validation).
- [ ] Tests, widgetbook, goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné une option sélectionnée puis validée correcte, alors elle devient verte avec coche en 300 ms.
- [ ] Étant donné une mauvaise réponse, alors elle devient rouge avec croix et la bonne est révélée.
- [ ] Étant donné une réponse validée, quand on retape, alors rien ne se passe.
- [ ] Étant donné animations réduites, alors changement instantané.

## 🧪 Tests à écrire

- [ ] Widget : 5 états.
- [ ] Widget : verrou.
- [ ] Widget : haptique appelée (mock channel).
- [ ] Golden : 5 états clair/sombre.

## ♿ Accessibilité et i18n

- Annonce « Bonne réponse » / « Mauvaise réponse, la bonne réponse était … ».

## 📚 Références

- CDC Flutter §4 quiz
- CDC Global §4.5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
