> **MOB-N-15** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

N-09 : « Donne-moi la recette du thiéboudienne. » -> « Je suis spécialisé dans l'univers du FC Barcelone et du football. Pour la cuisine, je ne suis pas le meilleur coéquipier 😉 En revanche, je peux te parler du Barça ! » + suggestions « Un quiz sur le club ? », « Raconter une anecdote du jour ». Garde-fou n°1 du prompt système (périmètre strict, CDC Global §8.5).

## ✅ Objectif

Afficher une réponse de recadrage cohérente avec le ton de l'assistant et relancer vers du contenu utile.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `N-09` — Question hors périmètre
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-09_question-hors-perimetre__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-09_question-hors-perimetre__phone_light.webp?raw=true' width='230' alt='N-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-09_question-hors-perimetre__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-09_question-hors-perimetre__phone_dark.webp?raw=true' width='230' alt='N-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-09_question-hors-perimetre__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-09_question-hors-perimetre__tablet_light.webp?raw=true' width='330' alt='N-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-09_question-hors-perimetre__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-09_question-hors-perimetre__tablet_dark.webp?raw=true' width='330' alt='N-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Donne-moi la recette du thiéboudienne. » · « Je suis spécialisé dans l’univers du FC Barcelone et du football. Pour la cuisine, je ne suis pas le meilleur coéquipier 😉 En revanche, je peux te parler du Barça ! » · « Un quiz sur le club ? » · « Raconter une anecdote du jour » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-25%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-30%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

## 📐 Règles de gestion

- Déclenché par `status: out_of_scope` ; le texte est fourni par le serveur (localisé) : l'app ne fabrique pas la phrase
- Les suggestions (chips) viennent de `suggestions` ; repli ARB si vide : quiz du jour et anecdote du jour
- La réponse hors périmètre compte dans le quota (appel effectué) mais n'est pas signalée comme erreur
- Style neutre (pas d'icône d'erreur, pas de couleur d'alerte)

## 🔄 Comportement et états

- Tap sur « Un quiz sur le club ? » -> action open_daily_quiz
- « Raconter une anecdote du jour » -> envoi du texte

## 🛠️ Tâches

- [ ] Créer le cas `MessageStatus.outOfScope` dans `assistant_bubble.dart` (variante `scope_notice`)
- [ ] Brancher les suggestions sur `SuggestionTapped`/routeur d'actions
- [ ] Ajouter les fixtures `out_of_scope_fr/en/es.json`
- [ ] Clés ARB de repli `assistantFallbackQuiz`, `assistantFallbackAnecdote`
- [ ] Test widget
- [ ] Golden N-09
- [ ] Contrat de test garde-fous (voir issue tests-contrats-garde-fous)
- [ ] Analytics `assistant_out_of_scope` (sans texte)

## ✔️ Critères d'acceptation

- [ ] Étant donné status=out_of_scope quand la réponse arrive alors le texte de recadrage et 2 suggestions s'affichent
- [ ] Étant donné aucune suggestion fournie alors les 2 suggestions de repli apparaissent
- [ ] Étant donné le tap sur « Un quiz sur le club ? » alors le quiz du jour s'ouvre
- [ ] Étant donné ce cas alors aucun style d'erreur n'est appliqué

## 🧪 Tests à écrire

- [ ] out_of_scope_bubble_test
- [ ] suggestions_fallback_test
- [ ] golden : out_of_scope_light / dark

## 🔗 Dépendances

À réaliser après : `MOB-N-09` · `MOB-N-12` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.2, §8.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
