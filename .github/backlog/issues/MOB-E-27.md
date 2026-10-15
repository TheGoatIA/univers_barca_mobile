> **MOB-E-27** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

E-14 : onglet « Amis » avec « Ligue « Les Culés du bureau » — 6 membres · code BARCA-4X7Q », classement (Aïcha Ngono 1 420, Mamadou Diallo 1 310, Boris T. « Toi » 1 180, Lucía Fernández 960, Kevin Mballa 720).

## ✅ Objectif

Implémenter le classement hebdomadaire d'une ligue privée.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-14` — Classement entre amis
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-14_classement-entre-amis__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-14_classement-entre-amis__phone_light.webp?raw=true' width='230' alt='E-14 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-14_classement-entre-amis__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-14_classement-entre-amis__phone_dark.webp?raw=true' width='230' alt='E-14 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-14_classement-entre-amis__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-14_classement-entre-amis__tablet_light.webp?raw=true' width='330' alt='E-14 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-14_classement-entre-amis__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-14_classement-entre-amis__tablet_dark.webp?raw=true' width='330' alt='E-14 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Classements » · « Amis » · « Monde » · « Ligue « Les Culés du bureau » » · « 6 membres · code » · « BARCA-4X7Q » · « Aïcha Ngono » · « 1 420 » · « Mamadou Diallo » · « 1 310 » · « Boris T. » · « Toi » · « 1 180 » · « Lucía Fernández » · « Kevin Mballa »

**Composants repérés** : `avatar`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-21%5D%22) · [API-JEUX-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-22%5D%22) · [API-JEUX-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-23%5D%22) · [API-JEUX-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-24%5D%22) · [MOB-E-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-25%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Classement remis à zéro chaque semaine (classement hebdomadaire entre amis, CDC Global §2.5).
- L'utilisateur peut appartenir à plusieurs ligues : sélecteur de ligue en en-tête ; code copiable.
- Actions : « Inviter » (→ E-15), « Rejoindre une ligue » (→ E-16) ; quitter la ligue via menu.

## 🛠️ Tâches

- [ ] Créer `LeagueHeaderCard(name, memberCount, code)` avec copie du code (toast).
- [ ] Réutiliser `LeaderboardRow` (noms complets des amis acceptés).
- [ ] Créer l'état vide « Tu n'as pas encore de ligue » avec boutons Créer / Rejoindre.
- [ ] Implémenter le sélecteur de ligue (`BottomSheet` liste).
- [ ] Menu « Quitter la ligue » avec confirmation (endpoint à confirmer côté API).
- [ ] Gérer erreurs `LEAGUE_NOT_FOUND`.
- [ ] Golden E-14.
- [ ] Tests widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné une ligue de 6 membres, quand E-14 s'affiche, alors le nom, « 6 membres » et le code sont visibles.
- [ ] Étant donné aucune ligue, quand l'onglet est ouvert, alors un état vide avec Créer/Rejoindre s'affiche.
- [ ] Étant donné « Copier » le code, quand il est touché, alors le code est dans le presse-papiers et un toast apparaît.
- [ ] Étant donné plusieurs ligues, quand une autre est sélectionnée, alors le classement se recharge.

## 🧪 Tests à écrire

- [ ] Golden test : E-14.
- [ ] Widget test : état vide.
- [ ] Widget test : copie du code.
- [ ] Widget test : changement de ligue.
- [ ] Widget test : quitter la ligue.

## ♿ Accessibilité et i18n

- Clés ARB : `leagueMembers` (pluriel), `leagueCode`, `copyCode`, `codeCopied`, `noLeague`, `createLeague`, `joinLeague`, `leaveLeague`.

## 🔗 Dépendances

À réaliser après : `MOB-E-25` · `MOB-E-26` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.4
- CDC Global §2.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
