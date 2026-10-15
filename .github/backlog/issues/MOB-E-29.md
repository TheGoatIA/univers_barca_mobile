> **MOB-E-29** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

E-16 « Rejoindre une ligue » : champ « BARCA- », aperçu de la ligue (« Les Culés du bureau — Créée par Aïcha · 6 membres ») et « Rejoindre la ligue ».

## ✅ Objectif

Implémenter la saisie du code avec aperçu avant adhésion et gestion du lien profond.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-16` — Rejoindre avec un code
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-16_rejoindre-avec-un-code__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-16_rejoindre-avec-un-code__phone_light.webp?raw=true' width='230' alt='E-16 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-16_rejoindre-avec-un-code__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-16_rejoindre-avec-un-code__phone_dark.webp?raw=true' width='230' alt='E-16 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-16_rejoindre-avec-un-code__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-16_rejoindre-avec-un-code__tablet_light.webp?raw=true' width='330' alt='E-16 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-16_rejoindre-avec-un-code__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-16_rejoindre-avec-un-code__tablet_dark.webp?raw=true' width='330' alt='E-16 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Rejoindre une ligue » · « Saisis le code reçu d’un ami ou ouvre son lien d’invitation. » · « Code d’invitation » · « BARCA- » · « Les Culés du bureau » · « Créée par Aïcha · 6 membres » · « Rejoindre la ligue »

**Composants repérés** : `avatar`, `btn`, `card`, `input`

</details>

**Issues liées sur ce même écran :** [API-JEUX-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-23%5D%22) · [API-JEUX-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-24%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Préfixe `BARCA-` fixe ; saisie des 4 caractères restants en majuscules ; validation à 4 caractères.
- Aperçu (`GET /quiz/leagues/:code`) avant de rejoindre ; l'adhésion est explicite.
- Erreurs : code inconnu (« Ce code n'existe pas »), ligue pleine, déjà membre.

## 🛠️ Tâches

- [ ] Créer `quiz_join_league_page.dart` et `JoinLeagueCubit` (`code`, `preview`, `status`).
- [ ] Créer `CodeField` (4 cases ou champ unique avec masque).
- [ ] Debounce 400 ms puis `PreviewLeague(code)`.
- [ ] Pré-remplir depuis le deep link `?code=`.
- [ ] Appeler `JoinLeague(code)` puis naviguer vers E-14.
- [ ] Gérer états erreur/chargement.
- [ ] Golden E-16.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné le code `4X7Q`, quand l'aperçu est chargé, alors le nom et le nombre de membres sont affichés.
- [ ] Étant donné un code inexistant, quand l'aperçu échoue, alors « Ce code n'existe pas » s'affiche.
- [ ] Étant donné un lien d'invitation, quand l'app s'ouvre, alors le code est pré-rempli.
- [ ] Étant donné « Rejoindre la ligue », quand il est touché, alors E-14 s'affiche.

## 🧪 Tests à écrire

- [ ] Cubit test : aperçu valide.
- [ ] Cubit test : code inconnu.
- [ ] Widget test : pré-remplissage.
- [ ] Widget test : navigation vers E-14.
- [ ] Golden test : E-16.

## ♿ Accessibilité et i18n

- Clés ARB : `joinLeagueTitle`, `joinLeagueHint`, `codeLabel`, `leagueCreatedBy` (placeholders), `joinLeagueAction`, `codeNotFound`, `leagueFull`.

## 🔗 Dépendances

À réaliser après : `MOB-E-27` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.4
- CDC Flutter §6.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
