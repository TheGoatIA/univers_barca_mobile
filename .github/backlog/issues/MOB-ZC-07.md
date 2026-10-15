> **MOB-ZC-07** · Écran · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Squelettes de la planche : carte, liste (avatar + 2 lignes) et tableau. ZE-01 : shimmer 1,6 s en boucle ; fondu croisé de 200 ms vers le contenu sans saut de mise en page.

## ✅ Objectif

`BarcaSkeleton` + `BarcaShimmer` composables.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZC-02` — Chargement et progression
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_light.webp?raw=true' width='330' alt='ZC-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_dark.webp?raw=true' width='330' alt='ZC-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_light.webp?raw=true' width='230' alt='ZC-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_dark.webp?raw=true' width='230' alt='ZC-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 08 » · « Chargement » · « Spinner pour les actions courtes, squelette « shimmer » pour les contenus, progression déterministe pour les opérations longues. Chaque écran gère chargement, contenu, vide et erreur. » · « Indicateurs de chargement » · « Spinner · petit » · « 18 · 28 · 44 px » · « Spinner sur fond de marque » · « Dans un bouton » · « Connexion… » · « Envoi… » · « Points (assistant) » · « Barça AI écrit… » · « Squelettes (shimmer) » · « Carte » · « Liste » · « Tableau admin » · « Progression » · « Barres » · « fine · standard · épaisse » · « Anneaux » · « Génération de wallpaper » · « En file d’attente » · « 64 % » · « cible » · « 15 s » · « Chargeur de marque » · « Préparation de ton compte » · « Tirer pour actualiser et chargement paginé » · « Pull-to-refresh » · « Mise à jour… »

**Composants repérés** : `btn`, `card`, `spinner`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-19](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-19%5D%22) · [MOB-FND-38](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-38%5D%22) · [MOB-ZB-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-02%5D%22) · [MOB-ZC-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-06%5D%22) · [MOB-ZC-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-08%5D%22) · [MOB-ZC-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-09%5D%22) · [MOB-ZC-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-12%5D%22) · [MOB-ZC-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-17%5D%22)

#### `ZE-01` — Bibliothèque d’animations — images clés
_Module : Animations et micro-interactions_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__desktop_light.webp?raw=true' width='330' alt='ZE-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__desktop_dark.webp?raw=true' width='330' alt='ZE-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__mobile_light.webp?raw=true' width='230' alt='ZE-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__mobile_dark.webp?raw=true' width='230' alt='ZE-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Mouvement · 01 » · « Animations clés » · « Chaque interaction a une réponse immédiate, un mouvement naturel et une fin nette. Ressorts doux, aucune animation décorative qui retarde l’action. Les images clés ci-dessous montrent le déroulé ; la version animée est dans le prototype interactif. » · « Univers Barça · Design System v1.1 » · « Mouvement & ergonomie » · « iOS · Android · Tablette » · « Entrées et surfaces » · « Ouverture d’un bottom sheet » · « Surface » · « 0 ms » · « 120 ms » · « 240 ms » · « 360 ms » · « 480 ms » · « 480 ms · cubic-bezier(.16,1,.3,1) · fond flouté +46 % · haptique : aucune » · « Modale (pop + overshoot) » · « 160 ms » · « 300 ms » · « 500 ms » · « 500 ms · ressort léger (overshoot 3 %) · haptique : notification succès » · « Jeux et gratification » · « Bonne réponse au quiz » · « Feedback » · « Rakitić » · « Repos » · « Appui · 100 ms » · « Validation · 220 ms » · « Check · 300 ms » · « +15 PTS » · « Gain · 600 ms »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-31](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-31%5D%22) · [MOB-ZC-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-03%5D%22) · [MOB-ZD-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-13%5D%22) · [MOB-ZD-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-14%5D%22) · [MOB-ZE-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-01%5D%22) · [MOB-ZE-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-02%5D%22) · [MOB-ZE-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-03%5D%22) · [MOB-ZE-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-07%5D%22) · [MOB-ZE-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-08%5D%22) · [MOB-ZE-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-17%5D%22) · [MOB-ZE-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-18%5D%22)

## 📐 Règles de gestion

- Couleurs : base surface-variant, reflet blanc 40 % (sombre : blanc 8 %) ; angle 20°, période 1 600 ms linéaire.
- Blocs : `BarcaSkeletonBox(w,h,radius)`, `Circle`, `Line` ; rayons identiques aux composants réels (16 cartes).
- Squelette de même géométrie que le contenu (aucun saut) ; fondu croisé 200 ms (`AnimatedSwitcher`).
- Un seul `AnimationController` partagé par écran (`ShimmerScope`) pour économiser les frames.
- Animations réduites : pas de balayage, couleur statique.

## 🛠️ Tâches

- [ ] Créer `barca_shimmer.dart` (ShaderMask + `LinearGradient` translaté).
- [ ] Créer `barca_skeleton.dart` avec `.card()`, `.listTile(count)`, `.tableRow(columns)`.
- [ ] Créer `ShimmerScope` (InheritedWidget + ticker).
- [ ] Créer `SkeletonSwitcher(loading, skeleton, child)` 200 ms.
- [ ] Brancher aux écrans de référence (players).
- [ ] Test de perf : coût < 2 ms/frame en profile.
- [ ] Tests, goldens (frame figé).

## ✔️ Critères d'acceptation

- [ ] Étant donné un chargement, alors le squelette de liste affiche 3+ lignes avec balayage de 1,6 s.
- [ ] Étant donné l'arrivée des données, alors un fondu croisé de 200 ms remplace le squelette sans décalage.
- [ ] Étant donné 10 squelettes, alors un seul controller anime.
- [ ] Étant donné animations réduites, alors aucun balayage.

## 🧪 Tests à écrire

- [ ] Widget : un seul ticker.
- [ ] Widget : fondu 200 ms.
- [ ] Widget : géométrie identique au contenu réel (même hauteur).
- [ ] Golden : carte/liste/tableau (shimmer figé).

## ♿ Accessibilité et i18n

- Squelette `ExcludeSemantics`, conteneur annonce « Chargement ».

## 🔗 Dépendances

À réaliser après : `MOB-ZC-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.5
- CDC Global §3.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
