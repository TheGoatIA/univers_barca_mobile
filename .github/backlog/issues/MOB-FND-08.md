> **MOB-FND-08** · Fonctionnel · Priorité **P0** · Taille **XS** · Phase 0 — Socle technique

## 🎯 Contexte

Les contenus dynamiques (biographies, quiz, notifications, réponses IA) arrivent déjà localisés selon `Accept-Language` (CDC §8.1) ; aucune traduction côté client.

## ✅ Objectif

Envoyer la langue courante de l'app (pas celle du système) à chaque requête.

## 📐 Règles de gestion

- Valeurs : `fr`, `en`, `es` ; défaut `fr`.
- La langue vient de `LocaleCubit` (changement sans redémarrage, CDC Global §3.3) : l'intercepteur lit un `ValueListenable<Locale>`, pas un snapshot.
- Placé en 2e position (après Auth).

## 🛠️ Tâches

- [ ] Créer `lib/core/network/interceptors/locale_interceptor.dart`.
- [ ] Exposer `LocaleProvider` (interface) implémentée par `LocaleCubit`.
- [ ] Brancher dans `AppApiClient.create`.
- [ ] Test d'ordre de la chaîne dans `api_client_test.dart`.
- [ ] Documenter l'en-tête dans `docs/ARCHITECTURE.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné locale `es` quand une requête part alors `Accept-Language: es`.
- [ ] Étant donné un changement de langue en cours de session quand une nouvelle requête part alors la nouvelle valeur est utilisée.
- [ ] Étant donné une locale non supportée alors `fr` est envoyé.

## 🧪 Tests à écrire

- [ ] Test unitaire : trois locales.
- [ ] Test unitaire : changement dynamique.
- [ ] Test unitaire : locale invalide.

## 🔗 Dépendances

À réaliser après : `MOB-FND-07` · `MOB-FND-24` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §4.2
- CDC Flutter §8.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
