> **MOB-ZB-15** · Écran · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Barre d'onglets téléphone : Accueil, Jeux, Historique, Fantasy, Communauté ; état actif (icône remplie garnet + libellé), pastille rouge pour nouvelle activité. Chaque onglet conserve sa pile de navigation (FND `shell-route-5-onglets`).

## ✅ Objectif

Composant visuel `BarcaBottomNav` consommé par le ShellRoute.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-06` — Navigation
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_light.webp?raw=true' width='330' alt='ZB-06 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__desktop_dark.webp?raw=true' width='330' alt='ZB-06 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_light.webp?raw=true' width='230' alt='ZB-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-06_navigation__mobile_dark.webp?raw=true' width='230' alt='ZB-06 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 06 » · « Navigation » · « Barre d’onglets à 5 entrées sur téléphone, rail de navigation sur tablette, barre d’application, onglets et fil d’Ariane côté admin. » · « Barre d’onglets (téléphone) » · « 5 onglets : Accueil, Jeux, Historique, Fantasy, Communauté — chaque onglet conserve sa propre pile de navigation. » · « Accueil actif » · « Accueil » · « Jeux » · « Historique » · « Fantasy » · « Communauté » · « pastille rouge = nouvelle activité » · « Fantasy actif » · « Rail de navigation (tablette) et barre d’application » · « Rail 96 px » · « Barre d’application » · « Calendrier » · « Quiz du jour » · « 125 ans d’histoire » · « Bandeaux d’état » · « Hors-ligne · derniers contenus » · « Connexion instable » · « Navigation admin » · « Onglets » · « Identité » · « Biographie » · « Statistiques » · « Photo » · « Contenu » · « Joueurs »

**Composants repérés** : `avatar`, `banner`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-10](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-10%5D%22) · [ADM-ADS-15](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-15%5D%22) · [ADM-ADS-21](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-21%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [MOB-FND-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-16%5D%22) · [MOB-FND-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-21%5D%22) · [MOB-ZB-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-16%5D%22) · [MOB-ZB-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-17%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22) · [MOB-ZE-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-03%5D%22)

## 📐 Règles de gestion

- 5 entrées, hauteur 64 + safe area ; icône 24 + libellé 11 px ; actif garnet, inactif text-secondary.
- Capsule d'actif glissante 300 ms (ZE-01 « Changement d'onglet », fondu croisé 200 ms).
- Pastille : point rouge 8 px ou compteur ; double-tap sur onglet actif = retour en haut de pile.
- Haptique selectionClick.

## 🛠️ Tâches

- [ ] Créer `barca_bottom_nav.dart` et `BarcaNavDestination` (icône, icône active, label, badge).
- [ ] Intégrer au ShellRoute FND via builder.
- [ ] Animation de capsule avec `AnimatedPositioned`.
- [ ] Masquage optionnel au scroll (désactivé par défaut).
- [ ] Tests et goldens (Accueil actif, Fantasy actif).

## ✔️ Critères d'acceptation

- [ ] Étant donné l'onglet Accueil actif, quand on tape Fantasy, alors la capsule glisse en 300 ms et la destination change.
- [ ] Étant donné un point d'activité sur Communauté, alors une pastille rouge s'affiche.
- [ ] Étant donné un double-tap sur l'onglet actif, alors la pile revient à la racine.

## 🧪 Tests à écrire

- [ ] Widget : sélection et callback.
- [ ] Widget : pastille.
- [ ] Widget : double-tap.
- [ ] Golden : Accueil actif / Fantasy actif clair/sombre.

## ♿ Accessibilité et i18n

- Semantics « Accueil, onglet 1 sur 5, sélectionné » ; pastille « nouvelle activité ».

## 🔗 Dépendances

À réaliser après : `MOB-ZB-11` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
