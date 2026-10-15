> **MOB-H-14** · Écran · Priorité **P0** · Taille **L** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Titre 'CHOISIR UN MILIEU (MC)' avec compteur '3 postes', champ 'Rechercher un joueur', filtres (Milieux, Tous, Forme) et liste de joueurs avec points moyens (Pedri 7.4, Dani Olmo 6.8, Fermín López 5.9) et bouton 'Confirmer Pedri'.

## ✅ Objectif

Implémenter la feuille de sélection avec recherche, filtres et choix radio.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-05` — Sélection d’un joueur par poste
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-05_selection-d-un-joueur-par-poste__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-05_selection-d-un-joueur-par-poste__phone_light.webp?raw=true' width='230' alt='H-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-05_selection-d-un-joueur-par-poste__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-05_selection-d-un-joueur-par-poste__phone_dark.webp?raw=true' width='230' alt='H-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-05_selection-d-un-joueur-par-poste__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-05_selection-d-un-joueur-par-poste__tablet_light.webp?raw=true' width='330' alt='H-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-05_selection-d-un-joueur-par-poste__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-05_selection-d-un-joueur-par-poste__tablet_dark.webp?raw=true' width='330' alt='H-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Fermeture des compositions dans » · « 1 j 04 h 12 min » · « J11 » · « ter Stegen » · « Koundé » · « Balde » · « De Jong » · « Gavi » · « Yamal » · « Raphinha » · « 7/11 » · « 4 postes à compléter » · « Formation » · « 4-3-3 » · « · Capitaine » · « Capitaine » · « Choisir un milieu (MC) » · « 3 postes » · « Rechercher un joueur » · « Milieux »

**Composants repérés** : `avatar`, `btn`, `card`, `chip`, `empty`, `search`, `sheet`

</details>

**Issues liées sur ce même écran :** [MOB-H-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-06%5D%22) · [MOB-H-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-11%5D%22) · [MOB-H-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-15%5D%22) · [MOB-H-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-31%5D%22) · [MOB-H-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-32%5D%22)

## 📐 Règles de gestion

- Joueurs issus de GET /players (existant) filtrés par position ; points moyens 'pts moy.' sur 1 décimale (7.4).
- Indicateur de forme : flèche haut / tiret / bas selon la tendance des 5 derniers matchs.
- Un joueur déjà placé ailleurs apparaît grisé avec 'déjà dans ton XI' (pas de doublon).
- Le bouton reflète le nom choisi : 'Confirmer Pedri' ; désactivé sans sélection.

## 🔄 Comportement et états

- Chargement : squelette de 3 lignes ; liste vide : composant empty 'Aucun joueur trouvé' ; erreur : Réessayer.
- Fermeture sans confirmer = aucun changement.

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/presentation/widgets/player_picker_sheet.dart.
- [ ] Créer PlayerPickerTile (avatar, nom, poste, forme, pts moy., radio).
- [ ] Utiliser GetFantasyPlayers(position).
- [ ] Gérer la sélection locale puis PlayerAssigned au confirm.
- [ ] Griser les joueurs déjà placés.
- [ ] Clés ARB fantasyChoosePlayer, fantasySlotsCount, fantasyConfirmPlayer.
- [ ] Tests widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné le slot MC quand la feuille s'ouvre alors seuls les milieux sont listés.
- [ ] Étant donné Pedri sélectionné alors le bouton affiche 'Confirmer Pedri'.
- [ ] Étant donné un joueur déjà placé alors il n'est pas sélectionnable.
- [ ] Étant donné la confirmation alors le slot affiche le joueur et la feuille se ferme.

## 🧪 Tests à écrire

- [ ] widget: liste filtrée par poste
- [ ] widget: bouton nom dynamique
- [ ] widget: joueur déjà placé grisé
- [ ] widget: squelette
- [ ] widget: état vide
- [ ] golden clair

## ♿ Accessibilité et i18n

- Radio avec Semantics 'Pedri, milieu, 7,4 points en moyenne'

## 🔗 Dépendances

À réaliser après : `MOB-H-15` · `MOB-H-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
