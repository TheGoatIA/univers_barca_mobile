> **MOB-N-16** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

N-10 : un encart « Message non traité — Ce type de contenu n'est pas autorisé par la charte de la communauté. Reformule ta question, je suis là pour t'aider. ». C'est la réponse de refus standardisée (CDC Global §8.5 : sécurité et modération des entrées/sorties).

## ✅ Objectif

Signaler un blocage de modération sans exposer le contenu bloqué ni culpabiliser.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `N-10` — Message bloqué par la modération
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-10_message-bloque-par-la-moderation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-10_message-bloque-par-la-moderation__phone_light.webp?raw=true' width='230' alt='N-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-10_message-bloque-par-la-moderation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-10_message-bloque-par-la-moderation__phone_dark.webp?raw=true' width='230' alt='N-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-10_message-bloque-par-la-moderation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-10_message-bloque-par-la-moderation__tablet_light.webp?raw=true' width='330' alt='N-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-10_message-bloque-par-la-moderation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-10_message-bloque-par-la-moderation__tablet_dark.webp?raw=true' width='330' alt='N-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Message non traité » · « Ce type de contenu n’est pas autorisé par la charte de la communauté. Reformule ta question, je suis là pour t’aider. » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-IA-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-06%5D%22) · [API-IA-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-11%5D%22) · [API-IA-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-12%5D%22) · [API-IA-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-21%5D%22) · [API-IA-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-29%5D%22) · [API-IA-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-31%5D%22) · [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-24%5D%22) · [MOB-N-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-25%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

## 📐 Règles de gestion

- Déclenché par `status: moderated` (entrée ou sortie filtrée) ou 422 `CONTENT_MODERATED` ; le texte du refus est standard et localisé
- Le message utilisateur bloqué reste visible dans le fil avec une mention « non traité » mais n'est pas renvoyé en file ; pas de bouton Réessayer
- Le message bloqué n'est pas affiché dans l'historique N-15 en aperçu (aperçu « Message non traité »)
- Après 3 blocages consécutifs, lien « Lire la charte de la communauté » -> Q-17
- Le texte filtré n'est jamais loggé (RGPD)

## 🔄 Comportement et états

- Style : encart neutre-ambre (token `warning`) avec icône bouclier
- Le composer reste utilisable immédiatement

## 🛠️ Tâches

- [ ] Créer `widgets/moderation_notice.dart`
- [ ] Gérer `MessageStatus.moderated` + `ModerationFailure` dans le BLoC (compteur de blocages consécutifs)
- [ ] Masquer le contenu dans l'aperçu de l'historique
- [ ] Lien charte vers `/settings/about/charter`
- [ ] Clés ARB `assistantModeratedTitle`, `assistantModeratedBody`
- [ ] Test widget
- [ ] Golden N-10
- [ ] Analytics `assistant_moderated` (sans contenu)

## ✔️ Critères d'acceptation

- [ ] Étant donné status=moderated alors l'encart « Message non traité » s'affiche et aucun bouton Réessayer n'est proposé
- [ ] Étant donné un blocage alors l'aperçu dans l'historique n'affiche pas le texte bloqué
- [ ] Étant donné 3 blocages consécutifs alors le lien vers la charte apparaît
- [ ] Étant donné un blocage alors aucun log ne contient le texte

## 🧪 Tests à écrire

- [ ] moderation_notice_test
- [ ] chat_bloc_test : compteur de blocages
- [ ] history_preview_test : masquage
- [ ] golden : moderated_light / dark

## ♿ Accessibilité et i18n

- Encart en liveRegion assertive

## 🔗 Dépendances

À réaliser après : `MOB-N-09` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §8.5, §11.1, §11.2
- CDC Backend §11.5 (étape 6)

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
