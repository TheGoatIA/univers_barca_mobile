> **MOB-H-27** · Écran · Priorité **P0** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Avant la première composition, la carte 'Compose ton premier XI' explique 'Tu n'as pas encore d'équipe pour la journée 11. Choisis tes 11 joueurs avant la fermeture !' avec 'Créer mon équipe' et 'Lire les règles'.

## ✅ Objectif

Guider le nouvel utilisateur vers sa première composition.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-16` — Fantasy — pas encore d’équipe
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-16_fantasy-pas-encore-d-equipe__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-16_fantasy-pas-encore-d-equipe__phone_light.webp?raw=true' width='230' alt='H-16 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-16_fantasy-pas-encore-d-equipe__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-16_fantasy-pas-encore-d-equipe__phone_dark.webp?raw=true' width='230' alt='H-16 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-16_fantasy-pas-encore-d-equipe__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-16_fantasy-pas-encore-d-equipe__tablet_light.webp?raw=true' width='330' alt='H-16 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-16_fantasy-pas-encore-d-equipe__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-16_fantasy-pas-encore-d-equipe__tablet_dark.webp?raw=true' width='330' alt='H-16 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Compose ton premier XI » · « Tu n’as pas encore d’équipe pour la journée 11. Choisis tes 11 joueurs avant la fermeture ! » · « Créer mon équipe » · « Lire les règles »

**Composants repérés** : `avatar`, `btn`

</details>

**Issues liées sur ce même écran :** [API-FANT-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-05%5D%22) · [API-FANT-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-19%5D%22)

## 📐 Règles de gestion

- Affiché si GET /fantasy/team renvoie 404 pour la journée courante.
- 'Créer mon équipe' ouvre le terrain vide en 4-3-3 par défaut ; 'Lire les règles' ouvre l'onglet Règles.
- Le compte à rebours reste visible.
- Si la journée est déjà verrouillée sans équipe : message 'Tu as manqué la journée 11' sans CTA de création.

## 🔄 Comportement et états

- Squelette puis état vide ; pas d'erreur affichée.

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/presentation/widgets/fantasy_empty_state.dart.
- [ ] Brancher l'état NoTeam.
- [ ] Initialiser un brouillon vide 4-3-3.
- [ ] Variante 'journée manquée'.
- [ ] Clés ARB.
- [ ] Golden.

## ✔️ Critères d'acceptation

- [ ] Étant donné aucune équipe alors l'état vide s'affiche.
- [ ] Étant donné 'Créer mon équipe' alors le terrain vide 4-3-3 s'ouvre.
- [ ] Étant donné 'Lire les règles' alors l'onglet Règles s'ouvre.
- [ ] Étant donné journée verrouillée alors pas de CTA de création.

## 🧪 Tests à écrire

- [ ] NoTeam affiche l'état vide
- [ ] CTA crée un brouillon 4-3-3
- [ ] variante journée manquée

## ♿ Accessibilité et i18n

- Ordre de focus logique

## 🔗 Dépendances

À réaliser après : `MOB-H-06` · `MOB-H-07` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
