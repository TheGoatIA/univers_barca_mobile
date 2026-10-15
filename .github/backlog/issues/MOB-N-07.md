> **MOB-N-07** · Écran · Priorité **P0** · Taille **L** · Phase 1 — MVP

## 🎯 Contexte

N-02 : sheet plein écran avec poignée, avatar Barça AI, « Barça AI — En ligne · FR / EN / ES », icônes historique (horloge) et fermer (X), message d'accueil personnalisé « Salut Boris ! Je suis Barça AI, ton compagnon culé… », 5 suggestions, champ « Pose ta question sur le Barça… » et mention « Barça AI peut se tromper. Vérifie les infos importantes. ».

## ✅ Objectif

Implémenter le conteneur du chat et l'écran d'accueil d'une nouvelle conversation.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `N-02` — Chat — nouvelle conversation
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-02_chat-nouvelle-conversation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-02_chat-nouvelle-conversation__phone_light.webp?raw=true' width='230' alt='N-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-02_chat-nouvelle-conversation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-02_chat-nouvelle-conversation__phone_dark.webp?raw=true' width='230' alt='N-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-02_chat-nouvelle-conversation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-02_chat-nouvelle-conversation__tablet_light.webp?raw=true' width='330' alt='N-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-02_chat-nouvelle-conversation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-02_chat-nouvelle-conversation__tablet_dark.webp?raw=true' width='330' alt='N-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Salut Boris ! Je suis » · « , ton compagnon culé. Pose-moi une question sur un joueur, un match ou l’histoire du club. » · « Suggestions » · « Lancer le quiz du jour » · « Parle-moi de Lamine Yamal » · « Messi ou Xavi ? » · « Quand joue le Barça ? » · « Crée-moi un wallpaper » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-IA-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-01%5D%22) · [API-IA-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-08%5D%22) · [API-IA-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-16%5D%22) · [API-IA-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-19%5D%22) · [API-IA-25](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-25%5D%22) · [API-IA-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-32%5D%22) · [API-IA-34](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-34%5D%22) · [MOB-N-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-02%5D%22) · [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-08%5D%22) · [MOB-N-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-26%5D%22) · [MOB-N-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-27%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-30%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

## 📐 Règles de gestion

- Le prénom est le pseudo `displayName` du profil ; sans pseudo : « Salut ! »
- Suggestions (chips) : « Lancer le quiz du jour », « Parle-moi de Lamine Yamal », « Messi ou Xavi ? », « Quand joue le Barça ? », « Crée-moi un wallpaper » ; le tap envoie le texte comme message (ou déclenche l'action pour quiz/wallpaper selon le routeur d'actions)
- Statut « En ligne · FR / EN / ES » devient « Hors-ligne » sans connexion (N-13)
- Le sheet s'ouvre à 100 % de la hauteur, glisser vers le bas ferme ; le brouillon de saisie est conservé
- Mention de prudence toujours visible sous le champ (transparence sur l'incertitude, CDC Global §8.5)

## 🔄 Comportement et états

- Squelette pendant la création/chargement de la conversation
- Le clavier pousse le champ ; le fil reste scrollé en bas
- Fermeture pendant un streaming : le flux continue en arrière-plan et se termine (badge sur la bulle)

## 🛠️ Tâches

- [ ] Créer `presentation/pages/assistant_chat_sheet.dart` (`DraggableScrollableSheet` via `showModalBottomSheet(isScrollControlled:true)`)
- [ ] Créer `widgets/chat_header.dart` (avatar, titre, statut, boutons)
- [ ] Créer `widgets/welcome_panel.dart` et `suggestion_chips.dart`
- [ ] Créer `widgets/disclaimer_footer.dart`
- [ ] Fournir `AssistantChatBloc` au niveau du MainShell (survit à la fermeture du sheet)
- [ ] Routes `/assistant` (sheet) et `/assistant/:conversationId`
- [ ] Clés ARB `assistantTitle`, `assistantStatusOnline`, `assistantWelcome` ({name}), `assistantSuggestion1..5`, `assistantDisclaimer`, `assistantInputHint`
- [ ] Tests widget + golden clair/sombre

## ✔️ Critères d'acceptation

- [ ] Étant donné un pseudo « Boris » quand le sheet s'ouvre alors « Salut Boris ! » est affiché
- [ ] Étant donné le tap sur « Quand joue le Barça ? » alors le message est envoyé et la suggestion disparaît
- [ ] Étant donné le sheet fermé pendant une réponse alors la réponse se termine et un badge apparaît sur la bulle
- [ ] Étant donné le mode avion alors le statut affiche « Hors-ligne »
- [ ] Étant donné un brouillon de saisie quand le sheet est rouvert alors le texte est conservé

## 🧪 Tests à écrire

- [ ] chat_sheet_test : accueil personnalisé
- [ ] chat_sheet_test : suggestions envoient
- [ ] chat_sheet_test : brouillon conservé
- [ ] golden : chat_new_light / chat_new_dark
- [ ] chat_sheet_test : statut hors-ligne

## ♿ Accessibilité et i18n

- Header avec `Semantics(header:true)`; statut annoncé; boutons historique « Historique des conversations » et « Fermer »
- Chips ≥ 48 dp de haut

## 🔗 Dépendances

À réaliser après : `MOB-N-05` · `MOB-N-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.10
- CDC Global §2.2, §8.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
