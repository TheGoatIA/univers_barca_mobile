> **MOB-FND-33** · Fonctionnel · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC §6.4 liste quatre permissions (notifications, géolocalisation opt-in, agenda, photos) avec comportement de repli et interdit toute demande groupée au lancement.

## ✅ Objectif

Un service unique `PermissionFlow` qui explique avant de demander et gère refus/permanent.

## 📐 Règles de gestion

- Étapes : état actuel → écran/sheet de priming (explication + bénéfice) → demande système → traitement refus.
- Refus : repli prévu (notif : rappel non intrusif dans paramètres ; géoloc : saisie manuelle pays/ville ; agenda : fichier .ics/webcal ; photos : message + partage direct).
- Refus permanent : bouton « Ouvrir les réglages » (`openAppSettings`).
- Géolocalisation : approximative uniquement, consentement dédié historisé ; jamais avant opt-in.
- Aucune demande au lancement ; une relance de priming maximum tous les 30 jours.

## 🛠️ Tâches

- [ ] Créer `lib/core/permissions/permission_flow.dart` (sur `permission_handler`).
- [ ] Créer `PermissionPrimingSheet` basé sur `BarcaBottomSheet` (groupe ZC).
- [ ] Enum `AppPermission` + textes ARB par permission.
- [ ] Persister la date de dernière demande (`LocalPrefs`).
- [ ] Mettre à jour le manifest iOS (`NSLocationWhenInUseUsageDescription`, etc.) localisés FR/EN/ES.
- [ ] Tests avec `PermissionHandlerPlatform` fake.

## ✔️ Critères d'acceptation

- [ ] Étant donné une première demande alors le priming s'affiche avant l'invite système.
- [ ] Étant donné un refus permanent alors le bouton « Ouvrir les réglages » est proposé.
- [ ] Étant donné un refus géoloc alors le flux bascule sur la saisie manuelle.
- [ ] Étant donné un second refus < 30 jours alors aucun nouveau priming.

## 🧪 Tests à écrire

- [ ] Test unitaire : machine d'états (granted/denied/permanentlyDenied/limited).
- [ ] Test widget : sheet de priming.
- [ ] Test unitaire : fréquence 30 j.
- [ ] Test unitaire : repli par permission.

## ♿ Accessibilité et i18n

- Clés ARB `permission_<nom>_title|body|cta`.

## 🔗 Dépendances

À réaliser après : `MOB-FND-18` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §6.4
- CDC Global §10.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
