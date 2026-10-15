> **MOB-F-07** · UX / Ergonomie · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

F-02 montre la frise défilée au-delà des 4 premières cartes (ex. carte '20 mai · 1992'). Le CDC exige un widget sur mesure CustomScrollView + slivers, performant sur un grand nombre d'entrées.

## ✅ Objectif

Garantir un défilement fluide (60 fps) avec chargement paginé et en-tête de décennie persistant.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `F-02` — Frise — défilement long
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-02_frise-defilement-long__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-02_frise-defilement-long__phone_light.webp?raw=true' width='230' alt='F-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-02_frise-defilement-long__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-02_frise-defilement-long__phone_dark.webp?raw=true' width='230' alt='F-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-02_frise-defilement-long__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-02_frise-defilement-long__tablet_light.webp?raw=true' width='330' alt='F-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-02_frise-defilement-long__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-02_frise-defilement-long__tablet_dark.webp?raw=true' width='330' alt='F-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 125 ans d’histoire » · « 1950s » · « 1970s » · « 1990s » · « 2000s » · « 2010s » · « 2020s » · « 2010 – 2019 » · « 42 événements » · « 6 juin · » · « Berlin : le Barça s’offre un triplé historique » · « Ligue des champions » · « 3-1 Juventus » · « 28 mai · » · « Wembley : une démonstration face à Manchester United » · « 3-1 » · « 27 mai · » · « Rome : le sextuplé se dessine » · « 2-0 » · « 17 mai · » · « Paris : première étoile de l’ère Rijkaard » · « 2-1 » · « 20 mai · » · « Wembley : la première Coupe d’Europe » · « Coupe d’Europe » · « 1-0 Sampdoria » · « 17 févr. · »

**Composants repérés** : `avatar`, `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-06%5D%22) · [API-FOOT-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-17%5D%22) · [MOB-F-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-05%5D%22) · [MOB-F-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-26%5D%22) · [MOB-F-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-27%5D%22)

## 📐 Règles de gestion

- Utiliser CustomScrollView avec SliverAppBar/SliverPersistentHeader pour les chips de décennie (épinglées) et SliverList.builder pour les cartes (construction paresseuse).
- Pagination infinie : déclenchement quand l'offset restant < 5 cartes ; indicateur de chargement en pied de liste (BarcaLoadingIndicator).
- Le rail vertical est dessiné en continu entre cartes (CustomPainter ou DecoratedBox par sliver) sans trous ni doublons de pastille.
- Pull-to-refresh sur la liste : relance la page 1 sans perdre la décennie sélectionnée.
- Au retour du détail d'un match, la position de scroll est conservée (PageStorageKey / ScrollController restauré).
- Budget perf : aucune frame > 16 ms en profile sur 200 éléments chargés ; pas de rebuild des cartes déjà visibles lors du chargement d'une page.

## 🛠️ Tâches

- [ ] Remplacer la ListView simple par CustomScrollView dans history_timeline_page.dart.
- [ ] Créer widgets/timeline_sliver_list.dart avec itemExtent estimé ou prototypeItem pour optimiser.
- [ ] Ajouter ScrollController avec listener (ou NotificationListener<ScrollEndNotification>) émettant HistoryNextPageRequested.
- [ ] Implémenter RefreshIndicator branché sur HistoryRetryRequested/HistoryRefreshed.
- [ ] Utiliser const constructors, ValueKey(event.id) et RepaintBoundary sur les cartes.
- [ ] Ajouter un test de défilement avec 200 éléments mockés et mesure via IntegrationTestWidgetsFlutterBinding.traceAction.
- [ ] Documenter la technique dans docs/ si utile.

## ✔️ Critères d'acceptation

- [ ] Étant donné 20 éléments chargés quand l'utilisateur atteint l'élément 16 alors la page suivante est demandée une seule fois.
- [ ] Étant donné hasMore=false quand on atteint la fin alors aucun indicateur de chargement n'est affiché.
- [ ] Étant donné un retour depuis le détail quand la liste réapparaît alors la position de scroll est identique.
- [ ] Étant donné un pull-to-refresh alors la page 1 est rechargée et la décennie reste 2010s.

## 🧪 Tests à écrire

- [ ] Test widget scroll_declenche_pagination_une_fois
- [ ] Test widget fin_de_liste_sans_loader
- [ ] Test widget position_scroll_restauree
- [ ] Test d'intégration perf_200_elements_sans_jank
- [ ] Test widget pull_to_refresh

## 🔗 Dépendances

À réaliser après : `MOB-F-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.5
- CDC Flutter §12

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
