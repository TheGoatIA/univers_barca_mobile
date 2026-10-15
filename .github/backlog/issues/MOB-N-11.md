> **MOB-N-11** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

N-04 : la réponse « Le 28 mai 2011, le Barça de Guardiola domine Manchester United (3-1) à Wembley… » s'affiche progressivement avec un curseur bleu clignotant ; le champ affiche « Barça AI écrit… » et un bouton pause.

## ✅ Objectif

Rendre le streaming fluide et lisible sans jank, avec arrêt propre.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `N-04` — Réponse en cours (streaming)
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-04_reponse-en-cours-streaming__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-04_reponse-en-cours-streaming__phone_light.webp?raw=true' width='230' alt='N-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-04_reponse-en-cours-streaming__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-04_reponse-en-cours-streaming__phone_dark.webp?raw=true' width='230' alt='N-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-04_reponse-en-cours-streaming__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-04_reponse-en-cours-streaming__tablet_light.webp?raw=true' width='330' alt='N-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-04_reponse-en-cours-streaming__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-04_reponse-en-cours-streaming__tablet_dark.webp?raw=true' width='330' alt='N-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Raconte-moi la finale de Wembley 2011. » · « Le 28 mai 2011, le Barça de Guardiola domine Manchester United (3-1) à Wembley. Pedro ouvre le score, Rooney égalise, puis Messi et Villa » · « Barça AI écrit… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [MOB-N-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-03%5D%22) · [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-08%5D%22) · [MOB-N-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-09%5D%22) · [MOB-N-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-23%5D%22) · [MOB-N-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-26%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-29%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

## 📐 Règles de gestion

- Les `delta` reçus sont tamponnés et rendus à une cadence max de 30 mises à jour/s (frame-coalescing) pour éviter les reconstructions excessives
- Curseur clignotant 500 ms on/off, remplacé par rien à la fin
- Auto-scroll tant que l'utilisateur n'a pas remonté
- Arrêt : le curseur disparaît, la bulle est marquée « interrompue » (icône discrète)
- Si le serveur ne streame pas (repli JSON) : animation de révélation simulée mot à mot, 40 ms/mot, annulable par tap

## 🔄 Comportement et états

- Avant le premier token : indicateur à 3 points
- Erreur au milieu du flux : texte partiel conservé + « Échec de l'envoi · Réessayer »
- Reduce motion : le texte complet apparaît sans animation de curseur

## 🛠️ Tâches

- [ ] Créer `widgets/streaming_text.dart` consommant `ChatStreaming(partialText)` avec `ValueListenableBuilder`
- [ ] Implémenter le tampon de tokens (`Timer.periodic(33ms)`)
- [ ] Créer `blinking_cursor.dart` (`AnimationController`)
- [ ] Gérer l'état `interrupted` dans `chat_message.dart`
- [ ] Implémenter la révélation simulée pour le repli
- [ ] Mesurer le coût de reconstruction (DevTools) et ajouter `RepaintBoundary`
- [ ] Clés ARB `assistantInterrupted`
- [ ] Tests widget + golden

## ✔️ Critères d'acceptation

- [ ] Étant donné un flux de tokens quand ils arrivent alors le texte grandit progressivement avec le curseur visible
- [ ] Étant donné le tap sur pause alors le flux s'arrête et le texte partiel reste affiché
- [ ] Étant donné reduce motion alors aucun clignotement n'est joué
- [ ] Étant donné une coupure réseau à mi-réponse alors le texte partiel est conservé avec Réessayer

## 🧪 Tests à écrire

- [ ] streaming_text_test : coalescing
- [ ] streaming_text_test : arrêt
- [ ] streaming_text_test : reduce motion
- [ ] golden : streaming_light / streaming_dark
- [ ] perf : rebuilds ≤ 30/s

## ♿ Accessibilité et i18n

- Pas d'annonce à chaque token : annonce unique à la fin (liveRegion polie)

## 🔗 Dépendances

À réaliser après : `MOB-N-09` · `MOB-N-03` · `MOB-N-08` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.10

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
