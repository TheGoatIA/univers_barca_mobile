> **MOB-FND-24** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC §8.1 : langue du système à la première ouverture, bascule manuelle depuis les paramètres, persistée localement ET côté compte ; changement immédiat sans redémarrage (Global §3.3).

## ✅ Objectif

Gérer la locale de l'app de bout en bout.

## 📐 Règles de gestion

- Première ouverture : locale système si dans {fr,en,es}, sinon `fr`.
- Bascule : `LocaleCubit.setLocale(Locale)` → persistée (`LocalPrefs.locale`) → `PATCH /api/v1/users/me {locale}` si connecté (file hors-ligne sinon).
- À la connexion, la locale du compte prime sur la locale locale.
- `MaterialApp.router(locale: …, supportedLocales: [fr,en,es])` (CDC §8.4).
- Le changement de langue invalide les caches de contenus localisés (`CachedMatches`, historique, quiz).

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `PATCH` | `/api/v1/users/me` | Met à jour la langue du compte | {"locale":"es"} | {"success":true,"data":{…user}} |

## 🛠️ Tâches

- [ ] Créer `lib/core/l10n/locale_cubit.dart` et `LocaleState`.
- [ ] Brancher `LocaleCubit` dans `lib/app.dart` et `LocaleProvider` (intercepteur).
- [ ] Écrire `LocaleRepository` (prefs + PATCH).
- [ ] Invalider les caches via `CacheInvalidator`.
- [ ] Ajouter `Locale('es')` aux tests helpers.

## ✔️ Critères d'acceptation

- [ ] Étant donné un système en allemand alors l'app démarre en français.
- [ ] Étant donné une bascule vers EN alors l'UI change sans redémarrage et `Accept-Language: en` est envoyé.
- [ ] Étant donné une bascule hors-ligne alors le PATCH est mis en file.
- [ ] Étant donné un login avec compte `es` alors l'app passe en espagnol.

## 🧪 Tests à écrire

- [ ] bloc_test : init système.
- [ ] bloc_test : setLocale persiste.
- [ ] Test unitaire : PATCH en file hors-ligne.
- [ ] Test widget : rebuild immédiat.

## 🔗 Dépendances

À réaliser après : `MOB-FND-18` · `MOB-FND-22` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §8.1
- CDC Flutter §8.4
- CDC Global §3.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
