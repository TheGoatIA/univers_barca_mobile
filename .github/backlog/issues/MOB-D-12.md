> **MOB-D-12** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

En tapant « Ped » dans le champ « Nom du joueur… », une liste de suggestions s'affiche au-dessus du clavier : « Pedri — Milieu · Espagne », « Pau Cubarsí — Défenseur central · Espagne », « Carles Puyol — Défenseur · Espagne ». L'utilisateur doit choisir un joueur de la liste.

## ✅ Objectif

Implémenter le champ d'autocomplétion branché sur la recherche de joueurs avec debounce, accents tolérés et cache.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `D-04` — Recherche avec suggestions
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-04_recherche-avec-suggestions__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-04_recherche-avec-suggestions__phone_light.webp?raw=true' width='230' alt='D-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-04_recherche-avec-suggestions__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-04_recherche-avec-suggestions__phone_dark.webp?raw=true' width='230' alt='D-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-04_recherche-avec-suggestions__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-04_recherche-avec-suggestions__tablet_light.webp?raw=true' width='330' alt='D-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-04_recherche-avec-suggestions__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-04_recherche-avec-suggestions__tablet_dark.webp?raw=true' width='330' alt='D-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Guess the Player » · « Défi n°214 · 1/6 essais » · « Qui est le joueur mystère ? » · « Chaque essai compare tes choix aux indices. » · « Joueur » · « Nation » · « Poste » · « Âge » · « N° » · « Club » · « Yamal » · « 19 ▲ » · « 10 ▲ » · « La Masia » · « Correct » · « Proche » · « Faux » · « ▲▼ plus / moins » · « Ped » · « ri » · « Milieu · Espagne » · « Pau Cubarsí » · « Défenseur central · Espagne » · « Carles Puyol » · « Défenseur · Espagne »

**Composants repérés** : `btn`, `card`, `input`

</details>

**Issues liées sur ce même écran :** [API-JEUX-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-04%5D%22) · [API-JEUX-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-06%5D%22) · [API-JEUX-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-07%5D%22) · [API-JEUX-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-08%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-D-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-03%5D%22) · [MOB-D-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-05%5D%22) · [MOB-D-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-06%5D%22) · [MOB-D-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-11%5D%22) · [MOB-D-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-13%5D%22) · [MOB-D-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-27%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

#### `D-03` — Début de partie
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__phone_light.webp?raw=true' width='230' alt='D-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__phone_dark.webp?raw=true' width='230' alt='D-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__tablet_light.webp?raw=true' width='330' alt='D-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__tablet_dark.webp?raw=true' width='330' alt='D-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Guess the Player » · « Défi n°214 · 0/6 essais » · « Qui est le joueur mystère ? » · « Chaque essai compare tes choix aux indices. » · « Joueur » · « Nation » · « Poste » · « Âge » · « N° » · « Club » · « Correct » · « Proche » · « Faux » · « ▲▼ plus / moins » · « Nom du joueur… »

**Composants repérés** : `btn`, `card`, `input`

</details>

**Issues liées sur ce même écran :** [API-JEUX-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-01%5D%22) · [API-JEUX-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-03%5D%22) · [API-JEUX-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-04%5D%22) · [API-JEUX-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-05%5D%22) · [API-JEUX-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-07%5D%22) · [API-JEUX-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-08%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [API-JEUX-36](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-36%5D%22) · [API-JEUX-37](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-37%5D%22) · [MOB-D-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-01%5D%22) · [MOB-D-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-02%5D%22) · [MOB-D-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-03%5D%22) · [MOB-D-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-05%5D%22) · [MOB-D-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-06%5D%22) · [MOB-D-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-10%5D%22) · [MOB-D-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-21%5D%22) · [MOB-D-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-25%5D%22) · [MOB-D-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-26%5D%22) · [MOB-D-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-28%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

## 📐 Règles de gestion

- Déclencher la recherche à partir de 2 caractères, debounce 300 ms, 8 résultats maximum.
- Recherche insensible à la casse et aux accents (« cubarsi » trouve « Cubarsí »).
- Les joueurs déjà proposés sont grisés et non sélectionnables (« Déjà proposé »).
- Source : `GET /players?search=<q>&limit=8` (endpoint existant côté API, à enrichir de l'option `fields=light`) ; mise en cache des 200 derniers résultats dans Drift.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `GET` | `/api/v1/players` | Recherche de joueurs par nom (existant) | ?search=Ped&limit=8 | {success:true,data:{items:[{id,name,position:'Milieu',nationality:'Espagne',photoUrl}],total,page,totalPages}} |

## 🛠️ Tâches

- [ ] Créer `presentation/widgets/guess_input_bar.dart` (`TextField` + bouton d'envoi circulaire grenat).
- [ ] Créer `PlayerSuggestionList` (Overlay ancré au champ ou `ListView` dans la zone clavier) avec `PlayerSuggestionTile(avatar, nom, poste · nation)`.
- [ ] Implémenter `normalize(String)` (suppression des diacritiques, `toLowerCase`) dans `core/utils/extensions.dart`.
- [ ] Brancher `GuessQueryChanged` / `GuessSuggestionSelected` ; la sélection remplit le champ et active le bouton d'envoi.
- [ ] Gérer les états : aucun résultat (« Aucun joueur trouvé »), erreur réseau (« Recherche indisponible »), chargement (indicateur de 16 px).
- [ ] Fermer les suggestions à la perte de focus ou au tap hors liste ; fermer le clavier après envoi.
- [ ] Déclencher l'envoi aussi par la touche « Envoyer » du clavier (`TextInputAction.send`) si un joueur est sélectionné.
- [ ] Tests widget + golden de l'état D-04.

## ✔️ Critères d'acceptation

- [ ] Étant donné la saisie « Ped », quand 300 ms s'écoulent, alors 3 suggestions sont affichées avec poste et nation.
- [ ] Étant donné « cubarsi », quand la recherche s'exécute, alors « Pau Cubarsí » est proposé.
- [ ] Étant donné un joueur déjà tenté, quand les suggestions s'affichent, alors il est grisé et non cliquable.
- [ ] Étant donné un texte libre non choisi dans la liste, quand l'utilisateur touche envoyer, alors rien n'est soumis et un message « Choisis un joueur dans la liste » est annoncé.
- [ ] Étant donné un clavier ouvert, quand les suggestions apparaissent, alors elles restent entièrement visibles.

## 🧪 Tests à écrire

- [ ] Widget test : debounce 300 ms (une seule requête).
- [ ] Widget test : sélection active le bouton.
- [ ] Unit test : `normalize` (« Cubarsí » → « cubarsi »).
- [ ] Widget test : joueur déjà proposé grisé.
- [ ] Golden test : D-04.

## ♿ Accessibilité et i18n

- Clés ARB : `searchPlayerHint`, `noPlayerFound`, `alreadyGuessed`, `chooseFromList`, `searchUnavailable`.
- Chaque suggestion est un `Semantics(button)` « Pedri, milieu, Espagne ».

## 🔗 Dépendances

À réaliser après : `MOB-D-10` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.3
- CDC Backend §3.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
