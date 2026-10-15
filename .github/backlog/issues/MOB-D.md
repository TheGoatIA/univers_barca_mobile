> **MOB-D** · Épopée · Phase 1 — MVP

## 🎯 Objectif

Permettre à chaque supporter de relever une fois par jour le défi « Guess the Player » (joueur mystère identique pour tous, 6 essais, indices colorés vert/jaune/rouge avec flèches ▲▼), de partager une grille sans spoiler, de consulter son historique et ses statistiques, et d'accéder au hub des jeux (défi du jour, quiz adaptatif, entraînement, classements), y compris en mode dégradé hors-ligne.

## 📦 Périmètre

- Hub des jeux (D-01) et règles du jeu (D-02)
- Plateau de jeu : grille 6 lignes x 5 colonnes d'indices (Nation, Poste, Âge, N°, Club), recherche avec suggestions, états début / 1 à 5 essais / dernier essai
- Résultats victoire et défaite avec révélation, points, série, grille
- Partage (image générée via RepaintBoundary + share_plus, texte emoji, presse-papiers)
- Écran « déjà joué » avec compte à rebours jusqu'au prochain défi, historique et statistiques personnelles
- Mode hors-ligne : cache du défi, tentative mise en file d'attente (table Drift PendingActions) et rejouée au retour réseau
- Couche données (Chopper, Drift), BLoC GuessThePlayerBloc, i18n FR/EN/ES, accessibilité, analytics, tests

## 🚫 Hors périmètre

- Quiz adaptatif et classements (groupe E)
- Génération du joueur mystère, sélection pondérée et calcul des indices (dépôt API, job generate-daily-challenge)
- Carte « jeux du jour » du dashboard (groupe C)
- Notifications de série en danger (groupe O)
- Gestion éditoriale des défis dans le back-office (dépôt admin)

## 📚 Références

- CDC Global §2.4, §2.15
- CDC Flutter §5.1, §5.3, §7.3, §9.5, §9.6
- CDC Backend §3.3, §4.3, §7

## 🧩 Issues de l'épopée (30)

{{CHILDREN}}
