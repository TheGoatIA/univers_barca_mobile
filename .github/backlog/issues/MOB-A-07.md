> **MOB-A-07** · Écran · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Quand l'API renvoie 429 (par exemple limite de messages de l'assistant), l'utilisateur voit un écran amical avec un compte à rebours « 00:42 » ; le bouton Réessayer est inactif jusqu'à la fin.

## ✅ Objectif

Implémenter `RateLimitedPage`/`BarcaErrorState.rateLimited` avec compte à rebours précis basé sur `Retry-After`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `A-05` — Trop de requêtes 429
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-05_trop-de-requetes-429__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-05_trop-de-requetes-429__phone_light.webp?raw=true' width='230' alt='A-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-05_trop-de-requetes-429__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-05_trop-de-requetes-429__phone_dark.webp?raw=true' width='230' alt='A-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-05_trop-de-requetes-429__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-05_trop-de-requetes-429__tablet_light.webp?raw=true' width='330' alt='A-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-05_trop-de-requetes-429__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-05_trop-de-requetes-429__tablet_dark.webp?raw=true' width='330' alt='A-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Assistant » · « Doucement, champion ! » · « Tu as atteint la limite de messages pour le moment. Tu pourras écrire de nouveau dans : » · « Réessayer »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-41](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-41%5D%22) · [API-PLAT-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-06%5D%22) · [API-PLAT-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-07%5D%22) · [API-PLAT-41](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-41%5D%22) · [API-PLAT-55](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-55%5D%22) · [MOB-A-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-05%5D%22) · [MOB-A-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-17%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

## 📐 Règles de gestion

- Textes : en-tête « ASSISTANT » avec croix de fermeture, titre « Doucement, champion ! », message « Tu as atteint la limite de messages pour le moment. Tu pourras écrire de nouveau dans : », compte à rebours « 00:42 » en grand (Barlow Condensed, format mm:ss), bouton « Réessayer » grisé.
- Le compte à rebours est calculé sur l'horloge monotone (Stopwatch) à partir de `retryAfter` ; il survit à une rotation d'écran et à une mise en arrière-plan (recalcul au `resumed`).
- À 00:00 : le bouton devient actif avec animation d'opacité 200 ms ; l'appui relance la requête d'origine.
- Limites serveur de référence : global 300 requêtes/min, auth 20 requêtes/15 min, actions sensibles 5/h ; message API par défaut `Trop de requêtes, réessayez dans une minute` (le client affiche son propre texte localisé).

## 🔄 Comportement et états

- La croix ferme l'écran et revient à la page appelante (le chat reste consultable).
- Durée > 1 h : format h:mm:ss.
- Retry-After absent : 60 s par défaut.
- Plusieurs 429 successifs : le compte à rebours est prolongé, jamais raccourci.

## 🛠️ Tâches

- [ ] Créer `lib/features/system/presentation/pages/rate_limited_page.dart` et `widgets/countdown_timer_text.dart`.
- [ ] Créer `lib/features/system/presentation/cubit/rate_limit_cubit.dart` (`Ticker` 1 Hz, état `remaining`).
- [ ] Brancher `RateLimitedException` du bus d'événements sur l'ouverture de l'écran (bottom sheet plein écran pour le chat, page pour le reste).
- [ ] Ajouter les clés ARB `rateLimitedTitle`, `rateLimitedMessage`, `rateLimitedRetry`.
- [ ] Utiliser `Semantics(liveRegion)` limité aux paliers (toutes les 10 s) pour ne pas spammer le lecteur d'écran.
- [ ] Golden clair/sombre et état « terminé ».

## ✔️ Critères d'acceptation

- [ ] Étant donné un 429 avec Retry-After 42 quand l'écran s'ouvre alors « 00:42 » s'affiche et décrémente chaque seconde.
- [ ] Étant donné le compte à rebours à 00:00 quand il atteint zéro alors « Réessayer » devient actif.
- [ ] Étant donné une mise en arrière-plan de 30 s quand l'app revient alors le temps restant tient compte de l'écart.
- [ ] Étant donné « Réessayer » actif quand l'utilisateur appuie alors la requête d'origine est rejouée.

## 🧪 Tests à écrire

- [ ] Test bloc avec `fake_async` : 42 → 0.
- [ ] Test : prolongation sur second 429.
- [ ] Widget test : bouton désactivé tant que remaining > 0.
- [ ] Golden `rate_limited` clair/sombre.
- [ ] Test : format h:mm:ss.

## ♿ Accessibilité et i18n

- Annonce du temps restant toutes les 10 s seulement.
- Bouton désactivé exposé `enabled:false` aux lecteurs d'écran.
- Chiffres tabulaires pour éviter le tremblement.

## 🔗 Dépendances

À réaliser après : `MOB-A-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §13.1
- CDC Backend §5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
