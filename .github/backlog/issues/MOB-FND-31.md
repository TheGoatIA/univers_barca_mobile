> **MOB-FND-31** · Fonctionnel · Priorité **P0** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

`NotificationService` demande la permission dès l'initialisation, ce qui contredit le CDC §6.4 (aucune permission demandée au lancement, priming préalable). Les handlers background/terminated et l'enregistrement du jeton FCM côté API sont à faire.

## ✅ Objectif

Recevoir des push dans les trois états de l'app et enregistrer l'appareil auprès de l'API.

## 📐 Règles de gestion

- Permission demandée uniquement via l'écran de priming (issue permissions) ; refus = app pleinement fonctionnelle.
- Jeton FCM envoyé à l'API après login et à chaque `onTokenRefresh` ; supprimé au logout.
- Handler background top-level `@pragma('vm:entry-point') firebaseMessagingBackgroundHandler` (aucune dépendance GetIt).
- Foreground : message affiché en notification locale (canal par catégorie) ; ouverture → deep link.
- Topics par langue (`lang_fr|en|es`) abonnés selon la locale, désabonnement au changement.
- iOS : `setForegroundNotificationPresentationOptions`, APNs configuré.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `POST` | `/api/v1/users/me/devices` | Enregistrement du jeton d'appareil (endpoint à spécifier côté API) | {"fcmToken":"…","platform":"ios\|android","locale":"fr"} | {"success":true} |

## 🛠️ Tâches

- [ ] Refactorer `lib/core/services/notification_service.dart` en `PushService` (interface) + `FirebasePushService`.
- [ ] Créer `DeviceRegistrationRepository` (appel API à confirmer côté Backend, endpoint de jetons d'appareil).
- [ ] Brancher `onMessage`, `onMessageOpenedApp`, `getInitialMessage` vers le deep link resolver.
- [ ] Gérer le changement de topic de langue depuis `LocaleCubit`.
- [ ] Configurer capabilities iOS (Push, Background Modes) et `POST_NOTIFICATIONS` Android 13+.
- [ ] Tests sur simulateur avec payloads JSON.

## ✔️ Critères d'acceptation

- [ ] Étant donné permission refusée alors aucune erreur et l'app reste utilisable.
- [ ] Étant donné un push `data.route=/match/1` app fermée quand l'utilisateur tape alors l'app s'ouvre sur ce match.
- [ ] Étant donné un logout alors le jeton est désenregistré.
- [ ] Étant donné la bascule de langue FR→ES alors le topic `lang_fr` est quitté et `lang_es` rejoint.

## 🧪 Tests à écrire

- [ ] Test unitaire : sélection de canal selon `data.category`.
- [ ] Test unitaire : topic de langue.
- [ ] Test unitaire : handler background sans GetIt.
- [ ] Test unitaire : refresh de jeton → API.

## ♿ Accessibilité et i18n

- Libellés de canaux Android localisés.

## 🔗 Dépendances

À réaliser après : `MOB-FND-29` · `MOB-FND-33` · `MOB-FND-17` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §6.3
- CDC Flutter §6.4
- CDC Global §2.12

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
