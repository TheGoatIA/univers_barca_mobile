> **MOB-B-20** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Écran d'amorçage (priming) avant la demande système : explique l'intérêt des notifications, conformément au principe CDC Flutter §6.4 (aucune permission demandée au lancement).

## ✅ Objectif

Implémenter `NotificationPrimingPage` conforme à B-15 et la demande de permission.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-15` — Rappels de match — pré-permission
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-15_rappels-de-match-pre-permission__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-15_rappels-de-match-pre-permission__phone_light.webp?raw=true' width='230' alt='B-15 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-15_rappels-de-match-pre-permission__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-15_rappels-de-match-pre-permission__phone_dark.webp?raw=true' width='230' alt='B-15 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-15_rappels-de-match-pre-permission__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-15_rappels-de-match-pre-permission__tablet_light.webp?raw=true' width='330' alt='B-15 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-15_rappels-de-match-pre-permission__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-15_rappels-de-match-pre-permission__tablet_dark.webp?raw=true' width='330' alt='B-15 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « Ne rate plus un match » · « Reçois un rappel avant le coup d’envoi, le résultat final et l’alerte quand ta série est en danger. Tu choisis tout dans les réglages. » · « Activer les notifications » · « Plus tard »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-29%5D%22) · [MOB-B-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-01%5D%22) · [MOB-B-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-13%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Textes : « Ne rate plus un match », « Reçois un rappel avant le coup d'envoi, le résultat final et l'alerte quand ta série est en danger. Tu choisis tout dans les réglages. », bouton « Activer les notifications », lien « Plus tard ».
- « Activer » : appelle `FirebaseMessaging.requestPermission()` (iOS/Android 13+) ; si accordé → enregistrer le jeton FCM (DeviceToken : platform, token) et `POST /auth/consents {notifications:true}`.
- « Plus tard » ou refus : l'application reste pleinement fonctionnelle ; `notifications=false` ; un rappel non intrusif apparaîtra dans les paramètres.
- Refus définitif système : ne pas redemander ; proposer d'ouvrir les réglages seulement depuis les paramètres.

## 🔄 Comportement et états

- Après action : `/home` avec transition de fondu et `profileSetupDone` conservé.
- Android < 13 : permission accordée par défaut, message identique.
- Échec d'enregistrement du jeton : mise en file silencieuse.

## 🛠️ Tâches

- [ ] Créer `lib/features/auth/presentation/pages/notification_priming_page.dart`.
- [ ] Compléter `lib/core/services/notification_service.dart` : `requestPermission()`, `getToken()`, `onTokenRefresh`.
- [ ] Créer `RegisterDeviceTokenUseCase` (endpoint d'enregistrement à confirmer côté API ; modèle `DeviceToken` présent).
- [ ] Brancher `SetConsentUseCase(notifications)`.
- [ ] Ajouter la clé `POST_NOTIFICATIONS` dans `AndroidManifest.xml` et la capacité Push iOS.
- [ ] Clés ARB `notifPrimingTitle`, `notifPrimingBody`, `enableNotifications`.
- [ ] Golden clair/sombre.
- [ ] Documenter le flux FCM dans `docs/`.

## ✔️ Critères d'acceptation

- [ ] Étant donné B-15 quand on appuie « Activer » alors la boîte système s'affiche une seule fois.
- [ ] Étant donné permission accordée quand le jeton est obtenu alors il est envoyé au serveur et le consentement notifications vaut true.
- [ ] Étant donné « Plus tard » quand on l'appuie alors aucune permission système n'est demandée et `/home` s'affiche.
- [ ] Étant donné refus système quand l'utilisateur refuse alors l'app continue normalement.

## 🧪 Tests à écrire

- [ ] Test : « Plus tard » ne déclenche pas requestPermission.
- [ ] Test : accordé → consentement + jeton.
- [ ] Test : refus → pas de relance.
- [ ] Golden `notification_priming`.
- [ ] Test : échec jeton → file.

## ♿ Accessibilité et i18n

- Bouton principal et lien ≥ 48 dp.

## 🔗 Dépendances

À réaliser après : `MOB-B-13` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §6.4
- CDC Flutter §6.3
- CDC Global §10.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
