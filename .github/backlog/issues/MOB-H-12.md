> **MOB-H-12** · Écran · Priorité **P0** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Sur H-03 la carte inférieure indique 7/11, '4 postes à compléter' avec un état vide ; seuls ter Stegen, Koundé, Balde, De Jong, Gavi, Yamal et Raphinha sont placés.

## ✅ Objectif

Afficher l'état partiel de la composition et guider vers les postes manquants.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-03` — Composition — postes à compléter
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-03_composition-postes-a-completer__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-03_composition-postes-a-completer__phone_light.webp?raw=true' width='230' alt='H-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-03_composition-postes-a-completer__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-03_composition-postes-a-completer__phone_dark.webp?raw=true' width='230' alt='H-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-03_composition-postes-a-completer__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-03_composition-postes-a-completer__tablet_light.webp?raw=true' width='330' alt='H-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-03_composition-postes-a-completer__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-03_composition-postes-a-completer__tablet_dark.webp?raw=true' width='330' alt='H-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Fermeture des compositions dans » · « 1 j 04 h 12 min » · « J11 » · « ter Stegen » · « Koundé » · « Balde » · « De Jong » · « Gavi » · « Yamal » · « Raphinha » · « 7/11 » · « 4 postes à compléter » · « Formation » · « 4-3-3 » · « · Capitaine » · « Capitaine »

**Composants repérés** : `avatar`, `btn`, `card`, `empty`

</details>

**Issues liées sur ce même écran :** [API-FANT-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-02%5D%22) · [API-FANT-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-03%5D%22) · [API-FANT-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-04%5D%22) · [API-FANT-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-05%5D%22) · [MOB-H-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-05%5D%22) · [MOB-H-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-06%5D%22) · [MOB-H-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-11%5D%22) · [MOB-H-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-29%5D%22) · [MOB-H-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-33%5D%22) · [MOB-H-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-34%5D%22)

## 📐 Règles de gestion

- Compteur 'N/11' et anneau de progression proportionnel ; texte '4 postes à compléter' (pluriel ICU : 1 poste / N postes).
- Les slots vides sont mis en évidence ; tap sur le message ouvre le premier slot vide.
- Le bouton d'enregistrement est désactivé tant que N<11 ou capitaine absent.
- Le composant 'empty' de la maquette est utilisé pour l'invitation à compléter.

## 🔄 Comportement et états

- Après chaque ajout le compteur s'anime (count-up 150 ms).
- À 11/11 le message devient 'Équipe complète' avec coche verte.

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/presentation/widgets/team_status_card.dart (anneau, compteur, texte).
- [ ] Brancher filledCount/missingSlots du BLoC.
- [ ] Implémenter l'action 'aller au prochain slot vide'.
- [ ] Clés ARB pluriel fantasyMissingSlots.
- [ ] Désactiver le CTA selon canSave.
- [ ] Test golden 7/11 et 11/11.

## ✔️ Critères d'acceptation

- [ ] Étant donné 7 joueurs alors '7/11' et '4 postes à compléter' sont visibles.
- [ ] Étant donné un tap sur le message alors la feuille du premier slot vide s'ouvre.
- [ ] Étant donné 10/11 alors le texte est '1 poste à compléter'.
- [ ] Étant donné 11/11 alors 'Équipe complète'.

## 🧪 Tests à écrire

- [ ] widget: 7/11 libellé
- [ ] widget: pluriel 1 poste
- [ ] widget: CTA désactivé si incomplet
- [ ] widget: tap message ouvre slot vide
- [ ] golden 7/11

## ♿ Accessibilité et i18n

- Annonce vocale du nombre de postes restants à chaque changement

## 🔗 Dépendances

À réaliser après : `MOB-H-10` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
