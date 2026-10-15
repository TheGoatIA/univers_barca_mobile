> **MOB-A-04** · Écran · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Quand l'appareil est hors-ligne, l'utilisateur voit une bannière sombre persistante en haut (« Hors-ligne · derniers contenus synchronisés il y a 12 min ») et, si la page demandée n'est pas en cache, un écran plein « Pas de connexion » avec deux actions.

## ✅ Objectif

Implémenter la bannière globale `OfflineBanner` et l'écran `OfflinePage` conformes à A-03, fondés sur `BarcaErrorState` (variante hors-ligne, CDC Flutter §9.5).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `A-03` — Hors-ligne
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__phone_light.webp?raw=true' width='230' alt='A-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__phone_dark.webp?raw=true' width='230' alt='A-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__tablet_light.webp?raw=true' width='330' alt='A-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-03_hors-ligne__tablet_dark.webp?raw=true' width='330' alt='A-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Hors-ligne · derniers contenus synchronisés il y a 12 min » · « Pas de connexion » · « Le défi du jour et le vote GOAT nécessitent une connexion. Ton historique consulté reste disponible. » · « Réessayer » · « Voir le contenu en cache »

**Composants repérés** : `banner`, `btn`

</details>

**Issues liées sur ce même écran :** [API-PLAT-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-07%5D%22) · [API-PLAT-55](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-55%5D%22) · [MOB-A-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-03%5D%22) · [MOB-A-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-05%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

## 📐 Règles de gestion

- Bannière : fond bleu nuit, icône wifi barré, texte « Hors-ligne · derniers contenus synchronisés il y a {duree} » sur 2 lignes max ; apparaît sous la barre de statut, pousse le contenu (pas d'overlay).
- Écran : médaillon beige avec icône wifi barré, titre « PAS DE CONNEXION » (Barlow Condensed majuscules), message « Le défi du jour et le vote GOAT nécessitent une connexion. Ton historique consulté reste disponible. », bouton principal « Réessayer » (icône refresh), lien « Voir le contenu en cache ».
- « Réessayer » lance un `hasInternet()` ; pendant le test le bouton affiche un spinner et est désactivé ; échec → shake léger + SnackBar « Toujours pas de connexion ».
- « Voir le contenu en cache » mène à `/home` en lecture seule : les fonctions critiques (défi du jour, vote GOAT, chat de groupe) affichent un état hors-ligne explicite plutôt qu'un faux comportement (principe CDC Flutter §5.3).

## 🔄 Comportement et états

- Bascule hors-ligne : bannière glisse depuis le haut en 200 ms ; retour en ligne : bannière passe au vert « De retour en ligne » 2 s puis disparaît.
- Aucun cache disponible pour la page : OfflinePage plein écran ; cache disponible : contenu + bannière seulement.
- Retour réseau automatique : l'écran se ferme tout seul et recharge la page précédente.
- Assistant IA : jamais de mode hors-ligne (CDC §5.3) — champ de saisie désactivé avec libellé explicite.

## 🛠️ Tâches

- [ ] Créer `lib/features/system/presentation/widgets/offline_banner.dart` (consomme `ConnectivityCubit`) et l'insérer dans le `builder` de `MaterialApp.router`.
- [ ] Créer `lib/features/system/presentation/pages/offline_page.dart`.
- [ ] Étendre `lib/core/widgets/app_error_view.dart` en `BarcaErrorState` avec `variant: offline|server|rateLimited`.
- [ ] Utiliser `intl` `DateFormat`/`timeago` localisé pour la durée relative (seuils : < 1 min « à l'instant », minutes, heures, jours).
- [ ] Ajouter les clés ARB `offlineBannerText`, `offlineTitle`, `offlineMessage`, `offlineRetry`, `offlineSeeCache`, `backOnline`.
- [ ] Brancher la navigation `Voir le contenu en cache` vers `RouteConstants.home` avec `extra: {readOnly:true}`.
- [ ] Test golden phone clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné le réseau coupé quand l'utilisateur navigue alors la bannière affiche « il y a 12 min » d'après `lastSyncAt`.
- [ ] Étant donné OfflinePage quand l'utilisateur appuie sur « Réessayer » sans réseau alors un spinner s'affiche puis un message « Toujours pas de connexion ».
- [ ] Étant donné OfflinePage quand le réseau revient alors la page précédente est rechargée automatiquement.
- [ ] Étant donné « Voir le contenu en cache » quand on l'active alors `/home` s'ouvre avec les données Drift et sans appel réseau bloquant.

## 🧪 Tests à écrire

- [ ] Golden `offline_page` clair/sombre phone.
- [ ] Widget test : bannière apparaît/disparaît selon l'état du cubit.
- [ ] Widget test : bouton Réessayer désactivé pendant le test réseau.
- [ ] Test : texte relatif localisé en 3 langues.
- [ ] Test d'intégration : coupure réseau simulée sur le dashboard.

## ♿ Accessibilité et i18n

- Bannière annoncée en `liveRegion` Semantics.
- Boutons ≥ 48 dp ; contraste du lien « Voir le contenu en cache » ≥ 4,5:1.
- Clés ARB fr/en/es complètes.

## 🔗 Dépendances

À réaliser après : `MOB-A-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §5.3
- CDC Flutter §9.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
