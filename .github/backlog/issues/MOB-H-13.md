> **MOB-H-13** · Écran · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Depuis la ligne 'Formation 4-3-3' de la composition, une bottom sheet permet de choisir parmi les formations autorisées avec aperçu du schéma.

## ✅ Objectif

Implémenter la feuille de sélection de formation qui met à jour le terrain en direct.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-04` — Choix de la formation
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-04_choix-de-la-formation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-04_choix-de-la-formation__phone_light.webp?raw=true' width='230' alt='H-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-04_choix-de-la-formation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-04_choix-de-la-formation__phone_dark.webp?raw=true' width='230' alt='H-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-04_choix-de-la-formation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-04_choix-de-la-formation__tablet_light.webp?raw=true' width='330' alt='H-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-04_choix-de-la-formation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-04_choix-de-la-formation__tablet_dark.webp?raw=true' width='330' alt='H-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Fermeture des compositions dans » · « 1 j 04 h 12 min » · « J11 » · « ter Stegen » · « Koundé » · « Cubarsí » · « Araújo » · « Balde » · « De Jong » · « Pedri » · « Gavi » · « Yamal » · « Lewandowski » · « Raphinha » · « 11/11 » · « Équipe complète » · « Formation » · « 4-3-3 » · « · Capitaine » · « Capitaine »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-FANT-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-03%5D%22) · [MOB-H-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-05%5D%22) · [MOB-H-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-06%5D%22)

## 📐 Règles de gestion

- Quatre options : 4-3-3 (sélection actuelle), 4-4-2, 3-5-2, 4-2-3-1 ; une miniature de schéma par option.
- Sélection immédiate = FormationChanged ; la feuille se ferme avec une animation 250 ms.
- Message si des joueurs sont retirés : toast 'N joueur(s) retiré(s)'.
- Désactivée si la composition est verrouillée.

## 🔄 Comportement et états

- Le fond est flouté ; poignée de glissement pour fermer ; Android retour ferme la feuille.

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/presentation/widgets/formation_sheet.dart (showModalBottomSheet).
- [ ] Créer FormationOptionTile + miniature CustomPainter.
- [ ] Émettre FormationChanged.
- [ ] Afficher le toast de retrait.
- [ ] Clés ARB fantasyFormation, noms de formations.
- [ ] Test golden.

## ✔️ Critères d'acceptation

- [ ] Étant donné 4-3-3 actif quand je choisis 3-5-2 alors le terrain se réorganise et la feuille se ferme.
- [ ] Étant donné la feuille ouverte quand je glisse vers le bas alors elle se ferme sans changement.
- [ ] Étant donné une composition verrouillée alors la ligne Formation n'est pas interactive.
- [ ] Étant donné un changement perdant 2 joueurs alors le toast l'indique.

## 🧪 Tests à écrire

- [ ] widget: 4 options
- [ ] widget: option active marquée
- [ ] widget: sélection émet FormationChanged
- [ ] widget: fermeture au swipe
- [ ] golden feuille

## ♿ Accessibilité et i18n

- Rôle radio group, 'sélectionné' annoncé

## 🔗 Dépendances

À réaliser après : `MOB-H-05` · `MOB-H-10` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.6
- CDC Backend §6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
