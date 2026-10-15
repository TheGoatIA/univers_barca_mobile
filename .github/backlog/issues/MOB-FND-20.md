> **MOB-FND-20** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC §5.3 fixe les stratégies par donnée : dashboard en cache-then-network, défi du jour en réseau prioritaire avec repli cache, historique en lecture cache sans resynchronisation, assistant IA sans mode hors-ligne.

## ✅ Objectif

Fournir des helpers réutilisables par tous les repositories pour appliquer ces stratégies sans les réimplémenter.

## 📐 Règles de gestion

- `CachePolicy` : `cacheThenNetwork`, `networkFirst`, `cacheOnly`, `networkOnly`.
- TTL par type : dashboard 15 min ; défi du jour : jusqu'à minuit (fuseau de l'utilisateur) ; historique : 7 j ; fiches joueurs : 24 h ; profil : 1 h.
- `Stream<Either<Failure,CachedValue<T>>>` : émet le cache (`fromCache:true, cachedAt`) puis le réseau ; hors-ligne sans cache → `Left(NetworkFailure)`.
- Les données de compte (progression, badges, Fantasy) ne sont jamais source de vérité locale (CDC §12.1).
- Toute fonctionnalité temps réel (vote GOAT, discussion de groupe, IA) affiche l'état « hors-ligne » plutôt que de simuler.

## 🛠️ Tâches

- [ ] Créer `lib/core/cache/cache_policy.dart` et `cached_value.dart`.
- [ ] Créer `lib/core/cache/cached_fetcher.dart` (`Stream<…> fetch<T>({local, remote, policy, ttl})`).
- [ ] Exposer `fromCache` et `cachedAt` pour afficher « derniers contenus » (bandeau ZB-06).
- [ ] Appliquer au repository de référence `players`.
- [ ] Ajouter métrique `cache_hit`/`cache_miss` à la télémétrie.
- [ ] Écrire `docs/OFFLINE.md` (tableau des stratégies).

## ✔️ Critères d'acceptation

- [ ] Étant donné un cache valide et le réseau OK quand `cacheThenNetwork` est lu alors deux émissions : cache puis réseau.
- [ ] Étant donné hors-ligne et cache expiré mais présent alors la valeur périmée est servie avec `isStale:true`.
- [ ] Étant donné `networkFirst` et réseau KO alors le cache est servi.
- [ ] Étant donné `networkOnly` hors-ligne alors `NetworkFailure`.

## 🧪 Tests à écrire

- [ ] Test unitaire : 4 politiques × (en ligne, hors-ligne).
- [ ] Test unitaire : TTL minuit.
- [ ] Test unitaire : pas de double émission identique.
- [ ] Test unitaire : repository players migré.

## 🔗 Dépendances

À réaliser après : `MOB-FND-18` · `MOB-FND-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §5.3
- CDC Global §3.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
