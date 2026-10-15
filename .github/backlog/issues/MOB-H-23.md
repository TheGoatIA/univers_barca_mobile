> **MOB-H-23** · Écran · Priorité **P1** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Sélecteur Amis | Monde | Cette journée, tête de classement (CulerDeBarna 1120 pts, Sofía R. 1108, Marc_09 1099, Yann M. 1086) puis rang personnel 18 432e.

## ✅ Objectif

Afficher le classement global et celui de la journée, avec la position de l'utilisateur toujours visible.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-13` — Classement mondial
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-13_classement-mondial__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-13_classement-mondial__phone_light.webp?raw=true' width='230' alt='H-13 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-13_classement-mondial__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-13_classement-mondial__phone_dark.webp?raw=true' width='230' alt='H-13 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-13_classement-mondial__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-13_classement-mondial__tablet_light.webp?raw=true' width='330' alt='H-13 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-13_classement-mondial__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-13_classement-mondial__tablet_dark.webp?raw=true' width='330' alt='H-13 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Amis » · « Monde » · « Cette journée » · « CulerDeBarna » · « 1120 pts · J11 : +91 » · « Sofía R. » · « 1108 pts · J11 : +84 » · « Marc_09 » · « 1099 pts · J11 : +88 » · « Yann M. » · « 1086 pts · J11 : +72 » · « Boris T. » · « Toi » · « 774 pts · J11 : +70 »

**Composants repérés** : `avatar`, `card`, `chip`

</details>

**Issues liées sur ce même écran :** [API-FANT-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-14%5D%22) · [API-FANT-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-15%5D%22) · [API-FANT-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-21%5D%22) · [API-FANT-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-22%5D%22) · [API-FANT-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-23%5D%22) · [API-FANT-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-24%5D%22) · [MOB-H-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-03%5D%22) · [MOB-H-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-32%5D%22)

## 📐 Règles de gestion

- Scope world = cumul de saison ; scope gameweek = points de la journée courante.
- Rang personnel épinglé en bas (sticky) s'il n'est pas dans la page visible.
- Pagination par curseur ; top 100 affiché puis recherche de son propre rang via 'me'.
- Pseudos publics uniquement (aucune donnée personnelle).

## 🔄 Comportement et états

- Changement de chip : squelette léger puis liste ; cache 2 min.

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/presentation/pages/world_leaderboard_view.dart.
- [ ] Chips Amis/Monde/Cette journée (ChoiceChip).
- [ ] Ligne épinglée StickyMeRow.
- [ ] Pagination.
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné le scope Monde alors le top s'affiche et mon rang 18 432e est épinglé.
- [ ] Étant donné 'Cette journée' alors les points de J11 sont utilisés.
- [ ] Étant donné un changement de chip alors l'état précédent n'est pas mélangé.
- [ ] Étant donné une erreur alors un retry est proposé.

## 🧪 Tests à écrire

- [ ] chips changent le scope
- [ ] ligne me épinglée
- [ ] pagination
- [ ] cache 2 min

## ♿ Accessibilité et i18n

- Chips en groupe de sélection exclusive

## 🔗 Dépendances

À réaliser après : `MOB-H-22` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.7
- CDC Backend §3.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
