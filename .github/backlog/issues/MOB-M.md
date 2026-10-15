> **MOB-M** · Épopée · Phase 3 — Fonctionnalités avancées

## 🎯 Objectif

Permettre au supporter de générer en moins de 15 secondes un fond d'écran aux couleurs du Barça à partir d'un prompt guidé (joueur, style, occasion), de le retrouver dans une galerie personnelle, de l'appliquer, l'enregistrer ou le partager, dans le respect d'un quota quotidien et d'une modération stricte des demandes et des images.

## 📦 Périmètre

- Formulaire guidé en 3 étapes (1/3 saisie, 2/3 vérification automatique, 3/3 aperçu du prompt) et refus de modération
- Génération asynchrone (file BullMQ côté API) avec suivi par polling et notification push de fin
- Résultat : appliquer (Android), enregistrer dans la pellicule (iOS/Android), partager (WhatsApp, Instagram, Facebook, lien, image)
- Galerie personnelle (Tous / Favoris), vide, détail, partage
- États de quota quotidien, d'échec (tentative non décomptée) et de module désactivé
- Couche données (modèles, Chopper, Drift), BLoC, permissions photos, analytics, accessibilité, tests

## 🚫 Hors périmètre

- Implémentation du worker de génération, de la modération image et du stockage objet (dépôt API)
- Écran d'administration de la modération des wallpapers et du quota (dépôt admin)
- Suppression unitaire d'un wallpaper (absente des CDC et maquettes ; la suppression de compte efface déjà les wallpapers, cf. groupe Q)
- Création de wallpaper depuis le chat : seule la navigation vers /wallpapers/new est fournie ici, l'action de chat relève du groupe N

## 📚 Références

- CDC Global §2.10
- CDC Global §11.1-11.2 (modération)
- CDC Global §10.1 (droits d'image)
- CDC Flutter §7.9, §6.4 (permissions photos), §5 (cycle de vie)
- CDC Backend §3.9, §4.6, §10.2, §11.3

## 🧩 Issues de l'épopée (31)

{{CHILDREN}}
