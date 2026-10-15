> **MOB-O** · Épopée · Phase 1 — MVP

## 🎯 Objectif

Donner au supporter le contrôle total des notifications : réception fiable des push FCM (rappels de match, série en danger, anniversaires et histoire, activité des groupes, Fantasy, nouveautés), centre de préférences granulaire par catégorie, heures calmes, boîte de réception in-app, états sans permission, et rendu cohérent écran verrouillé / premier plan avec deep links vers l'écran pertinent.

## 📦 Périmètre

- Centre de préférences (6 catégories) et écrans de détail : Matchs (O-02), Série (O-03), Heures calmes (O-04)
- Boîte de réception : liste, filtres Toutes/Matchs/Communauté, « Tout lire », état vide (O-05, O-06)
- État « Notifications désactivées » et réactivation via les réglages système (O-07)
- Réception FCM : jeton d'appareil, permission avec priming, canaux Android, handlers premier plan / arrière-plan / app fermée, rendu écran verrouillé (O-08, O-09) et bannière dans l'application (O-10)
- Deep links par type de notification, badge de non-lus, localisation, consentement RGPD
- Couche données (Chopper, Drift), SettingsCubit/NotificationPreferencesCubit, NotificationInboxCubit, i18n, accessibilité, tests

## 🚫 Hors périmètre

- Orchestration et envoi côté serveur (jobs BullMQ `send-notifications`, planification cron, batch FCM) : dépôt API
- Contenu éditorial des annonces « Nouveautés » (admin)
- Écran Paramètres général et consentements (groupe Q)
- Fil de discussion des groupes (groupe communauté)
- Rappel de streak dans le dashboard (groupe C)

## 📚 Références

- CDC Global §2.12, §2.15, §10.2
- CDC Flutter §6.1, §6.3, §6.4, §7.11
- CDC Backend §3.10, §7, §11.4

## 🧩 Issues de l'épopée (28)

{{CHILDREN}}
