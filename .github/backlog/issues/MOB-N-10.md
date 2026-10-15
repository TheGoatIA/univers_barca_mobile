> **MOB-N-10** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

N-03 : après « Combien de buts Lewandowski a marqué cette saison ? », la réponse mentionne les données « au 14 octobre », affiche des puces « Joueurs » et « Matchs 2026-27 », puis, à la question suivante, une suggestion « Comparer avec un autre joueur ».

## ✅ Objectif

Montrer d'où viennent les chiffres (RAG) pour renforcer la confiance, et proposer une suite naturelle.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `N-03` — Conversation — réponse sourcée
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-03_conversation-reponse-sourcee__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-03_conversation-reponse-sourcee__phone_light.webp?raw=true' width='230' alt='N-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-03_conversation-reponse-sourcee__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-03_conversation-reponse-sourcee__phone_dark.webp?raw=true' width='230' alt='N-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-03_conversation-reponse-sourcee__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-03_conversation-reponse-sourcee__tablet_light.webp?raw=true' width='330' alt='N-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-03_conversation-reponse-sourcee__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-03_conversation-reponse-sourcee__tablet_dark.webp?raw=true' width='330' alt='N-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Combien de buts Lewandowski a marqué cette saison ? » · « Robert Lewandowski a inscrit » · « 11 buts » · « en » · « 14 matchs » · « toutes compétitions confondues cette saison (données au 14 octobre). » · « Joueurs » · « Matchs 2026-27 » · « Et combien de passes décisives ? » · « Il compte » · « 3 passes décisives » · « . Veux-tu que je le compare à un autre attaquant ? » · « Comparer avec un autre joueur » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [MOB-N-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-01%5D%22) · [MOB-N-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-02%5D%22) · [MOB-N-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-04%5D%22) · [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-09%5D%22) · [MOB-N-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-23%5D%22) · [MOB-N-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-24%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-29%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

## 📐 Règles de gestion

- Les puces viennent de `metadata.sources` (kind players|matches|history + label) ; sans source : aucune puce
- Une réponse factuelle sans source reste affichée mais n'affiche pas la puce de fraîcheur
- La date « données au 14 octobre » est une partie du texte généré, non reconstruite par l'app
- Suggestion de suite = `suggestions[0]` de la réponse ; tap -> envoie le texte comme nouveau message
- Tap sur une puce « Joueurs » : ouvre la liste Joueurs ; « Matchs » : le calendrier/historique (navigation simple, optionnelle)

## 🔄 Comportement et états

- Les puces apparaissent après la fin du streaming (événement `sources`)
- Max 3 puces visibles, au-delà « +N »

## 🛠️ Tâches

- [ ] Créer `widgets/source_chips.dart` (Wrap de `Chip` compacts avec icône par kind)
- [ ] Créer `widgets/follow_up_suggestion.dart`
- [ ] Mapper `sources`/`suggestions` du modèle vers le rendu
- [ ] Brancher la navigation des puces (go_router : `/players`, `/history`)
- [ ] Clés ARB `assistantSourcePlayers`, `assistantSourceMatches`, `assistantSourceHistory`
- [ ] Tests widget
- [ ] Golden N-03
- [ ] Analytics `assistant_source_tapped`

## ✔️ Critères d'acceptation

- [ ] Étant donné une réponse avec sources [Joueurs, Matchs 2026-27] alors deux puces sont visibles sous la bulle
- [ ] Étant donné aucune source alors aucune puce n'est rendue
- [ ] Étant donné le tap sur « Comparer avec un autre joueur » alors ce texte est envoyé comme message
- [ ] Étant donné 5 sources alors 3 puces et « +2 » sont affichés

## 🧪 Tests à écrire

- [ ] source_chips_test : kinds
- [ ] source_chips_test : +N
- [ ] follow_up_test : envoi
- [ ] golden : sourced_answer_light / dark

## ♿ Accessibilité et i18n

- Puces avec label « Source : Joueurs »

## 🔗 Dépendances

À réaliser après : `MOB-N-09` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.2, §8.5
- CDC Backend §4.6, §11.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
