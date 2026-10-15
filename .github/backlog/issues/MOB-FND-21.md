> **MOB-FND-21** · Fonctionnel · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

`NetworkInfo` ne répond qu'à une question ponctuelle (`hasConnection`). L'UI doit afficher les bandeaux « Hors-ligne · derniers contenus » et « Connexion instable » (ZB-06) et déclencher la resynchronisation au retour du réseau.

## ✅ Objectif

Exposer un état réseau observable à 3 niveaux.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-06` — Navigation
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_light.webp?raw=true' width='330' alt='ZB-06 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_dark.webp?raw=true' width='330' alt='ZB-06 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_light.webp?raw=true' width='230' alt='ZB-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_dark.webp?raw=true' width='230' alt='ZB-06 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 06 » · « Navigation » · « Barre d’onglets à 5 entrées sur téléphone, rail de navigation sur tablette, barre d’application, onglets et fil d’Ariane côté admin. » · « Barre d’onglets (téléphone) » · « 5 onglets : Accueil, Jeux, Historique, Fantasy, Communauté — chaque onglet conserve sa propre pile de navigation. » · « Accueil actif » · « Accueil » · « Jeux » · « Historique » · « Fantasy » · « Communauté » · « pastille rouge = nouvelle activité » · « Fantasy actif » · « Rail de navigation (tablette) et barre d’application » · « Rail 96 px » · « Barre d’application » · « Calendrier » · « Quiz du jour » · « 125 ans d’histoire » · « Bandeaux d’état » · « Hors-ligne · derniers contenus » · « Connexion instable » · « Navigation admin » · « Onglets » · « Identité » · « Biographie » · « Statistiques » · « Photo » · « Contenu » · « Joueurs »

**Composants repérés** : `avatar`, `banner`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-10](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-10%5D%22) · [ADM-ADS-15](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-15%5D%22) · [ADM-ADS-21](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-21%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [MOB-FND-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-16%5D%22) · [MOB-ZB-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-15%5D%22) · [MOB-ZB-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-16%5D%22) · [MOB-ZB-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-17%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22) · [MOB-ZE-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-03%5D%22)

## 📐 Règles de gestion

- États : `online`, `unstable` (≥ 2 échecs/timeouts sur 30 s ou latence > 5 s), `offline`.
- Sources : `internet_connection_checker` (stream) + signal des intercepteurs (`NetworkUnavailableException`).
- Debounce 1,5 s pour éviter le clignotement ; `offline → online` émet `ReconnectedEvent` pour la file de sync.
- Aucune requête de sondage quand l'app est en arrière-plan.

## 🛠️ Tâches

- [ ] Créer `lib/core/network/connectivity_cubit.dart`.
- [ ] Étendre `NetworkInfo` avec `Stream<bool> onStatusChange`.
- [ ] Brancher `RetryInterceptor`/`ErrorMapping` pour remonter les échecs.
- [ ] Fournir le cubit au niveau `MainShell`.
- [ ] Créer `NetworkBanner` (`BarcaBanner` de ZB-06) piloté par le cubit.

## ✔️ Critères d'acceptation

- [ ] Étant donné la perte de connexion quand 1,5 s s'écoulent alors l'état est `offline` et le bandeau noir apparaît.
- [ ] Étant donné 2 timeouts consécutifs alors `unstable` et bandeau ambré.
- [ ] Étant donné le retour du réseau alors `ReconnectedEvent` est émis une fois.

## 🧪 Tests à écrire

- [ ] bloc_test : transitions.
- [ ] Test unitaire : debounce (fake async).
- [ ] Test widget : bandeaux.
- [ ] Test unitaire : pas de sondage en pause.

## ♿ Accessibilité et i18n

- Clés ARB `network_offline_banner` (« Hors-ligne · derniers contenus »), `network_unstable_banner` (« Connexion instable »).

## 🔗 Dépendances

À réaliser après : `MOB-FND-11` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
