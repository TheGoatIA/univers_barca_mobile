> **MOB-C-15** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

En C-05 la carte streak affiche « ⏳ Il te reste 3 h 12 » (toast/bandeau d'alerte) : la série est en jeu car le jeu du jour n'est pas joué. La relance par rappel avant minuit est exigée par le CDC (carte Streak, notifications streak).

## ✅ Objectif

Signaler visuellement le risque de perte de série et déclencher le rappel local/push associé.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `C-05` — Dashboard — série en danger
_Module : Accueil dashboard_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-05_dashboard-serie-en-danger__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-05_dashboard-serie-en-danger__phone_light.webp?raw=true' width='230' alt='C-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-05_dashboard-serie-en-danger__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-05_dashboard-serie-en-danger__phone_dark.webp?raw=true' width='230' alt='C-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-05_dashboard-serie-en-danger__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-05_dashboard-serie-en-danger__tablet_light.webp?raw=true' width='330' alt='C-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-05_dashboard-serie-en-danger__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-05_dashboard-serie-en-danger__tablet_dark.webp?raw=true' width='330' alt='C-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Salut Boris 👋 » · « Liga · J11 » · « Prochain match » · « Barça » · « Sam. 24 oct. » · « Real Madrid » · « Coup d'envoi dans » · « min » · « À jouer » · « Guess the Player » · « 6 essais · 1 joueur mystère » · « Niveau 2 » · « Quiz du jour » · « 10 questions · Culé » · « oct. » · « Aujourd'hui dans l'histoire · 2011 » · « Le Barça de Guardiola enchaîne un 4-0 mémorable en Ligue des champions. » · « Lecture 1 min » · « Lire l'anecdote » · « jours de suite » · « ⏳ Il te reste » · « 3 h 12 »

**Composants repérés** : `avatar`, `card`, `toast`

</details>

**Issues liées sur ce même écran :** [API-FOOT-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-14%5D%22) · [MOB-C-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-02%5D%22) · [MOB-C-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-08%5D%22) · [MOB-C-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-12%5D%22) · [MOB-C-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-24%5D%22) · [MOB-C-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-25%5D%22) · [MOB-C-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-26%5D%22) · [MOB-C-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-27%5D%22)

## 📐 Règles de gestion

- Rappel de streak en péril = jeu du jour non joué, quelques heures avant la réinitialisation (CDC Global §2.12).
- Notification discrète, respectant les préférences granulaires (CDC Flutter §7.11).
- Heure de réinitialisation : minuit du fuseau tranché par le CDC à la conception détaillée — utiliser `expiresAt` serveur.

## 🛠️ Tâches

- [ ] Calculer `StreakSummary.expiresAt` (prochain minuit dans le fuseau de référence serveur) ; état « danger » quand `playedToday == false` et `expiresAt - now <= 6 h` (seuil constant `kStreakDangerThreshold`, à valider produit).
- [ ] Créer `StreakDangerBanner` (fond warning 12 %, bordure warning, texte « ⏳ Il te reste » + durée « 3 h 12 » en gras) inséré sous la rangée de la semaine avec animation de pulsation de la flamme (1,2 s, désactivée si animations réduites).
- [ ] Mettre à jour la durée chaque minute via le `CountdownCubit` ; masquer le bandeau dès qu'un jeu est joué (événement du bloc).
- [ ] Planifier une notification locale de secours (`flutter_local_notifications`) à l'heure `streakReminderTime` des préférences (défaut 20:30, modèle `platform.model.ts`) si le jeu n'est pas joué, en respectant l'opt-in de notifications.
- [ ] Annuler la notification planifiée dès que le jeu du jour est terminé ou que l'utilisateur désactive la catégorie « streak ».
- [ ] Ne rien planifier si `currentStreak == 0`.
- [ ] Deep link de la notification → `/games`.

## ✔️ Critères d'acceptation

- [ ] Étant donné le jeu non joué et 3 h 12 avant minuit, quand la carte s'affiche, alors le bandeau « ⏳ Il te reste 3 h 12 » est visible.
- [ ] Étant donné un jeu joué, quand l'utilisateur revient au dashboard, alors le bandeau disparaît et la notification locale est annulée.
- [ ] Étant donné une série de 0 jour, quand l'heure approche de minuit, alors aucun bandeau ni notification.
- [ ] Étant donné les notifications désactivées, quand la série est en danger, alors le bandeau s'affiche mais aucune notification n'est planifiée.

## 🧪 Tests à écrire

- [ ] Test unitaire : `isInDanger` avec horloge injectée.
- [ ] Test de widget : bandeau et durée.
- [ ] Test unitaire : planification/annulation de la notification.
- [ ] Test de bloc : disparition après `GamePlayed`.
- [ ] Golden clair/sombre.

## ♿ Accessibilité et i18n

- Annoncer le bandeau une seule fois (`SemanticsService.announce`).
- ARB : `streakDangerRemaining` (« Il te reste {duration} »).

## 🔗 Dépendances

À réaliser après : `MOB-C-14` · `MOB-C-09` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.3
- CDC Flutter §7.2
- CDC Global §2.12

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
