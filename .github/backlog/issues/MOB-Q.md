> **MOB-Q** · Épopée · Phase 1 — MVP

## 🎯 Objectif

Offrir un espace Paramètres et compte complet, transparent et conforme RGPD : préférences d'affichage (langue, thème, taille du texte, accessibilité) appliquées immédiatement, consentements distincts et révocables avec historique, gestion du compte (mot de passe, e-mail, appareils connectés), export des données, suppression définitive en trois étapes, déconnexion, mentions légales et aide.

## 📦 Périmètre

- Écran Paramètres (Q-01) et sous-écrans Langue (Q-02), Thème (Q-03), Taille du texte et accessibilité (Q-04)
- Confidentialité et consentements (Q-05), révocation de la géolocalisation (Q-06), visibilité sur la carte
- Gérer mon compte (Q-07) : mot de passe (Q-08), e-mail (Q-09), appareils connectés (Q-10)
- Export RGPD des données (Q-11, Q-12) et suppression de compte en 3 étapes (Q-13, Q-14, Q-15)
- Confirmation de déconnexion (Q-16), À propos et mentions légales (Q-17), Aide et support (Q-18)
- SettingsCubit, stockage local, synchronisation avec le compte, i18n FR/EN/ES, accessibilité, sécurité des actions sensibles, tests

## 🚫 Hors périmètre

- Écrans de connexion, inscription et vérification e-mail (groupe auth)
- Écran de profil Culé Passport et badges (module passport)
- Détail des préférences de notification (groupe O)
- Implémentation serveur des nouveaux endpoints (dépôt API) et pages web légales
- Back-office de suppression/anonymisation (dépôt admin)

## 📚 Références

- CDC Global §2.13, §2.15, §10.2
- CDC Flutter §7.12, §8, §9, §13
- CDC Backend §3.1, §4.8, §5

## 🧩 Issues de l'épopée (31)

{{CHILDREN}}
