> **MOB-FND-45** · Sécurité · Priorité **P2** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

CDC §13 : certificate pinning optionnel en prod, détection root/jailbreak en télémétrie seule (V1), jamais de donnée sensible dans les logs. Le pubspec comporte `freerasp` et `sqlcipher_flutter_libs` commentés (Dart ≥ 3.10 requis).

## ✅ Objectif

Poser les durcissements décidés, chacun derrière un flag de configuration.

## 📐 Règles de gestion

- Pinning : empreinte SPKI SHA-256 de 2 certificats (courant + secours) pour `api.univers-barca.app`, activable par `AppConfig.enablePinning` ; échec = erreur réseau + télémétrie, pas de crash.
- Root/jailbreak : détection pour télémétrie uniquement (événement `device_compromised`), aucun blocage.
- SQLCipher : clé générée au 1er lancement, stockée dans secure storage ; migration de la base en clair → chiffrée.
- Masquage de l'aperçu multitâche (iOS) sur écrans sensibles ; `FLAG_SECURE` optionnel Android pour mot de passe.
- Audit des logs : test automatisé cherchant des jetons dans les sorties.

## 🛠️ Tâches

- [ ] Évaluer et activer `freerasp` et `sqlcipher_flutter_libs` quand la toolchain Dart le permet (ADR).
- [ ] Créer `lib/core/security/pinning_http_client.dart`.
- [ ] Créer `DeviceIntegrityService` (télémétrie).
- [ ] Créer la migration Drift vers base chiffrée.
- [ ] Ajouter `SecureScreen` (wrapper).
- [ ] Ajouter test « pas de secret dans les logs ».

## ✔️ Critères d'acceptation

- [ ] Étant donné un certificat inattendu et le pinning activé alors la requête échoue sans crash.
- [ ] Étant donné un appareil rooté alors l'app fonctionne et un événement est envoyé.
- [ ] Étant donné la base chiffrée alors elle est illisible sans la clé.
- [ ] Étant donné un log de requête alors aucun jeton n'apparaît.

## 🧪 Tests à écrire

- [ ] Test unitaire : validation SPKI.
- [ ] Test unitaire : migration de base.
- [ ] Test unitaire : détection (mock).
- [ ] Test unitaire : scan des logs.

## 🔗 Dépendances

À réaliser après : `MOB-FND-06` · `MOB-FND-19` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §13
- CDC Global §3.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
