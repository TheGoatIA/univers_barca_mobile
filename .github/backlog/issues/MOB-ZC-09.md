> **MOB-ZC-09** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Pull-to-refresh « Mise à jour… » (élastique avec résistance, haptique au seuil) et pagination en bas de liste « Chargement de la suite… ».

## ✅ Objectif

`BarcaRefreshIndicator` et `BarcaPaginatedList` réutilisables.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZC-02` — Chargement et progression
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_light.webp?raw=true' width='330' alt='ZC-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_dark.webp?raw=true' width='330' alt='ZC-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_light.webp?raw=true' width='230' alt='ZC-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_dark.webp?raw=true' width='230' alt='ZC-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 08 » · « Chargement » · « Spinner pour les actions courtes, squelette « shimmer » pour les contenus, progression déterministe pour les opérations longues. Chaque écran gère chargement, contenu, vide et erreur. » · « Indicateurs de chargement » · « Spinner · petit » · « 18 · 28 · 44 px » · « Spinner sur fond de marque » · « Dans un bouton » · « Connexion… » · « Envoi… » · « Points (assistant) » · « Barça AI écrit… » · « Squelettes (shimmer) » · « Carte » · « Liste » · « Tableau admin » · « Progression » · « Barres » · « fine · standard · épaisse » · « Anneaux » · « Génération de wallpaper » · « En file d’attente » · « 64 % » · « cible » · « 15 s » · « Chargeur de marque » · « Préparation de ton compte » · « Tirer pour actualiser et chargement paginé » · « Pull-to-refresh » · « Mise à jour… »

**Composants repérés** : `btn`, `card`, `spinner`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-19](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-19%5D%22) · [MOB-FND-38](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-38%5D%22) · [MOB-ZB-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-02%5D%22) · [MOB-ZC-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-06%5D%22) · [MOB-ZC-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-07%5D%22) · [MOB-ZC-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-08%5D%22) · [MOB-ZC-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-12%5D%22) · [MOB-ZC-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-17%5D%22)

#### `ZE-03` — Ergonomie — zone du pouce et gestes
_Module : Animations et micro-interactions_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__desktop_light.webp?raw=true' width='330' alt='ZE-03 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__desktop_dark.webp?raw=true' width='330' alt='ZE-03 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__mobile_light.webp?raw=true' width='230' alt='ZE-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__mobile_dark.webp?raw=true' width='230' alt='ZE-03 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ergonomie · 01 » · « Ergonomie à une main » · « Conçu pour les grands smartphones : les actions principales sont dans la zone du pouce, les informations en haut, les gestes naturels (balayage arrière, tirer pour actualiser, appui long) sont toujours disponibles. » · « Univers Barça · Design System v1.1 » · « Mouvement & ergonomie » · « iOS · Android · Tablette » · « Zone du pouce » · « Carte d’atteinte pour une main droite sur un écran de 6,7″. Les éléments les plus fréquents (onglets, bouton d’action, bulle IA) sont dans la zone verte. » · « Titre + actions » · « Action principale » · « Facile » · « Atteignable » · « Difficile » · « Règles de placement » · « Actions principales (CTA) fixées en bas, au-dessus de la barre d’onglets. » · « Navigation principale et bulle IA toujours dans la zone verte. » · « Informations de lecture (scores, titres) en haut : pas besoin de les atteindre. » · « Actions destructives éloignées des CTA et toujours confirmées. » · « Fermeture des sheets par balayage vers le bas, sans viser la croix. » · « Actions secondaires en haut à droite : doublées par un geste ou un appui long. » · « Tablette · deux mains » · « rail de navigation à gauche, accessible au pouce gauche ; panneaux maître/détail ; sheets centrés » · « Gestes » · « Balayer depuis le bord gauche » · « Retour (iOS) ou geste système (Android) » · « Tirer vers le bas » · « Actualiser un écran ou fermer un sheet » · « Appui long » · « Aperçu rapide, options d’un message, copie » · « Glisser-déposer »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-33](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-33%5D%22) · [MOB-ZE-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-11%5D%22) · [MOB-ZE-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-12%5D%22) · [MOB-ZE-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-18%5D%22)

## 📐 Règles de gestion

- Seuil de déclenchement 80 px, résistance élastique 0,5, haptique `selectionClick` au seuil (ZE-01), icône de rotation à 40 % du tirage, libellé « Mise à jour… ».
- Pagination : déclenchement à 200 px du bas, indicateur 28 px + « Chargement de la suite… », pas de doublon de requêtes, fin de liste silencieuse (`hasMore=false`).
- Échec de page : ligne « Réessayer » en bas, sans perdre les éléments déjà chargés.
- Conforme aux pages API `{items,total,page,totalPages,hasMore,nextCursor}`.

## 🛠️ Tâches

- [ ] Créer `barca_refresh_indicator.dart` (CupertinoSliverRefreshControl/`RefreshIndicator.adaptive` thémé).
- [ ] Créer `barca_paginated_list.dart` (ScrollController, `onLoadMore`, états).
- [ ] Créer `PaginationState<T>` (items, hasMore, nextCursor, status) réutilisable dans les BLoC.
- [ ] Intégration offline : refresh désactivé hors-ligne avec toast (FND `connectivite-cubit`).
- [ ] Tests, widgetbook.

## ✔️ Critères d'acceptation

- [ ] Étant donné un tirage > 80 px, quand on relâche, alors `onRefresh` est appelé et l'indicateur reste jusqu'à complétion.
- [ ] Étant donné 200 px avant le bas, alors une seule requête page+1 est lancée.
- [ ] Étant donné `hasMore=false`, alors aucune requête n'est lancée.
- [ ] Étant donné une erreur de page, alors « Réessayer » apparaît.

## 🧪 Tests à écrire

- [ ] Widget : seuil refresh.
- [ ] Widget : une seule requête de page.
- [ ] Widget : fin de liste.
- [ ] Widget : retry.
- [ ] Golden : indicateurs.

## ♿ Accessibilité et i18n

- Annonce « Mise à jour » ; alternative accessible : bouton « Actualiser » dans le menu pour lecteur d'écran.

## 🔗 Dépendances

À réaliser après : `MOB-ZC-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.5
- CDC Backend pagination

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
