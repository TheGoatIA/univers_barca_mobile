> **MOB-B** · Épopée · Phase 1 — MVP

## 🎯 Objectif

Permettre à un supporter de découvrir l'application, créer son compte en quelques secondes, vérifier son e-mail, personnaliser son profil (pays/ville, joueur préféré, ancienneté) et se connecter de façon sûre, tout en recueillant des consentements RGPD explicites et historisés.

## 📦 Périmètre

- Choix de la langue, carrousel de 3 pages, écran de bienvenue
- Inscription e-mail/mot de passe avec validations et jauge de force, charte de la communauté, consentements
- Vérification de l'e-mail par code à 6 chiffres avec renvoi chronométré
- Personnalisation optionnelle : pays/ville (recherche), joueur préféré, ancienneté de supporter
- Pré-permission des notifications (priming)
- Connexion (erreur, chargement, « Rester connecté »), connexion sociale Apple/Google
- Mot de passe oublié, nouveau mot de passe via lien, confirmation
- AuthBloc global, garde de navigation, stockage sécurisé des jetons
- Accessibilité, i18n FR/EN/ES, tests golden et d'intégration

## 🚫 Hors périmètre

- Écrans système (suspension, session expirée, hors-ligne) : groupe A
- Paramètres du compte (export RGPD, suppression, déconnexion de tous les appareils) : groupe paramètres
- Évolutions de l'API (code OTP, renvoi, endpoint social, champs favoritePlayerId/supporterLevel) : dépôt API
- Consentement de géolocalisation approximative de la carte : groupe carte

## 📚 Références

- CDC Flutter §7.1
- CDC Flutter §6.4
- CDC Flutter §12.1
- CDC Global §2.13
- CDC Global §10.2
- CDC Global §10.3
- CDC Backend §3.1
- CDC Backend §5.1

## 🧩 Issues de l'épopée (29)

{{CHILDREN}}
