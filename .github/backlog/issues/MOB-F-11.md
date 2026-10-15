> **MOB-F-11** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Pendant le premier chargement, l'en-tête '125 ans d'histoire' est visible et la liste montre des squelettes plutôt qu'un spinner.

## ✅ Objectif

Fournir un squelette fidèle à la mise en page des cartes de la frise.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `F-05` — Frise — chargement
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-05_frise-chargement__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-05_frise-chargement__phone_light.webp?raw=true' width='230' alt='F-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-05_frise-chargement__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-05_frise-chargement__phone_dark.webp?raw=true' width='230' alt='F-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-05_frise-chargement__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-05_frise-chargement__tablet_light.webp?raw=true' width='330' alt='F-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-05_frise-chargement__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-05_frise-chargement__tablet_dark.webp?raw=true' width='330' alt='F-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 125 ans d’histoire »

**Composants repérés** : `avatar`, `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-17%5D%22) · [MOB-F-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-05%5D%22) · [MOB-F-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-27%5D%22)

## 📐 Règles de gestion

- Afficher 4 squelettes de carte (icône carrée 56 px, 3 lignes de texte, 2 puces) avec rail et pastilles grises.
- Animation shimmer de 1,2 s en boucle ; désactivée (placeholder statique) si 'réduire les animations' est actif (MediaQuery.disableAnimations).
- Les chips de décennie sont affichées immédiatement (non bloquantes) ; le compteur d'événements est remplacé par un bloc gris.
- Le squelette dure tant que HistoryLoading ; transition en fondu 200 ms vers le contenu.
- Utiliser BarcaLoadingIndicator/Skeleton du design system (core/widgets/app_loading.dart).

## 🛠️ Tâches

- [ ] Créer widgets/timeline_skeleton.dart et timeline_card_skeleton.dart.
- [ ] Étendre core/widgets/app_loading.dart avec un AppShimmer réutilisable si nécessaire.
- [ ] Brancher l'état HistoryLoading dans history_timeline_page.dart avec AnimatedSwitcher (200 ms).
- [ ] Prendre en charge clair/sombre (couleurs de shimmer via tokens).
- [ ] Ajouter golden tests clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné HistoryLoading alors 4 squelettes sont visibles et aucun contenu réel.
- [ ] Étant donné disableAnimations=true alors aucune animation shimmer n'est jouée.
- [ ] Étant donné le passage à HistoryLoaded alors le fondu de 200 ms est joué.

## 🧪 Tests à écrire

- [ ] Test widget skeleton_affiche_4_cartes
- [ ] Test widget shimmer_desactive_reduce_motion
- [ ] Golden test skeleton clair/sombre

## ♿ Accessibilité et i18n

- Semantics(label: 'Chargement de la frise', liveRegion) ; squelettes exclus de l'arbre sémantique (excludeSemantics).

## 🔗 Dépendances

À réaliser après : `MOB-F-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.5
- CDC Flutter §9.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
