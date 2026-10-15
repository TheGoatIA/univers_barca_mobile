> **MOB-N-17** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

N-11 : « Quel était le prix du billet pour le Clásico de 1999 ? » -> « Je n'ai pas cette information dans ma base de données et je préfère ne pas inventer. Je peux en revanche te donner le score et les buteurs de ce match. » + bouton « Voir le match dans l'historique ». Garde-fou n°3 : transparence sur l'incertitude.

## ✅ Objectif

Montrer que l'assistant n'invente pas et rediriger vers la donnée disponible.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `N-11` — Information introuvable
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-11_information-introuvable__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-11_information-introuvable__phone_light.webp?raw=true' width='230' alt='N-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-11_information-introuvable__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-11_information-introuvable__phone_dark.webp?raw=true' width='230' alt='N-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-11_information-introuvable__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-11_information-introuvable__tablet_light.webp?raw=true' width='330' alt='N-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-11_information-introuvable__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-11_information-introuvable__tablet_dark.webp?raw=true' width='330' alt='N-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Quel était le prix du billet pour le Clásico de 1999 ? » · « Je n’ai pas cette information dans ma base de données et je préfère ne pas inventer. Je peux en revanche te donner le » · « score » · « et les » · « buteurs » · « de ce match. » · « Voir le match dans l’historique » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-25%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

## 📐 Règles de gestion

- Déclenché par `status: no_data` ; action `open_historic_match{matchId}` fournie par le serveur
- « score » et « buteurs » en gras (entités du texte)
- Aucune puce de source (rien n'a été trouvé) ; la mention « Barça AI peut se tromper » reste visible
- Le bouton ouvre la fiche du match historique (groupe Historique)

## 🔄 Comportement et états

- Si l'action est absente : pas de bouton, le texte seul
- Match supprimé du référentiel : écran 404

## 🛠️ Tâches

- [ ] Gérer `MessageStatus.noData` dans `assistant_bubble.dart`
- [ ] Brancher `open_historic_match` dans le routeur d'actions
- [ ] Fixtures `no_data_*.json`
- [ ] Clés ARB `assistantOpenHistoricMatch`
- [ ] Test widget
- [ ] Golden N-11
- [ ] Analytics `assistant_no_data`
- [ ] Documenter le contrat dans `docs/assistant-contract.md`

## ✔️ Critères d'acceptation

- [ ] Étant donné status=no_data avec action open_historic_match alors « Voir le match dans l'historique » est visible
- [ ] Étant donné ce cas alors aucune puce de source n'apparaît
- [ ] Étant donné le tap alors la fiche du match s'ouvre
- [ ] Étant donné l'action absente alors seul le texte est affiché

## 🧪 Tests à écrire

- [ ] no_data_bubble_test
- [ ] action_router_test : open_historic_match
- [ ] golden : no_data_light / dark

## 🔗 Dépendances

À réaliser après : `MOB-N-12` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §8.5
- CDC Backend §11.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
