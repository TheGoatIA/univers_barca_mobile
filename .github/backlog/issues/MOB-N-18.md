> **MOB-N-18** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

N-12 : sous le message « Quand joue le Barça ? », la mention « Échec de l'envoi · Réessayer » (le point médian sépare le texte du lien). Il s'agit d'un échec ponctuel (timeout, 5xx, flux interrompu).

## ✅ Objectif

Permettre un retry manuel sûr, sans doublon, du dernier message en échec.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `N-12` — Erreur d’envoi — réessayer
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-12_erreur-d-envoi-reessayer__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-12_erreur-d-envoi-reessayer__phone_light.webp?raw=true' width='230' alt='N-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-12_erreur-d-envoi-reessayer__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-12_erreur-d-envoi-reessayer__phone_dark.webp?raw=true' width='230' alt='N-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-12_erreur-d-envoi-reessayer__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-12_erreur-d-envoi-reessayer__tablet_light.webp?raw=true' width='330' alt='N-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-12_erreur-d-envoi-reessayer__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-12_erreur-d-envoi-reessayer__tablet_dark.webp?raw=true' width='330' alt='N-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Salut ! Que veux-tu savoir ? » · « Quand joue le Barça ? » · « Échec de l’envoi · » · « Réessayer » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [MOB-N-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-02%5D%22) · [MOB-N-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-04%5D%22) · [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

## 📐 Règles de gestion

- Statut `failed` par message utilisateur ; le texte est conservé dans la file Drift (`status=failed`)
- Retry = renvoi avec le même `clientMessageId` : le serveur déduplique (pas de double décompte du quota)
- Max 3 retries manuels successifs puis message « Réessaie dans quelques instants »
- Un échec n'est jamais retenté automatiquement (CDC Flutter §5.1 : retry manuel proposé à l'utilisateur)
- Timeout d'envoi 30 s ; flux SSE inactif 20 s

## 🔄 Comportement et états

- Tap sur « Réessayer » -> statut sending, puis streaming normal
- Échec persistant : le message reste en échec et n'est pas supprimé
- Erreur 401 non récupérable : redirection vers la connexion

## 🛠️ Tâches

- [ ] Créer `widgets/message_failed_footer.dart` (texte + lien)
- [ ] Gérer `RetryPressed(messageId)` dans le BLoC avec `droppable()`
- [ ] Persister l'échec dans `chat_pending_messages`
- [ ] Header `Idempotency`: transmettre `clientMessageId` dans le corps
- [ ] Compteur de retries par message
- [ ] Clés ARB `assistantSendFailed`, `assistantRetry`
- [ ] Test widget
- [ ] Golden N-12

## ✔️ Critères d'acceptation

- [ ] Étant donné un échec réseau alors « Échec de l'envoi · Réessayer » apparaît sous le message
- [ ] Étant donné le tap sur Réessayer alors le même clientMessageId est renvoyé
- [ ] Étant donné un retry réussi alors le quota n'est décompté qu'une fois
- [ ] Étant donné 3 retries échoués alors un message d'attente est affiché

## 🧪 Tests à écrire

- [ ] failed_footer_test
- [ ] chat_bloc_test : retry idempotent
- [ ] chat_bloc_test : limite 3
- [ ] golden : send_failed_light / dark

## ♿ Accessibilité et i18n

- « Réessayer » : bouton avec label « Réessayer l'envoi du message : Quand joue le Barça ? »

## 🔗 Dépendances

À réaliser après : `MOB-N-05` · `MOB-N-09` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §5.1, §7.10

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
