> **MOB-E-26** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

E-13 « Classements » : onglets Amis/Monde, chips Cette semaine / Ce mois / Depuis toujours, podium des 3 premiers (Mamadou D. 2 120, Sofía R. 1 840, Kevin M. 1 710), liste 4 à 6, séparateur « · · · » et ligne « Toi » (87, Boris T., 640) mise en évidence.

## ✅ Objectif

Implémenter l'écran classement mondial conforme à la maquette.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-13` — Classement mondial
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__phone_light.webp?raw=true' width='230' alt='E-13 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__phone_dark.webp?raw=true' width='230' alt='E-13 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__tablet_light.webp?raw=true' width='330' alt='E-13 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-13_classement-mondial__tablet_dark.webp?raw=true' width='330' alt='E-13 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Classements » · « Amis » · « Monde » · « Cette semaine » · « Ce mois » · « Depuis toujours » · « Sofía R. » · « 1 840 » · « Mamadou D. » · « 2 120 » · « Kevin M. » · « 1 710 » · « Lucía F. » · « 1 580 » · « Aïcha N. » · « 1 495 » · « Yann M. » · « 1 410 » · « · · · » · « Boris T. » · « Toi »

**Composants repérés** : `avatar`, `card`, `chip`

</details>

**Issues liées sur ce même écran :** [API-JEUX-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-21%5D%22) · [API-JEUX-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-22%5D%22) · [API-JEUX-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-32%5D%22) · [API-JEUX-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-33%5D%22) · [API-JEUX-37](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-37%5D%22) · [MOB-E-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-02%5D%22) · [MOB-E-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-03%5D%22) · [MOB-E-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-05%5D%22) · [MOB-E-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-25%5D%22) · [MOB-E-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-32%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Podium : 1er au centre surélevé avec médaille or, 2e à gauche argent, 3e à droite bronze ; avatars (photo ou initiales « AN », « BT »).
- Ligne « Toi » : fond rosé, étiquette « Toi », bordure grenat ; collée en bas (sticky) hors fenêtre.
- Noms affichés « Prénom N. » (minimisation RGPD) ; aucun détail personnel.

## 🛠️ Tâches

- [ ] Créer `quiz_leaderboard_page.dart` (`TabBar` Amis/Monde + `ChoiceChip`s).
- [ ] Créer `Podium`, `LeaderboardRow`, `MyRankBar` (sticky via `SliverPersistentHeader`).
- [ ] Générer l'avatar à initiales si pas de photo (couleur déterministe depuis `userId`).
- [ ] Brancher `QuizLeaderboardCubit`.
- [ ] États : squelette, vide (« Pas encore de classement »), erreur, hors-ligne.
- [ ] Pull-to-refresh.
- [ ] Golden tests E-13.
- [ ] Semantics pour chaque rang.

## ✔️ Critères d'acceptation

- [ ] Étant donné le monde/semaine, quand E-13 s'affiche, alors le podium montre 1 Mamadou D., 2 Sofía R., 3 Kevin M.
- [ ] Étant donné un rang 87, quand la liste est longue, alors la ligne « Toi » reste visible.
- [ ] Étant donné un utilisateur sans photo, quand sa ligne s'affiche, alors ses initiales sont montrées.
- [ ] Étant donné « Ce mois », quand le chip est touché, alors la liste se recharge.

## 🧪 Tests à écrire

- [ ] Golden test : E-13 clair/sombre.
- [ ] Widget test : podium.
- [ ] Widget test : ligne « Toi » sticky.
- [ ] Widget test : état vide.
- [ ] Widget test : initiales d'avatar.

## ♿ Accessibilité et i18n

- Clés ARB : `leaderboardsTitle`, `tabFriends`, `tabWorld`, `periodWeek`, `periodMonth`, `periodAll`, `youLabel`, `rankSemantics` (placeholders).

## 🔗 Dépendances

À réaliser après : `MOB-E-25` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.4
- CDC Global §2.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
