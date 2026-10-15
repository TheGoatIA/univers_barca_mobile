> **MOB-E** · Épopée · Phase 1 — MVP

## 🎯 Objectif

Proposer un quiz adaptatif de culture Barça : un quiz du jour de 10 questions (30 s par question, jusqu'à +150 points) calibré sur l'un des 5 paliers de difficulté, un mode entraînement libre sans impact sur le niveau, des explications après chaque réponse, des montées/descentes de niveau transparentes et des classements (monde, amis, ligues privées par code d'invitation).

## 📦 Périmètre

- Hub du quiz, niveaux (5 paliers) et progression vers le palier suivant (E-01)
- Quiz du jour : introduction, chargement, question (états : normal, sélectionnée, temps presque écoulé), retour bonne/mauvaise réponse avec explication, résultat de session, montée de niveau, retour au palier inférieur, quiz déjà joué
- Entraînement libre : configuration (catégories, difficulté, nombre de questions 5-30, chronomètre) et déroulé
- Classements monde et amis, ligue privée : création/partage du code BARCA-XXXX, rejoindre par code ou lien
- Couche données (Chopper, Drift), QuizSessionBloc, QuizLeaderboardCubit, minuteur robuste, animations de transition, accessibilité, i18n, tests

## 🚫 Hors périmètre

- Génération et validation des questions (API, back-office)
- Algorithme d'ajustement du niveau côté serveur (CDC Backend §3.12.1) : le mobile affiche, ne calcule pas
- Guess the Player (groupe D)
- Notifications (groupe O)
- Carte « jeux du jour » du dashboard (groupe C)

## 📚 Références

- CDC Global §2.5, §2.15
- CDC Flutter §5, §7.4, §9.5, §9.6
- CDC Backend §3.4, §3.12.1, §4.3, §10.2

## 🧩 Issues de l'épopée (34)

{{CHILDREN}}
