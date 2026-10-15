> **MOB-ZD-03** · Écran · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Composants : chronomètre « 00:18 » normal et « 00:04 » en urgence (< 5 s, rouge), liste de 5 paliers (Supporter occasionnel, Culé, Socio, Historien du Barça, La Masia) avec palier courant surligné, podium 2-1-3 avec portraits.

## ✅ Objectif

`CountdownTimer`, `DifficultyTierList`, `PodiumView`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZD-01` — Composants de jeu
_Module : Composants métier et responsive_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__desktop_light.webp?raw=true' width='330' alt='ZD-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__desktop_dark.webp?raw=true' width='330' alt='ZD-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__mobile_light.webp?raw=true' width='230' alt='ZD-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-01_composants-de-jeu__mobile_dark.webp?raw=true' width='230' alt='ZD-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Métier · 01 » · « Composants de jeu » · « Guess the Player, Quiz, Fantasy : tuiles de résultat, options de réponse, terrain interactif. Les états sont distingués par la couleur ET par une icône ou un libellé. » · « Guess the Player — cellules d’indice » · « États d’une cellule » · « 28 ▲ » · « 10 ▼ » · « Vert : exact » · « Jaune : proche » · « Rouge : faux » · « ▲▼ plus / moins » · « Ligne de tentative » · « Pedri » · « 23 ▲ » · « 8 ▲ » · « Las Palmas » · « Quiz — options de réponse » · « Repos » · « Ivan Rakitić » · « Sélectionnée » · « Bonne réponse » · « Mauvaise réponse » · « Estompée » · « Chronomètre, paliers et classement » · « Chronomètre » · « normal · urgence ( » · « 5 s) » · « Paliers de difficulté » · « Supporter occasionnel » · « Culé »

**Composants repérés** : `card`, `empty`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-35](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-35%5D%22) · [MOB-ZD-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-01%5D%22) · [MOB-ZD-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-02%5D%22) · [MOB-ZD-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-04%5D%22)

## 📐 Règles de gestion

- Chrono : Barlow 28 tabulaire, icône sablier ; urgence < 5 s : texte error + pulsation 500 ms ; fin → callback `onElapsed`.
- Paliers : numéro dans pastille 24, palier actif en gras + fond primary 12 % ; numérotation 1 à 5.
- Podium : 1er au centre plus haut (portrait 64), 2e gauche, 3e droite (48) ; rangs textuels 1/2/3 sous les portraits.
- Chrono basé sur l'horloge monotone (pas de dérive en arrière-plan).

## 🛠️ Tâches

- [ ] Créer `countdown_timer.dart` (Stopwatch/Ticker, `Duration remaining`).
- [ ] Créer `difficulty_tier_list.dart`.
- [ ] Créer `podium_view.dart` avec `BarcaAvatar`/portraits.
- [ ] Mise en pause en arrière-plan selon règle du jeu (paramètre).
- [ ] Tests, goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné 4 s restantes, alors le chrono est rouge et pulse.
- [ ] Étant donné le passage en arrière-plan 10 s, alors le temps restant est corrigé au retour.
- [ ] Étant donné 3 classés, alors l'ordre visuel est 2-1-3.

## 🧪 Tests à écrire

- [ ] Unitaire : format 00:18.
- [ ] Widget : urgence < 5 s.
- [ ] Widget : podium ordre.
- [ ] Golden : trois composants.

## ♿ Accessibilité et i18n

- Chrono annonce toutes les 10 s et à 5 s ; ARB `timerRemaining`.

## 📚 Références

- CDC Flutter §4 jeux

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
