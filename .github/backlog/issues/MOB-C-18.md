> **MOB-C-18** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

C-07 affiche un bandeau « Hors-ligne · affichage des derniers contenus » sous l'en-tête ; les cartes restent consultables (match, jeux, histoire, streak), la carte Fantasy n'étant pas en cache.

## ✅ Objectif

Informer l'utilisateur sans bloquer et reprendre automatiquement au retour du réseau.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `C-07` — Dashboard — hors-ligne (cache)
_Module : Accueil dashboard_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-07_dashboard-hors-ligne-cache__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-07_dashboard-hors-ligne-cache__phone_light.webp?raw=true' width='230' alt='C-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-07_dashboard-hors-ligne-cache__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-07_dashboard-hors-ligne-cache__phone_dark.webp?raw=true' width='230' alt='C-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-07_dashboard-hors-ligne-cache__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-07_dashboard-hors-ligne-cache__tablet_light.webp?raw=true' width='330' alt='C-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-07_dashboard-hors-ligne-cache__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-07_dashboard-hors-ligne-cache__tablet_dark.webp?raw=true' width='330' alt='C-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Salut Boris 👋 » · « Hors-ligne · affichage des derniers contenus » · « Liga · J11 » · « Prochain match » · « Barça » · « Sam. 24 oct. » · « Real Madrid » · « Coup d'envoi dans » · « min » · « À jouer » · « Guess the Player » · « 6 essais · 1 joueur mystère » · « Niveau 2 » · « Quiz du jour » · « 10 questions · Culé » · « oct. » · « Aujourd'hui dans l'histoire · 2011 » · « Le Barça de Guardiola enchaîne un 4-0 mémorable en Ligue des champions. » · « Lecture 1 min » · « Lire l'anecdote » · « jours de suite » · « Record personnel : 27 jours »

**Composants repérés** : `avatar`, `banner`, `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-07%5D%22) · [API-FOOT-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-14%5D%22) · [API-FOOT-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-29%5D%22) · [MOB-C-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-04%5D%22) · [MOB-C-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-05%5D%22) · [MOB-C-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-06%5D%22) · [MOB-C-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-08%5D%22) · [MOB-C-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-13%5D%22) · [MOB-C-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-14%5D%22) · [MOB-C-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-25%5D%22) · [MOB-C-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-26%5D%22) · [MOB-C-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-27%5D%22)

## 📐 Règles de gestion

- Les données en cache restent affichées (CDC Flutter §5.1).
- Le bandeau ne bloque aucune interaction.
- Retour réseau = refresh automatique silencieux.

## 🛠️ Tâches

- [ ] Créer `OfflineBanner` (composant partagé `core/widgets/offline_banner.dart`) : fond warning 12 %, icône `wifi_off`, texte, hauteur 40 dp, slide-down 200 ms.
- [ ] Piloter par `DashboardState.isOffline` (via `InternetConnectionChecker` + échec réseau détecté).
- [ ] Afficher « Mis à jour il y a {durée} » en sous-texte si `lastSyncedAt` connu (cache > 24 h → « périmé »).
- [ ] Désactiver les actions nécessitant le réseau (« Suivre le live », ajout agenda distant) avec tooltip explicatif ; autoriser la consultation.
- [ ] Au retour du réseau : masquer le bandeau avec toast « De retour en ligne » et lancer un refresh silencieux.
- [ ] Cartes sans cache : état vide avec message « Disponible une fois connecté » plutôt que squelette infini.

## ✔️ Critères d'acceptation

- [ ] Étant donné le mode avion, quand le dashboard s'ouvre avec cache, alors le bandeau et les cartes en cache sont visibles.
- [ ] Étant donné le retour du réseau, quand la connexion revient, alors le bandeau disparaît et les données sont rafraîchies.
- [ ] Étant donné aucun cache et pas de réseau, quand le dashboard s'ouvre, alors l'état d'erreur réseau d'`AppErrorView` est affiché avec « Réessayer ».
- [ ] Étant donné une carte jamais chargée, quand hors-ligne, alors son message « Disponible une fois connecté » s'affiche.

## 🧪 Tests à écrire

- [ ] Test de widget : bandeau visible quand `isOffline`.
- [ ] Test de bloc : retour réseau → refresh.
- [ ] Golden clair/sombre.
- [ ] Test de widget : actions désactivées hors-ligne.
- [ ] Test d'intégration : mode avion simulé.

## ♿ Accessibilité et i18n

- Annonce vocale à l'apparition du bandeau ; ARB `offlineBanner`, `backOnline`, `availableWhenOnline`.

## 🔗 Dépendances

À réaliser après : `MOB-C-06` · `MOB-C-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.3
- CDC Flutter §7.2
- CDC Flutter §5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
