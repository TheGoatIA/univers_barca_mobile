> **MOB-G** · Épopée · Phase 2 — Communautaire & compétitif

## 🎯 Objectif

Offrir un comparateur GOAT où l'utilisateur confronte deux joueurs de l'histoire du club (statistiques croisées, profil radar, évolution des buts) et vote ; seul le pourcentage communautaire est affiché, l'application n'impose jamais de verdict.

## 📦 Périmètre

- Sélection de deux joueurs (slots, duels populaires, sélecteur recherchable)
- Résultat : statistiques croisées, radar, courbe des buts par saison
- Vote communautaire modifiable une fois par semaine, gestion du 409
- Couche données (modèles, Chopper, repository), GoatComparatorBloc
- Hors-ligne, i18n, accessibilité, tests

## 🚫 Hors périmètre

- Fiche joueur (groupe F)
- Endpoints API compare/vote-goat (dépôt API)
- Gestion/modération des votes (back-office)
- Classements globaux de joueurs

## 📚 Références

- CDC Global §2.6
- CDC Flutter §7.5
- CDC Backend §3.2
- CDC Backend §5.6 (cache comparateur 1 h)

## 🧩 Issues de l'épopée (17)

{{CHILDREN}}
