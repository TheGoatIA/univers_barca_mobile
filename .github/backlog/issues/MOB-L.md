> **MOB-L** · Épopée · Phase 1 — MVP

## 🎯 Objectif

Permettre au supporter de consulter le calendrier des matchs du Barça dans son fuseau horaire et de l'intégrer à son agenda personnel : abonnement dynamique webcal:// (mise à jour automatique sous 24 h) ou fichier .ics ponctuel, avec filtres par compétition, rappels configurables et ajout direct d'un match à l'agenda natif.

## 📦 Périmètre

- Liste et vue mensuelle des matchs à venir, filtres, états chargement/vide/erreur
- Détail d'un match programmé et bannière de changement d'horaire
- Écran d'export (S'abonner / Télécharger), filtres de compétitions et d'équipes, abonnement webcal, fichier .ics
- Permissions agenda (pré-permission, refus, repli) et ajout direct via device_calendar
- Rappels configurables, fuseau horaire, badges Exporté/Non inclus
- Données, cache Drift, BLoC, config native, sécurité du jeton, i18n, tests

## 🚫 Hors périmètre

- Génération du flux ICS, jeton et job refresh-calendar-feed (dépôt API)
- Notifications push de rappel/changement d'horaire (module Notifications)
- Back-office de synchronisation des matchs (admin)
- Résultats et détail de match terminé (voir groupe F pour l'historique)

## 📚 Références

- CDC Global §2.9
- CDC Global §2.16.1 (RG-CAL-01 à 05)
- CDC Flutter §7.8 et §7.8.1
- CDC Flutter §6.4
- CDC Backend §3.7
- CDC Backend §5.6

## 🧩 Issues de l'épopée (29)

{{CHILDREN}}
