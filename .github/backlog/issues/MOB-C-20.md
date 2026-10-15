> **MOB-C-20** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

En C-10, l'utilisateur tire l'écran : un indicateur « Mise à jour… » avec spinner apparaît sous l'en-tête pendant que les cartes se rafraîchissent.

## ✅ Objectif

Resynchroniser toutes les cartes sur geste de tirage sans perdre l'affichage courant.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `C-10` — Pull-to-refresh
_Module : Accueil dashboard_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-10_pull-to-refresh__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-10_pull-to-refresh__phone_light.webp?raw=true' width='230' alt='C-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-10_pull-to-refresh__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-10_pull-to-refresh__phone_dark.webp?raw=true' width='230' alt='C-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-10_pull-to-refresh__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-10_pull-to-refresh__tablet_light.webp?raw=true' width='330' alt='C-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-10_pull-to-refresh__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-10_pull-to-refresh__tablet_dark.webp?raw=true' width='330' alt='C-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Salut Boris 👋 » · « Mise à jour… » · « Liga · J11 » · « Prochain match » · « Barça » · « Sam. 24 oct. » · « Real Madrid » · « Coup d'envoi dans » · « min » · « À jouer » · « Guess the Player » · « 6 essais · 1 joueur mystère » · « Niveau 2 » · « Quiz du jour » · « 10 questions · Culé »

**Composants repérés** : `avatar`, `card`, `spinner`

</details>

**Issues liées sur ce même écran :** [API-FOOT-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-14%5D%22) · [MOB-C-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-06%5D%22) · [MOB-C-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-08%5D%22) · [MOB-C-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-25%5D%22) · [MOB-C-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-26%5D%22) · [MOB-C-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-27%5D%22)

## 📐 Règles de gestion

- Pull-to-refresh global = resynchronisation de toutes les cartes (CDC Flutter §7.2).
- Les données déjà affichées ne disparaissent pas pendant la mise à jour.
- Timeout global 10 s.

## 🛠️ Tâches

- [ ] Envelopper la `CustomScrollView` dans `RefreshIndicator.adaptive` (couleur `primary`, seuil 80 dp).
- [ ] Remplacer l'indicateur natif par un header personnalisé « Mise à jour… » + `CircularProgressIndicator` 20 dp, hauteur 48 dp.
- [ ] Envoyer `DashboardRefreshed(fromPull: true)` ; le `Future` du `onRefresh` se termine quand toutes les cartes ont répondu ou après 10 s.
- [ ] Retour haptique léger à l'atteinte du seuil (`HapticFeedback.selectionClick`).
- [ ] Ne pas déclencher plus d'une resync toutes les 5 s (anti-spam).
- [ ] Hors-ligne : terminer immédiatement avec toast « Pas de connexion » sans vider les cartes.
- [ ] Mettre à jour `lastSyncedAt` à la fin.

## ✔️ Critères d'acceptation

- [ ] Étant donné un tirage au-delà du seuil, quand on relâche, alors « Mise à jour… » apparaît et les 5 cartes sont redemandées.
- [ ] Étant donné la fin de la resync, quand toutes les cartes ont répondu, alors l'indicateur disparaît.
- [ ] Étant donné le mode hors-ligne, quand on tire, alors un toast apparaît et les données restent.
- [ ] Étant donné deux tirages en moins de 5 s, quand le second a lieu, alors aucune seconde requête n'est envoyée.

## 🧪 Tests à écrire

- [ ] Test de widget : apparition du header.
- [ ] Test de bloc : `DashboardRefreshed(fromPull)` appelle 5 use cases.
- [ ] Test de widget : anti-spam.
- [ ] Test de widget : hors-ligne → toast.
- [ ] Test de widget : timeout 10 s.

## ♿ Accessibilité et i18n

- ARB `dashboardUpdating` (« Mise à jour… ») ; annoncer « Contenu mis à jour » à la fin.

## 🔗 Dépendances

À réaliser après : `MOB-C-06` · `MOB-C-07` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.3
- CDC Flutter §7.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
