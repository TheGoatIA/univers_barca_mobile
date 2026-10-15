> **MOB-N-19** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

N-13 : statut « Hors-ligne », encart « Barça AI nécessite une connexion. Ton message sera conservé et tu pourras le renvoyer. », suggestion « Quand joue le Barça ? » désactivée. CDC Flutter §5.1 : aucune conversation hors-ligne, message conservé en file locale.

## ✅ Objectif

Informer clairement et conserver la saisie jusqu'au retour du réseau.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `N-13` — Hors-ligne — envoi impossible
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-13_hors-ligne-envoi-impossible__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-13_hors-ligne-envoi-impossible__phone_light.webp?raw=true' width='230' alt='N-13 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-13_hors-ligne-envoi-impossible__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-13_hors-ligne-envoi-impossible__phone_dark.webp?raw=true' width='230' alt='N-13 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-13_hors-ligne-envoi-impossible__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-13_hors-ligne-envoi-impossible__tablet_light.webp?raw=true' width='330' alt='N-13 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-13_hors-ligne-envoi-impossible__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-13_hors-ligne-envoi-impossible__tablet_dark.webp?raw=true' width='330' alt='N-13 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « Hors-ligne » · « Salut ! Que veux-tu savoir ? » · « Barça AI nécessite une connexion. Ton message sera conservé et tu pourras le renvoyer. » · « Quand joue le Barça ? » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-IA-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-21%5D%22) · [MOB-N-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-04%5D%22) · [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-08%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

## 📐 Règles de gestion

- Détection via `internet_connection_checker` (ping réel) + événement `ConnectivityChanged`
- Hors-ligne : composer actif (on peut écrire) mais l'envoi met le message en file `pending` avec encart ; les suggestions sont désactivées
- Retour du réseau : bannière « De retour en ligne — Renvoyer ? » ; le renvoi est manuel
- Historique déjà en cache lisible (lecture seule), nouvelle conversation non créée hors-ligne

## 🔄 Comportement et états

- Bandeau animé (slide 200 ms) en haut du fil
- La puce de statut devient grise « Hors-ligne »

## 🛠️ Tâches

- [ ] Créer `widgets/offline_notice.dart` et `reconnected_banner.dart`
- [ ] Brancher `ConnectivityChanged` dans `AssistantChatBloc`
- [ ] Désactiver les `SuggestionChips` (paramètre `enabled`)
- [ ] Rejeu manuel de la file `pending_messages`
- [ ] Clés ARB `assistantOfflineStatus`, `assistantOfflineNotice`, `assistantBackOnline`
- [ ] Test widget
- [ ] Golden N-13
- [ ] Test d'intégration avion on/off

## ✔️ Critères d'acceptation

- [ ] Étant donné le mode avion quand l'utilisateur envoie alors le message est en file et l'encart s'affiche
- [ ] Étant donné le retour du réseau alors la bannière propose « Renvoyer » sans envoyer automatiquement
- [ ] Étant donné hors-ligne alors les suggestions sont grisées
- [ ] Étant donné l'app relancée hors-ligne alors le message en file est toujours présent

## 🧪 Tests à écrire

- [ ] offline_notice_test
- [ ] chat_bloc_test : connectivité
- [ ] integration : avion -> file -> retour -> renvoi
- [ ] golden : offline_light / dark

## ♿ Accessibilité et i18n

- Changement de statut annoncé (« Vous êtes hors ligne »)

## 🔗 Dépendances

À réaliser après : `MOB-N-05` · `MOB-N-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §5.1, §7.10

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
