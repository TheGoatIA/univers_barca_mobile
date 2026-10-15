> **MOB-C** · Épopée · Phase 1 — MVP

## 🎯 Objectif

Offrir à chaque supporter une page d'accueil en cartes qui agrège en un coup d'œil le prochain match avec compte à rebours, les jeux du jour, l'anecdote historique, la série de jours et l'aperçu du XI Fantasy, avec un comportement fluide hors-ligne et en cas d'erreur partielle.

## 📦 Périmètre

- Écran dashboard et ses 5 cartes (prochain match, jeux du jour, histoire du jour, streak, XI Fantasy)
- États : normal, jeux terminés, match en direct, série en danger, squelette, hors-ligne, erreur partielle, sans match, pull-to-refresh
- Détail du prochain match et détail « Aujourd'hui dans l'histoire »
- Couche domaine/données/BLoC, cache Drift cache-then-network, compte à rebours et fuseau horaire
- Rappel de match et ajout à l'agenda, rappel de streak en péril
- i18n FR/EN/ES, accessibilité, tests golden/intégration

## 🚫 Hors périmètre

- Bulle flottante et conversation Barça AI (module IA)
- Écrans complets Fantasy, Historique, Calendrier, Notifications, Passeport
- Jeux Guess the Player et Quiz (groupes D et E)
- Endpoints serveur (dépôt API) et édition éditoriale (admin)

## 📚 Références

- CDC Global §2.3, §2.4, §2.5, §2.15
- CDC Flutter §5.3, §7.2, §9.6, §10, §12
- CDC Backend §3.2–3.5

## 🧩 Issues de l'épopée (27)

{{CHILDREN}}
