> **MOB-D-25** · Sécurité · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Le jeu est une compétition quotidienne identique pour tous : la solution ne doit jamais transiter avant la fin de partie ni être stockée en clair ou loguée.

## ✅ Objectif

Garantir que l'app mobile ne reçoit, ne stocke ni ne journalise le joueur mystère avant la victoire ou la défaite.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `D-03` — Début de partie
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__phone_light.webp?raw=true' width='230' alt='D-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__phone_dark.webp?raw=true' width='230' alt='D-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__tablet_light.webp?raw=true' width='330' alt='D-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-03_debut-de-partie__tablet_dark.webp?raw=true' width='330' alt='D-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Guess the Player » · « Défi n°214 · 0/6 essais » · « Qui est le joueur mystère ? » · « Chaque essai compare tes choix aux indices. » · « Joueur » · « Nation » · « Poste » · « Âge » · « N° » · « Club » · « Correct » · « Proche » · « Faux » · « ▲▼ plus / moins » · « Nom du joueur… »

**Composants repérés** : `btn`, `card`, `input`

</details>

**Issues liées sur ce même écran :** [API-JEUX-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-01%5D%22) · [API-JEUX-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-03%5D%22) · [API-JEUX-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-04%5D%22) · [API-JEUX-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-05%5D%22) · [API-JEUX-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-07%5D%22) · [API-JEUX-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-08%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [API-JEUX-36](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-36%5D%22) · [API-JEUX-37](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-37%5D%22) · [MOB-D-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-01%5D%22) · [MOB-D-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-02%5D%22) · [MOB-D-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-03%5D%22) · [MOB-D-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-05%5D%22) · [MOB-D-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-06%5D%22) · [MOB-D-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-10%5D%22) · [MOB-D-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-12%5D%22) · [MOB-D-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-21%5D%22) · [MOB-D-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-26%5D%22) · [MOB-D-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-28%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

#### `D-07` — Victoire
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-07_victoire__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-07_victoire__phone_light.webp?raw=true' width='230' alt='D-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-07_victoire__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-07_victoire__phone_dark.webp?raw=true' width='230' alt='D-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-07_victoire__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-07_victoire__tablet_light.webp?raw=true' width='330' alt='D-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-07_victoire__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-07_victoire__tablet_dark.webp?raw=true' width='330' alt='D-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Résultat » · « Défi n°214 » · « Bravo ! » · « Frenkie de Jong » · « Milieu · Pays-Bas · N°21 · Trouvé en » · « 3 essais » · « Série » · « 81% » · « Réussite » · « +60 » · « Points » · « Ta grille » · « Partager mon résultat » · « Quiz du jour » · « Statistiques »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-01%5D%22) · [API-JEUX-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-07%5D%22) · [API-JEUX-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-09%5D%22) · [API-JEUX-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-19%5D%22) · [API-JEUX-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-20%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-D-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-02%5D%22) · [MOB-D-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-05%5D%22) · [MOB-D-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-06%5D%22) · [MOB-D-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-15%5D%22) · [MOB-D-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-16%5D%22) · [MOB-D-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-18%5D%22) · [MOB-D-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-26%5D%22) · [MOB-D-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-28%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

#### `D-08` — Défaite — révélation
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-08_defaite-revelation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-08_defaite-revelation__phone_light.webp?raw=true' width='230' alt='D-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-08_defaite-revelation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-08_defaite-revelation__phone_dark.webp?raw=true' width='230' alt='D-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-08_defaite-revelation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-08_defaite-revelation__tablet_light.webp?raw=true' width='330' alt='D-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-08_defaite-revelation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-08_defaite-revelation__tablet_dark.webp?raw=true' width='330' alt='D-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Résultat » · « Défi n°214 » · « Pas cette fois » · « C’était Frenkie de Jong » · « Milieu · Pays-Bas · N°21 · ex-Ajax » · « Ta série de 12 jours est conservée » · « Jouer suffit à la maintenir. » · « Partager mon résultat » · « Voir la fiche du joueur »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-01%5D%22) · [API-JEUX-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-07%5D%22) · [API-JEUX-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-09%5D%22) · [API-JEUX-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-19%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-D-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-06%5D%22) · [MOB-D-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-15%5D%22) · [MOB-D-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-17%5D%22) · [MOB-D-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-28%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

## 📐 Règles de gestion

- Le payload de `/today` et `/attempt` ne contient `solution` que si `status ∈ {won, lost}` (contrat à vérifier avec l'API, CDC Backend §3.3).
- Le cache Drift et les logs (Sentry/Crashlytics, journaux de debug) excluent les champs `solution`, `playerId` du joueur mystère avant fin.
- Le partage (texte et image) n'inclut jamais le nom du joueur, même dans les métadonnées d'image.

## 🛠️ Tâches

- [ ] Ajouter un test de contrat qui échoue si `solution` est présent dans une réponse `in_progress`.
- [ ] Configurer l'intercepteur de logs (core/network/interceptors.dart) pour masquer `solution` et `Idempotency-Key`.
- [ ] Marquer `solution` `@JsonKey(includeToJson:false)` dans les modèles stockés avant fin.
- [ ] Vérifier les EXIF/métadonnées du PNG de partage (aucune donnée perso).
- [ ] Ajouter une règle lint personnalisée (ou test grep) interdisant `print`/`debugPrint` du payload.
- [ ] Désactiver la capture d'écran du plateau n'est PAS requis ; documenter le choix.
- [ ] Documenter dans `docs/SECURITY.md` la section « Jeux ».
- [ ] Tests unitaires associés.

## ✔️ Critères d'acceptation

- [ ] Étant donné une partie en cours, quand le cache est inspecté, alors aucune solution n'y figure.
- [ ] Étant donné un log d'erreur réseau, quand il est produit, alors `solution` est masqué.
- [ ] Étant donné le PNG partagé, quand ses métadonnées sont lues, alors elles ne contiennent aucun nom de joueur.
- [ ] Étant donné une réponse `in_progress` contenant `solution`, quand le test de contrat s'exécute, alors il échoue.

## 🧪 Tests à écrire

- [ ] Test de contrat : pas de `solution` en cours de partie.
- [ ] Test unitaire : masquage des logs.
- [ ] Test : métadonnées PNG.
- [ ] Test : modèle sérialisé sans solution.

## 🔗 Dépendances

À réaliser après : `MOB-D-02` · `MOB-D-18` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §3.3
- CDC Global §10.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
