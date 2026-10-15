> **MOB-F-15** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Les compositions d'équipe d'un match historique (ex. Valdés, Alves, Piqué, Mascherano, Abidal, Busquets, Xavi, Iniesta, Pedro, Messi, Villa en 4-3-3).

## ✅ Objectif

Afficher les XI des deux équipes, la formation, l'entraîneur et les remplaçants.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `F-08` — Match historique — compositions
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-08_match-historique-compositions__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-08_match-historique-compositions__phone_light.webp?raw=true' width='230' alt='F-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-08_match-historique-compositions__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-08_match-historique-compositions__phone_dark.webp?raw=true' width='230' alt='F-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-08_match-historique-compositions__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-08_match-historique-compositions__tablet_light.webp?raw=true' width='330' alt='F-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-08_match-historique-compositions__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-08_match-historique-compositions__tablet_dark.webp?raw=true' width='330' alt='F-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Match historique » · « Ligue des champions · Finale » · « Barça » · « 3 – 1 » · « Mi-temps 1-1 » · « Man. United » · « 28 mai 2011 · » · « Wembley, Londres » · « Résumé » · « Compos » · « Événements » · « Contexte » · « Valdés » · « Alves » · « Piqué » · « Mascherano » · « Abidal » · « Busquets » · « Xavi » · « Iniesta » · « Pedro » · « Messi » · « Villa » · « Formation » · « 4-3-3 » · « Entraîneur » · « Pep Guardiola »

**Composants repérés** : `avatar`, `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-03%5D%22) · [API-FOOT-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-16%5D%22) · [MOB-F-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-01%5D%22) · [MOB-F-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-13%5D%22) · [MOB-F-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-27%5D%22)

## 📐 Règles de gestion

- En-tête du match identique à F-07 ; onglet Compos actif.
- Pour chaque équipe : titre de l'équipe, 'Formation 4-3-3', 'Entraîneur' + nom, liste des 11 titulaires avec avatar initiales/numéro et poste.
- Bascule Barça / adversaire via contrôle segmenté ; Barça affiché en premier.
- Remplaçants listés sous le XI avec minute d'entrée ('62'' ↔ nom) si disponible.
- Composition absente pour les matchs très anciens → état vide local 'Composition non disponible pour ce match'.
- Les avatars sont des illustrations originales ou initiales (aucune photo sous droits).

## 🛠️ Tâches

- [ ] Créer widgets/lineup_tab.dart, lineup_team_section.dart, lineup_player_tile.dart, formation_chip.dart.
- [ ] Option : vue pitch (CustomPainter 4-3-3) uniquement si la maquette tablette l'exige ; sinon liste.
- [ ] Mapper MatchLineup → vue ; trier gardien → attaquants.
- [ ] Ajouter l'état vide et les clés ARB (lineupFormation, lineupCoach, lineupSubstitutes, lineupUnavailable).
- [ ] Afficher un tap sur un joueur → fiche joueur /players/:id si l'id est connu.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné 11 titulaires alors 11 lignes sont affichées avec la formation '4-3-3' et l'entraîneur.
- [ ] Étant donné lineups vides alors le message 'Composition non disponible pour ce match' est affiché.
- [ ] Étant donné un joueur avec id alors le tap ouvre la fiche joueur.
- [ ] Étant donné la bascule adversaire alors la liste de l'équipe adverse s'affiche.

## 🧪 Tests à écrire

- [ ] Test widget LineupTab_11_titulaires
- [ ] Test widget LineupTab_vide
- [ ] Test widget bascule_equipe
- [ ] Test widget tap_joueur_navigue
- [ ] Golden test compos clair

## ♿ Accessibilité et i18n

- Chaque ligne : 'Numéro 10, Messi, attaquant'.
- Bascule d'équipe annoncée.

## 🔗 Dépendances

À réaliser après : `MOB-F-14` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.6
- CDC Flutter §7.5
- CDC Backend §3.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
