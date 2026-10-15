> **MOB-D-22** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Hors-ligne, l'écran D-12 garde les indices déjà obtenus, affiche une ligne « Pedri — Connexion perdue · tentative en attente » (sans couleurs) et un bandeau « Hors-ligne : ta tentative sera envoyée au retour du réseau. ».

## ✅ Objectif

Représenter l'état de tentative en file et la resynchronisation automatique au retour du réseau.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `D-12` — Hors-ligne — tentative bloquée
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-12_hors-ligne-tentative-bloquee__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-12_hors-ligne-tentative-bloquee__phone_light.webp?raw=true' width='230' alt='D-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-12_hors-ligne-tentative-bloquee__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-12_hors-ligne-tentative-bloquee__phone_dark.webp?raw=true' width='230' alt='D-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-12_hors-ligne-tentative-bloquee__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-12_hors-ligne-tentative-bloquee__tablet_light.webp?raw=true' width='330' alt='D-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-12_hors-ligne-tentative-bloquee__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-12_hors-ligne-tentative-bloquee__tablet_dark.webp?raw=true' width='330' alt='D-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Guess the Player » · « Défi n°214 · 1/6 essais » · « Qui est le joueur mystère ? » · « Chaque essai compare tes choix aux indices. » · « Joueur » · « Nation » · « Poste » · « Âge » · « N° » · « Club » · « Yamal » · « 19 ▲ » · « 10 ▲ » · « La Masia » · « Correct » · « Proche » · « Faux » · « ▲▼ plus / moins » · « Pedri » · « Connexion perdue · tentative en attente » · « Hors-ligne : ta tentative sera envoyée au retour du réseau. »

**Composants repérés** : `banner`, `btn`, `card`, `input`, `toast`

</details>

**Issues liées sur ce même écran :** [API-JEUX-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-05%5D%22) · [API-JEUX-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-07%5D%22) · [API-JEUX-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-08%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-D-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-04%5D%22) · [MOB-D-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-06%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

## 📐 Règles de gestion

- La ligne en attente affiche le nom du joueur choisi et des cellules neutres avec un sablier ; elle ne compte pas dans « n/6 ».
- Pendant l'attente, la saisie est désactivée ; l'utilisateur peut annuler la tentative en attente (swipe ou bouton « Annuler »).
- Au retour réseau, la tentative est envoyée, la ligne se révèle avec l'animation de flip, un toast « Tentative envoyée » s'affiche.

## 🛠️ Tâches

- [ ] Créer `PendingAttemptRow(playerName)` et `OfflineBanner` (réutiliser le composant banner du design system).
- [ ] Dans `GuessInputBar`, désactiver le champ si `state.pending != null`.
- [ ] Écouter `NetworkInfo.onStatusChange` dans le bloc et émettre `GuessConnectivityChanged`.
- [ ] Au retour en ligne, appeler `SyncPendingGuessAttempts`, puis rejouer l'animation sur la nouvelle ligne.
- [ ] Gérer l'échec de synchronisation : `retryCount++`, backoff 5/15/60 s, bouton « Réessayer maintenant ».
- [ ] Si le défi a changé entre-temps, vider la file et informer l'utilisateur.
- [ ] Golden test D-12 clair/sombre.
- [ ] Tests d'intégration réseau coupé/rétabli.

## ✔️ Critères d'acceptation

- [ ] Étant donné le mode avion, quand l'utilisateur valide « Pedri », alors une ligne « tentative en attente » apparaît et le compteur reste 1/6.
- [ ] Étant donné le retour du réseau, quand la file est synchronisée, alors la ligne est révélée et un toast confirme.
- [ ] Étant donné une tentative en attente, quand l'utilisateur touche « Annuler », alors la ligne disparaît et la saisie est de nouveau possible.
- [ ] Étant donné un défi expiré pendant la coupure, quand la synchro est tentée, alors la file est vidée avec un message explicatif.

## 🧪 Tests à écrire

- [ ] Widget test : ligne en attente.
- [ ] bloc_test : sync au retour réseau.
- [ ] bloc_test : annulation.
- [ ] Intégration : coupure/rétablissement.
- [ ] Golden test : D-12.

## ♿ Accessibilité et i18n

- Clés ARB : `connectionLostPending`, `offlineAttemptBanner`, `attemptSent`, `cancelPendingAttempt`.
- Le bandeau est annoncé en `liveRegion` polite.

## 🔗 Dépendances

À réaliser après : `MOB-D-04` · `MOB-D-06` · `MOB-D-10` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §5.1, §5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
