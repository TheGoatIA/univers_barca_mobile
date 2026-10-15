> **MOB-J** · Épopée · Phase 2 — Communautaire & compétitif

## 🎯 Objectif

Permettre à un culé de voir, sur une carte interactive, combien de supporters et quels groupes locaux existent par pays, région et ville (par exemple en arrivant dans un nouveau pays), sans jamais exposer la position d'une personne. La géolocalisation est un opt-in explicite, approximatif et révocable ; sans elle, l'utilisateur peut déclarer pays et ville à la main.

## 📦 Périmètre

- Onglet Communauté : carte du monde, zoom pays puis ville, clusters d'agrégats et groupes publics, filtres Tous / Groupes / Watch parties / Près de moi
- Recherche d'un pays ou d'une ville et écran de résultats par pays
- États : localisation non activée, chargement de la zone, erreur réseau, hors-ligne (cache Drift)
- Écran pédagogique de consentement à la géolocalisation (priming) avant la permission système, localisation approximative uniquement, géocodage inverse sur l'appareil
- Saisie manuelle pays/ville, réglage de visibilité (ville / pays / masqué), historisation du consentement RGPD (type geolocation)
- Couche données : modèles, datasource Chopper, repository, use cases, CommunityMapBloc, cache, analytics, accessibilité, tests

## 🚫 Hors périmètre

- Fiche groupe, fil, événements, création de groupe (groupe K)
- Centre de notifications et préférences push (groupe O)
- Calcul et rafraîchissement des agrégats côté serveur (dépôt API, job de LocationAggregate)
- Modération des groupes côté back-office (dépôt admin)

## 📚 Références

- CDC Global §2.8
- CDC Global §2.16.2
- CDC Flutter §7.7
- CDC Flutter §7.7.1
- CDC Backend §3.6
- CDC Flutter §6.4
- CDC Global §10.2

## 🧩 Issues de l'épopée (27)

{{CHILDREN}}
