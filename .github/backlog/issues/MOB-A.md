> **MOB-A** · Épopée · Phase 0 — Socle technique

## 🎯 Objectif

Garantir que l'application démarre en moins de 2 secondes sur un appareil de milieu de gamme et que l'utilisateur ne soit jamais face à un écran blanc ou à un message technique : splash, synchronisation d'un nouvel appareil, mode hors-ligne dégradé, erreurs serveur 5xx / 429, maintenance planifiée, mise à jour obligatoire, session expirée, compte suspendu et compte banni.

## 📦 Périmètre

- Séquence de démarrage (splash, décision de routage : langue, onboarding, connexion, tableau de bord, états bloquants)
- Synchronisation initiale d'un nouvel appareil avec indicateur de progression
- Détection de connectivité, bannière hors-ligne persistante, écran « Pas de connexion » et accès au cache Drift
- Hiérarchie d'exceptions réseau (NetworkUnavailable, Server, RateLimited, Unauthorized) et écrans d'erreur associés
- Écrans bloquants pilotés par le serveur : maintenance, mise à jour requise, compte suspendu, compte banni
- Session expirée (401 après échec du refresh) avec reconnexion ou changement de compte
- Accessibilité, i18n FR/EN/ES, tests widget/golden, remontée Sentry des erreurs système

## 🚫 Hors périmètre

- Écrans d'authentification et d'onboarding (groupe B)
- Contenu des écrans métier alimentés par le cache (dashboard, jeux, historique)
- Back-office de bascule maintenance / version minimale / sanctions (dépôt admin) et endpoints serveur de configuration (dépôt API)
- Traitement de la contestation côté modération (admin)

## 📚 Références

- CDC Flutter §5 (persistance et hors-ligne)
- CDC Flutter §6.1 et §6.3 (navigation, cycle de vie)
- CDC Flutter §9.5 (états d'écran homogènes)
- CDC Flutter §12.1 (synchronisation multi-appareils)
- CDC Flutter §13.1 (gestion centralisée des erreurs réseau)
- CDC Global §10.3 (charte, sanctions)
- CDC Global §11.2 (dispositif de modération)
- CDC Backend §5.1 (sessions, rate limiting)

## 🧩 Issues de l'épopée (19)

{{CHILDREN}}
