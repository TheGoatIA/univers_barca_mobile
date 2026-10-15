> **MOB-H-25** · Fonctionnel · Priorité **P1** · Taille **L** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

La feuille 'LIGUE ENTRE AMIS' propose 'Créer une ligue — Génère un code à partager' et 'Rejoindre avec un code — Saisis le code d'un ami' (champ préfixé 'BARCA-'). Le CDC prévoit un classement entre amis via code d'invitation (comme /quiz/leaderboard).

## ✅ Objectif

Implémenter côté mobile la création, le partage et la saisie de code de ligue.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-12` — Classement entre amis
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-12_classement-entre-amis__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-12_classement-entre-amis__phone_light.webp?raw=true' width='230' alt='H-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-12_classement-entre-amis__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-12_classement-entre-amis__phone_dark.webp?raw=true' width='230' alt='H-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-12_classement-entre-amis__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-12_classement-entre-amis__tablet_light.webp?raw=true' width='330' alt='H-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-12_classement-entre-amis__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-12_classement-entre-amis__tablet_dark.webp?raw=true' width='330' alt='H-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Aïcha Ngono » · « 812 pts · J11 : +78 » · « Mamadou Diallo » · « 790 pts · J11 : +64 » · « Boris T. » · « Toi » · « 774 pts · J11 : +70 » · « Lucía Fernández » · « 751 pts · J11 : +55 » · « Kevin Mballa » · « 702 pts · J11 : +61 » · « Inviter des amis » · « Créer une ligue »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-FANT-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-14%5D%22) · [API-FANT-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-15%5D%22) · [API-FANT-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-16%5D%22) · [API-FANT-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-17%5D%22) · [API-FANT-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-18%5D%22) · [API-FANT-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-22%5D%22) · [API-FANT-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-24%5D%22) · [API-FANT-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-33%5D%22) · [MOB-H-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-01%5D%22) · [MOB-H-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-02%5D%22) · [MOB-H-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-03%5D%22) · [MOB-H-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-04%5D%22) · [MOB-H-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-07%5D%22) · [MOB-H-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-22%5D%22) · [MOB-H-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-32%5D%22) · [MOB-H-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-34%5D%22)

#### `H-15` — Créer ou rejoindre une ligue
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-15_creer-ou-rejoindre-une-ligue__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-15_creer-ou-rejoindre-une-ligue__phone_light.webp?raw=true' width='230' alt='H-15 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-15_creer-ou-rejoindre-une-ligue__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-15_creer-ou-rejoindre-une-ligue__phone_dark.webp?raw=true' width='230' alt='H-15 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-15_creer-ou-rejoindre-une-ligue__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-15_creer-ou-rejoindre-une-ligue__tablet_light.webp?raw=true' width='330' alt='H-15 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-15_creer-ou-rejoindre-une-ligue__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-15_creer-ou-rejoindre-une-ligue__tablet_dark.webp?raw=true' width='330' alt='H-15 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Aïcha Ngono » · « 812 pts · J11 : +78 » · « Mamadou Diallo » · « 790 pts · J11 : +64 » · « Boris T. » · « Toi » · « 774 pts · J11 : +70 » · « Lucía Fernández » · « 751 pts · J11 : +55 » · « Kevin Mballa » · « 702 pts · J11 : +61 » · « Ligue entre amis » · « Créer une ligue » · « Génère un code à partager » · « Rejoindre avec un code » · « Saisis le code d'un ami » · « Code » · « BARCA- »

**Composants repérés** : `avatar`, `card`, `input`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-FANT-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-15%5D%22) · [API-FANT-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-16%5D%22) · [API-FANT-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-17%5D%22) · [API-FANT-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-18%5D%22) · [MOB-H-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-26%5D%22)

## 📐 Règles de gestion

- Code au format BARCA-XXXXXX (6 caractères alphanumériques majuscules) ; saisie normalisée en majuscules, préfixe fixe.
- Création : l'API retourne le code ; partage via la feuille de partage système avec message préformaté.
- Rejoindre : code inconnu -> erreur 'Code introuvable' ; déjà membre -> message d'information ; ligue pleine -> erreur dédiée.
- Écart CDC : les endpoints de ligue ne sont pas listés dans le CDC Backend §3.5 ; ils sont à confirmer avec l'API (contrat proposé ci-dessous).

## 🔄 Comportement et états

- Succès de création : code affiché en grand avec bouton Copier/Partager ; succès de jointure : fermeture et rafraîchissement du classement amis.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `POST` | `/api/v1/fantasy/leagues` | Crée une ligue entre amis (proposé) | {name?} | {success:true,data:{code:'BARCA-7K2M9Q',name,memberCount:1}} |
| `POST` | `/api/v1/fantasy/leagues/join` | Rejoint par code (proposé) | {code:'BARCA-7K2M9Q'} | {success:true,data:{code,memberCount}} \| 404 \| 409 |

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/data/datasources/fantasy_league_api.dart (createLeague, joinLeague).
- [ ] Entité FantasyLeague(code, name, memberCount).
- [ ] Use cases CreateLeague, JoinLeague.
- [ ] Validateur LeagueCodeValidator (regex ^BARCA-[A-Z0-9]{6}$).
- [ ] Intégrer share_plus.
- [ ] Copie presse-papiers avec toast.
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné un code valide quand je rejoins alors le classement amis inclut la ligue.
- [ ] Étant donné 'BARCA-' incomplet alors le bouton Rejoindre est désactivé.
- [ ] Étant donné un code inconnu alors 'Code introuvable' sous le champ.
- [ ] Étant donné une création réussie alors le code s'affiche et peut être partagé.

## 🧪 Tests à écrire

- [ ] regex code
- [ ] normalisation majuscules
- [ ] erreur 404 code
- [ ] déjà membre
- [ ] partage système appelé

## ♿ Accessibilité et i18n

- Champ avec label 'Code', erreurs annoncées

## 🔗 Dépendances

À réaliser après : `MOB-H-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.7
- CDC Backend §3.4 quiz leaderboard

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
