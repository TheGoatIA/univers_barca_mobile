> **MOB-N-13** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

N-06 : « Montre-moi Pedri » -> « Voici la fiche de Pedri : » + carte « Pedri · N°8 / Milieu · Espagne · 23 ans » avec trois statistiques (160 Matchs, Buts, Passes), bouton « Ouvrir la fiche complète » et puce « Joueurs ».

## ✅ Objectif

Afficher un aperçu riche d'un joueur issu du référentiel interne.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `N-06` — Réponse avec carte joueur
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-06_reponse-avec-carte-joueur__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-06_reponse-avec-carte-joueur__phone_light.webp?raw=true' width='230' alt='N-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-06_reponse-avec-carte-joueur__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-06_reponse-avec-carte-joueur__phone_dark.webp?raw=true' width='230' alt='N-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-06_reponse-avec-carte-joueur__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-06_reponse-avec-carte-joueur__tablet_light.webp?raw=true' width='330' alt='N-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-06_reponse-avec-carte-joueur__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-06_reponse-avec-carte-joueur__tablet_dark.webp?raw=true' width='330' alt='N-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Montre-moi Pedri » · « Voici la fiche de Pedri : » · « Pedri · N°8 » · « Milieu · Espagne · 23 ans » · « Matchs » · « Buts » · « Passes » · « Ouvrir la fiche complète » · « Joueurs » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [MOB-N-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-01%5D%22) · [MOB-N-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-09%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

## 📐 Règles de gestion

- Données du bloc `player_card` (source unique : API Players, pas du texte généré)
- Photo/avatar : `cached_network_image` avec repli initiales ; pas de photo de presse protégée (CDC Global §10.1)
- Âge calculé côté serveur ; numéros et postes localisés (Milieu/Midfielder/Centrocampista)
- Bouton « Ouvrir la fiche complète » -> `/players/:id` (feature players existante)
- Cartes multiples (≤ 3) dans un carrousel horizontal pour une comparaison

## 🔄 Comportement et états

- Chargement de l'image : squelette ; échec : initiales
- Stat manquante : « – »
- Joueur retiré du référentiel (404 à l'ouverture) : écran 404 standard

## 🛠️ Tâches

- [ ] Créer `widgets/player_card_block.dart` utilisant `Player` de `features/players` quand possible
- [ ] Mapper `PlayerCardBlock` -> widget
- [ ] Créer `StatTile` (valeur + libellé)
- [ ] Carrousel `PageView`/`ListView` horizontal
- [ ] Navigation vers la fiche
- [ ] Clés ARB `assistantOpenFullProfile`, `statMatches`, `statGoals`, `statAssists`
- [ ] Tests widget
- [ ] Golden clair/sombre

## ✔️ Critères d'acceptation

- [ ] Étant donné un bloc player_card Pedri quand il est rendu alors « Pedri · N°8 » et « Milieu · Espagne · 23 ans » sont visibles
- [ ] Étant donné une stat nulle alors « – » est affiché
- [ ] Étant donné le tap sur « Ouvrir la fiche complète » alors la fiche du joueur s'ouvre
- [ ] Étant donné 3 blocs alors ils sont scrollables horizontalement

## 🧪 Tests à écrire

- [ ] player_card_block_test : rendu
- [ ] player_card_block_test : stat nulle
- [ ] player_card_block_test : navigation
- [ ] golden : player_card_light / dark

## ♿ Accessibilité et i18n

- Carte : `Semantics` « Fiche de Pedri, numéro 8, milieu »; stats lues « 160 matchs »

## 🔗 Dépendances

À réaliser après : `MOB-N-09` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.10
- CDC Global §2.2, §10.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
