> **MOB-O-08** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

O-02 « Matchs » : « Pour tous les matchs de l'équipe première », options Rappel 1 h avant le coup d'envoi (actif), Coup d'envoi (inactif), Mi-temps (actif), Résultat final (actif), Buts en direct (inactif) et puces « Compétitions suivies » (Liga, Ligue des champions, Coupe du Roi actives ; Amicaux inactif).

## ✅ Objectif

Implémenter le détail des options de match et le filtre de compétitions.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `O-02` — Détail — rappels de match
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-02_detail-rappels-de-match__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-02_detail-rappels-de-match__phone_light.webp?raw=true' width='230' alt='O-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-02_detail-rappels-de-match__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-02_detail-rappels-de-match__phone_dark.webp?raw=true' width='230' alt='O-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-02_detail-rappels-de-match__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-02_detail-rappels-de-match__tablet_light.webp?raw=true' width='330' alt='O-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-02_detail-rappels-de-match__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-02_detail-rappels-de-match__tablet_dark.webp?raw=true' width='330' alt='O-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Matchs » · « Pour tous les matchs de l'équipe première » · « Rappel 1 h avant le coup d’envoi » · « Coup d’envoi » · « Mi-temps » · « Résultat final » · « Buts en direct » · « Compétitions suivies » · « Liga » · « Ligue des champions » · « Coupe du Roi » · « Amicaux »

**Composants repérés** : `chip`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-04%5D%22) · [API-NOTIF-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-05%5D%22) · [API-NOTIF-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-13%5D%22) · [API-NOTIF-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-14%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [MOB-O-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-02%5D%22) · [MOB-O-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-06%5D%22) · [MOB-O-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-26%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22) · [MOB-O-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-28%5D%22)

## 📐 Règles de gestion

- Options CDC Global §2.12 : 1 h avant, mi-temps, coup de sifflet final avec le résultat ; « Coup d'envoi » et « Buts en direct » sont des ajouts de la maquette (voir issue modèles).
- Au moins une compétition doit rester sélectionnée si la catégorie est active ; sinon message « Choisis au moins une compétition ».
- Désactiver les 5 options visuellement (grisées) si la catégorie Matchs est coupée dans O-01.

## 🛠️ Tâches

- [ ] Créer `notification_match_prefs_page.dart` avec en-tête (icône, « MATCHS », sous-titre).
- [ ] Créer `OptionSwitchRow(label, value, onChanged)` et `CompetitionChipGroup` (`FilterChip` grenat quand actif).
- [ ] Brancher `toggleMatchOption` / `toggleCompetition`.
- [ ] Désactiver les options si `categories.match == false`.
- [ ] Validation « au moins une compétition ».
- [ ] Golden test clair/sombre.
- [ ] `Semantics` des chips (sélectionné/non sélectionné).
- [ ] Analytics `notif_match_option_changed`.

## ✔️ Critères d'acceptation

- [ ] Étant donné les valeurs par défaut, quand O-02 s'affiche, alors « Rappel 1 h avant », « Mi-temps » et « Résultat final » sont actifs.
- [ ] Étant donné la catégorie Matchs coupée, quand O-02 s'affiche, alors les options sont grisées.
- [ ] Étant donné une seule compétition active, quand l'utilisateur la désélectionne, alors le message d'erreur s'affiche et la sélection est conservée.
- [ ] Étant donné « Amicaux » touché, quand il est activé, alors la compétition est ajoutée aux préférences.

## 🧪 Tests à écrire

- [ ] Golden test : O-02.
- [ ] Widget test : options désactivées si catégorie coupée.
- [ ] Widget test : validation compétitions.
- [ ] Widget test : toggle option.
- [ ] Widget test : chips.

## ♿ Accessibilité et i18n

- Clés ARB : `matchPrefsSub`, `optOneHourBefore`, `optKickoff`, `optHalfTime`, `optFullTime`, `optLiveGoals`, `followedCompetitions`, `compLiga`, `compUcl`, `compCopaDelRey`, `compFriendlies`, `chooseOneCompetition`.

## 🔗 Dépendances

À réaliser après : `MOB-O-07` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.11
- CDC Global §2.12
- CDC Backend §3.10

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
