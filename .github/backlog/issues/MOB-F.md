> **MOB-F** · Épopée · Phase 1 — MVP

## 🎯 Objectif

Permettre aux supporters de parcourir 125 ans d'histoire du Barça via une frise chronologique, de consulter la fiche détaillée d'un match historique (compos, événements, contexte, classement) et la fiche d'un joueur, y compris hors-ligne pour le contenu déjà ouvert.

## 📦 Périmètre

- Frise par décennie/saison/date précise avec filtres, pagination, états chargement/vide/erreur
- Détail d'un match historique à 4 onglets (Résumé, Compos, Événements, Contexte)
- Fiche joueur à 3 onglets (Aperçu, Statistiques, Biographie)
- Couche données (modèles, Chopper, repository, cache Drift), BLoC, navigation et liens profonds
- i18n FR/EN/ES, accessibilité, tests et goldens

## 🚫 Hors périmètre

- Comparateur GOAT (groupe G)
- Overlay Barça AI et FAB (module Assistant IA)
- Endpoints API /matches/history, /matches/:id (dépôt API, à enrichir)
- Édition éditoriale des contenus (back-office)

## 📚 Références

- CDC Global §2.6
- CDC Flutter §7.5
- CDC Flutter §5.3
- CDC Flutter §9.5-9.6
- CDC Backend §3.2

## 🧩 Issues de l'épopée (27)

{{CHILDREN}}
