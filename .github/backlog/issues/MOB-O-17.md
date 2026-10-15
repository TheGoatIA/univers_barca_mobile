> **MOB-O-17** · Écran · Priorité **P1** · Taille **XS** · Phase 1 — MVP

## 🎯 Contexte

O-06 : « Rien de nouveau — Tes notifications apparaîtront ici : rappels de match, série, communauté… » avec le bouton « Régler mes préférences ».

## ✅ Objectif

Implémenter l'état vide de l'inbox via `BarcaEmptyState`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `O-06` — Boîte de réception vide
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__phone_light.webp?raw=true' width='230' alt='O-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__phone_dark.webp?raw=true' width='230' alt='O-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__tablet_light.webp?raw=true' width='330' alt='O-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-06_boite-de-reception-vide__tablet_dark.webp?raw=true' width='330' alt='O-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Notifications » · « Rien de nouveau » · « Tes notifications apparaîtront ici : rappels de match, série, communauté… » · « Régler mes préférences »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-20%5D%22) · [API-NOTIF-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-21%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [MOB-O-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-03%5D%22) · [MOB-O-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-04%5D%22) · [MOB-O-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-15%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22) · [MOB-O-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-28%5D%22)

## 📐 Règles de gestion

- État vide affiché quand la liste (filtre inclus) est vide et sans erreur.
- Avec un filtre actif, le message devient « Aucune notification dans cette catégorie ».
- Le bouton mène à O-01.

## 🛠️ Tâches

- [ ] Créer `NotificationEmptyView` basé sur `BarcaEmptyState` (illustration légère + message).
- [ ] Brancher la condition `items.isEmpty && status == success` du cubit.
- [ ] Variante filtre actif.
- [ ] Bouton « Régler mes préférences » → `/notifications/preferences`.
- [ ] Golden test clair/sombre.
- [ ] Test hors-ligne : ne pas afficher « vide » si le cache n'est pas chargé.
- [ ] Clés ARB.
- [ ] Test widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné aucune notification, quand O-05 s'affiche, alors O-06 est visible.
- [ ] Étant donné le filtre « Matchs » sans résultat, quand il est actif, alors le message spécifique est affiché.
- [ ] Étant donné « Régler mes préférences », quand il est touché, alors O-01 s'ouvre.
- [ ] Étant donné une erreur réseau, quand O-05 s'affiche, alors l'état d'erreur (et non le vide) est affiché.

## 🧪 Tests à écrire

- [ ] Golden test : O-06.
- [ ] Widget test : variante filtre.
- [ ] Widget test : bouton préférences.
- [ ] Widget test : erreur ≠ vide.

## ♿ Accessibilité et i18n

- Clés ARB : `nothingNew`, `nothingNewBody`, `setPreferences`, `noneInCategory`.

## 🔗 Dépendances

À réaliser après : `MOB-O-16` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
