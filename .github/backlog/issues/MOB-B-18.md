> **MOB-B-18** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Grille de 9 joueurs (Yamal, Pedri, Raphinha, Lewandowski, Gavi, Cubarsí, De Jong, Messi, Xavi) avec avatars illustrés ; le joueur choisi sert à personnaliser accueil et notifications.

## ✅ Objectif

Implémenter `FavoritePlayerPage` conforme à B-13 et enregistrer le favori.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-13` — Personnalisation — joueur préféré
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-13_personnalisation-joueur-prefere__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-13_personnalisation-joueur-prefere__phone_light.webp?raw=true' width='230' alt='B-13 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-13_personnalisation-joueur-prefere__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-13_personnalisation-joueur-prefere__phone_dark.webp?raw=true' width='230' alt='B-13 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-13_personnalisation-joueur-prefere__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-13_personnalisation-joueur-prefere__tablet_light.webp?raw=true' width='330' alt='B-13 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-13_personnalisation-joueur-prefere__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-13_personnalisation-joueur-prefere__tablet_dark.webp?raw=true' width='330' alt='B-13 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « 2/3 » · « Ton joueur préféré ? » · « Pour personnaliser ton accueil et tes notifications. » · « Yamal » · « Pedri » · « Raphinha » · « Lewandowski » · « Gavi » · « Cubarsí » · « De Jong » · « Messi » · « Xavi » · « Continuer » · « Je n’ai pas de favori »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-29%5D%22) · [MOB-B-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-01%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Titre « TON JOUEUR PRÉFÉRÉ ? », sous-titre « Pour personnaliser ton accueil et tes notifications. », grille 3 colonnes de cartes (avatar rond, prénom/nom), carte active bordée bordeaux avec coche, bouton « Continuer », lien « Je n'ai pas de favori ».
- Sélection unique ; « Continuer » désactivé tant qu'aucun joueur n'est choisi ; « Je n'ai pas de favori » → B-14 sans sélection.
- Les 9 joueurs viennent de `GET /players` (référentiel) filtrés sur une liste éditoriale d'identifiants (actuels et légendes) avec repli sur une liste embarquée hors-ligne ; l'enregistrement utilise `favoritePlayerId` (ObjectId).
- Le champ `favoritePlayerId` n'est pas encore accepté par `PATCH /users/me` (`updateMeSchema`) : voir écarts, issue API à créer.

## 🔄 Comportement et états

- Chargement : squelette de 9 cartes (shimmer) ; erreur : `BarcaErrorState` + liste embarquée proposée.
- Avatars : `cached_network_image` avec placeholder rond ; illustrations de secours locales.
- Retour conserve la sélection.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `GET` | `/api/v1/players` | Référentiel joueurs (existant). | ?limit=50 | {success:true,data:{items:[{id,name,photoUrl}]}} |

## 🛠️ Tâches

- [ ] Créer `lib/features/auth/presentation/pages/favorite_player_page.dart` et `widgets/player_choice_tile.dart`.
- [ ] Réutiliser la feature `players` : `GetPlayersUseCase` existant avec filtre de liste.
- [ ] Créer `FavoritePlayerCubit` (chargement, sélection).
- [ ] Ajouter `lib/core/data/onboarding_players.dart` (repli embarqué : noms et assets).
- [ ] `UpdateProfileUseCase(favoritePlayerId)` à la fin de l'étape (ou à B-14).
- [ ] Assets avatars dans `assets/avatars/`.
- [ ] Clés ARB `favoritePlayerTitle`, `favoritePlayerSubtitle`, `noFavorite`.
- [ ] Golden clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné B-13 quand les joueurs sont chargés alors 9 cartes s'affichent en grille 3×3.
- [ ] Étant donné Yamal touché quand on le sélectionne alors seule sa carte est active et « Continuer » s'active.
- [ ] Étant donné « Je n'ai pas de favori » quand on l'appuie alors B-14 s'affiche sans favori.
- [ ] Étant donné hors-ligne quand la page s'ouvre alors la liste embarquée est utilisée.

## 🧪 Tests à écrire

- [ ] Test cubit : sélection unique.
- [ ] Widget test : bouton désactivé sans sélection.
- [ ] Test : repli embarqué hors-ligne.
- [ ] Golden `favorite_player`.
- [ ] Test : payload `favoritePlayerId`.

## ♿ Accessibilité et i18n

- Cartes `Semantics(button, selected)` ; noms lus en entier ; contraste de la bordure active.

## 🔗 Dépendances

À réaliser après : `MOB-B-01` · `MOB-B-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.1
- CDC Backend §3.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
