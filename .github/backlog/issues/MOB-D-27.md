> **MOB-D-27** · Performance · Priorité **P2** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

La recherche tape l'API à chaque frappe filtrée ; les listes affichent des photos joueurs. Pour rester fluide sur réseau 3G (cas diaspora) il faut limiter les requêtes et mettre en cache.

## ✅ Objectif

Réduire latence et trafic de la recherche de joueurs.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `D-04` — Recherche avec suggestions
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-04_recherche-avec-suggestions__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-04_recherche-avec-suggestions__phone_light.webp?raw=true' width='230' alt='D-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-04_recherche-avec-suggestions__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-04_recherche-avec-suggestions__phone_dark.webp?raw=true' width='230' alt='D-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-04_recherche-avec-suggestions__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-04_recherche-avec-suggestions__tablet_light.webp?raw=true' width='330' alt='D-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-04_recherche-avec-suggestions__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-04_recherche-avec-suggestions__tablet_dark.webp?raw=true' width='330' alt='D-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Guess the Player » · « Défi n°214 · 1/6 essais » · « Qui est le joueur mystère ? » · « Chaque essai compare tes choix aux indices. » · « Joueur » · « Nation » · « Poste » · « Âge » · « N° » · « Club » · « Yamal » · « 19 ▲ » · « 10 ▲ » · « La Masia » · « Correct » · « Proche » · « Faux » · « ▲▼ plus / moins » · « Ped » · « ri » · « Milieu · Espagne » · « Pau Cubarsí » · « Défenseur central · Espagne » · « Carles Puyol » · « Défenseur · Espagne »

**Composants repérés** : `btn`, `card`, `input`

</details>

**Issues liées sur ce même écran :** [API-JEUX-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-04%5D%22) · [API-JEUX-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-06%5D%22) · [API-JEUX-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-07%5D%22) · [API-JEUX-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-08%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-D-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-03%5D%22) · [MOB-D-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-05%5D%22) · [MOB-D-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-06%5D%22) · [MOB-D-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-11%5D%22) · [MOB-D-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-12%5D%22) · [MOB-D-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-13%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

## 📐 Règles de gestion

- Cache mémoire LRU des 50 dernières requêtes (clé normalisée) + cache Drift des 200 derniers résultats, TTL 24 h.
- Annulation des requêtes obsolètes (`CancelToken`/`restartable()`).
- Images de suggestion : miniatures 64 px (`?w=64`), `cacheWidth` côté Flutter, placeholder silhouette.

## 🛠️ Tâches

- [ ] Créer `PlayerSearchCache` (`LinkedHashMap` LRU 50) injecté dans `SearchPlayersForGuess`.
- [ ] Ajouter la table Drift `CachedPlayerSearch(queryKey, payloadJson, cachedAt)`.
- [ ] Utiliser `CachedNetworkImage(memCacheWidth: 128)` pour les avatars.
- [ ] Précharger la liste des 30 joueurs les plus joués au démarrage du jeu (`GET /players?limit=30&sort=popular` si disponible, sinon liste de l'effectif).
- [ ] Mesurer le temps d'affichage des suggestions avec `Timeline` et `Stopwatch` en debug.
- [ ] Fixer un budget : suggestions affichées < 150 ms depuis le cache, < 800 ms en 3G simulé.
- [ ] Test de charge manuel documenté (profil réseau throttlé).
- [ ] Tests unitaires du cache.

## ✔️ Critères d'acceptation

- [ ] Étant donné deux saisies identiques successives, quand la seconde est exécutée, alors aucune requête réseau n'est émise.
- [ ] Étant donné une frappe rapide « P-e-d-r-i », quand elle est terminée, alors une seule requête réseau est active à la fin.
- [ ] Étant donné 51 requêtes différentes, quand la 51e est ajoutée, alors la plus ancienne est évincée.
- [ ] Étant donné un cache de 25 h, quand la recherche est refaite, alors le cache est ignoré.

## 🧪 Tests à écrire

- [ ] Test unitaire : LRU éviction.
- [ ] Test unitaire : TTL 24 h.
- [ ] bloc_test : restartable annule la requête précédente.
- [ ] Test : clé normalisée sans accents.

## 🔗 Dépendances

À réaliser après : `MOB-D-12` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §3.1
- CDC Flutter §12

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
