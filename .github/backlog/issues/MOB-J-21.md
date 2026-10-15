> **MOB-J-21** · Écran · Priorité **P1** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Pendant le chargement d'une zone, la carte reste visible, les chips et la recherche sont actifs, et une feuille affiche un spinner avec « Chargement de la zone… ».

## ✅ Objectif

Fournir un état de chargement non bloquant et cohérent avec le design system.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `J-10` — Carte — chargement
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-10_carte-chargement__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-10_carte-chargement__phone_light.webp?raw=true' width='230' alt='J-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-10_carte-chargement__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-10_carte-chargement__phone_dark.webp?raw=true' width='230' alt='J-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-10_carte-chargement__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-10_carte-chargement__tablet_light.webp?raw=true' width='330' alt='J-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-10_carte-chargement__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-10_carte-chargement__tablet_dark.webp?raw=true' width='330' alt='J-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Rechercher un pays ou une ville » · « Tous » · « Groupes » · « Watch parties » · « Près de moi » · « Chargement de la zone… »

**Composants repérés** : `avatar`, `chip`, `map`, `spinner`

</details>

**Issues liées sur ce même écran :** [API-COMM-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-09%5D%22) · [API-COMM-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-10%5D%22) · [API-COMM-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-30%5D%22) · [MOB-J-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-04%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22)

## 📐 Règles de gestion

- Spinner brand + texte « Chargement de la zone… » dans la feuille inférieure ; la carte reste manipulable.
- Squelettes de lignes (shimmer) pour la liste après 400 ms d'attente ; aucun flash si la réponse arrive en < 150 ms.
- Timeout visuel : après 10 s sans réponse, bascule vers J-11.
- Respect de reduce motion : spinner statique avec texte seul.

## 🛠️ Tâches

- [ ] Créer widgets/map_loading_sheet.dart (spinner AppLoading + texte).
- [ ] Créer widgets/group_tile_skeleton.dart (shimmer).
- [ ] Brancher MapLoading dans la page.
- [ ] Implémenter le délai d'affichage de 150 ms (Future.delayed annulable).
- [ ] Ajouter le timeout de 10 s dans le BLoC.
- [ ] Ajouter ARB et Semantics liveRegion.
- [ ] Golden clair/sombre.
- [ ] Test widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné une réponse en 100 ms, quand la zone se charge, alors aucun loader n'est visible.
- [ ] Étant donné une réponse en 2 s, quand la zone se charge, alors « Chargement de la zone… » est affiché.
- [ ] Étant donné 10 s sans réponse, quand le délai expire, alors J-11 s'affiche.
- [ ] Étant donné reduce motion, quand le loader est affiché, alors pas d'animation shimmer.

## 🧪 Tests à écrire

- [ ] map_loading_sheet_test : texte et semantics.
- [ ] bloc_test : timeout 10 s -> failure.
- [ ] loader_delay_test : 150 ms.
- [ ] golden_map_loading.

## ♿ Accessibilité et i18n

- ARB : communityLoadingZone « Chargement de la zone… » ; Semantics liveRegion polite.

## 🔗 Dépendances

À réaliser après : `MOB-J-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.7.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
