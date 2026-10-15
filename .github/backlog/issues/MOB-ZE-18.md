> **MOB-ZE-18** · Tests · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Les planches ZE donnent les images clés (0/120/240/360/480 ms pour la sheet, etc.). On fige ces instants en golden pour détecter les régressions de mouvement.

## ✅ Objectif

Suite `test/golden/motion/` et tests de chronologie.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZE-01` — Bibliothèque d’animations — images clés
_Module : Animations et micro-interactions_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__desktop_light.webp?raw=true' width='330' alt='ZE-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__desktop_dark.webp?raw=true' width='330' alt='ZE-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__mobile_light.webp?raw=true' width='230' alt='ZE-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-01_bibliotheque-d-animations-images-cles__mobile_dark.webp?raw=true' width='230' alt='ZE-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Mouvement · 01 » · « Animations clés » · « Chaque interaction a une réponse immédiate, un mouvement naturel et une fin nette. Ressorts doux, aucune animation décorative qui retarde l’action. Les images clés ci-dessous montrent le déroulé ; la version animée est dans le prototype interactif. » · « Univers Barça · Design System v1.1 » · « Mouvement & ergonomie » · « iOS · Android · Tablette » · « Entrées et surfaces » · « Ouverture d’un bottom sheet » · « Surface » · « 0 ms » · « 120 ms » · « 240 ms » · « 360 ms » · « 480 ms » · « 480 ms · cubic-bezier(.16,1,.3,1) · fond flouté +46 % · haptique : aucune » · « Modale (pop + overshoot) » · « 160 ms » · « 300 ms » · « 500 ms » · « 500 ms · ressort léger (overshoot 3 %) · haptique : notification succès » · « Jeux et gratification » · « Bonne réponse au quiz » · « Feedback » · « Rakitić » · « Repos » · « Appui · 100 ms » · « Validation · 220 ms » · « Check · 300 ms » · « +15 PTS » · « Gain · 600 ms »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-31](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-31%5D%22) · [MOB-ZC-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-03%5D%22) · [MOB-ZC-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-07%5D%22) · [MOB-ZD-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-13%5D%22) · [MOB-ZD-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-14%5D%22) · [MOB-ZE-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-01%5D%22) · [MOB-ZE-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-02%5D%22) · [MOB-ZE-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-03%5D%22) · [MOB-ZE-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-07%5D%22) · [MOB-ZE-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-08%5D%22) · [MOB-ZE-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-17%5D%22)

#### `ZE-02` — Chorégraphie des écrans clés
_Module : Animations et micro-interactions_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__desktop_light.webp?raw=true' width='330' alt='ZE-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__desktop_dark.webp?raw=true' width='330' alt='ZE-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__mobile_light.webp?raw=true' width='230' alt='ZE-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__mobile_dark.webp?raw=true' width='230' alt='ZE-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Mouvement · 02 » · « Chorégraphies d’écran » · « Au-delà des composants, chaque écran clé a une séquence orchestrée : qui entre, quand, comment. Les chronologies ci-dessous sont les spécifications transmises au développement Flutter (AnimationController + Interval). » · « Univers Barça · Design System v1.1 » · « Mouvement & ergonomie » · « iOS · Android · Tablette » · « Chronologies » · « Accueil · première ouverture » · « 1900 ms » · « En-tête » · « 0–400 » · « Carte prochain match » · « 60–700 » · « Compte à rebours (pulsation) » · « 700–1200 » · « Cartes jeux » · « 180–700 » · « Histoire du jour » · « 260–700 » · « Streak + flamme » · « 340–900 » · « Fantasy » · « 420–700 » · « Bulle IA : apparition + respiration » · « 900–1900 » · « Victoire à Guess the Player » · « 2600 ms » · « Dernière rangée : retournement des cellules » · « 0–500 » · « Flash vert + vibration »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-32](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-32%5D%22) · [MOB-FND-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-27%5D%22) · [MOB-ZE-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-01%5D%22) · [MOB-ZE-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-03%5D%22) · [MOB-ZE-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-04%5D%22) · [MOB-ZE-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-05%5D%22) · [MOB-ZE-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-06%5D%22) · [MOB-ZE-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-07%5D%22) · [MOB-ZE-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-08%5D%22) · [MOB-ZE-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-09%5D%22) · [MOB-ZE-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-10%5D%22) · [MOB-ZE-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-17%5D%22)

#### `ZE-03` — Ergonomie — zone du pouce et gestes
_Module : Animations et micro-interactions_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__desktop_light.webp?raw=true' width='330' alt='ZE-03 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__desktop_dark.webp?raw=true' width='330' alt='ZE-03 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__mobile_light.webp?raw=true' width='230' alt='ZE-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__mobile_dark.webp?raw=true' width='230' alt='ZE-03 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ergonomie · 01 » · « Ergonomie à une main » · « Conçu pour les grands smartphones : les actions principales sont dans la zone du pouce, les informations en haut, les gestes naturels (balayage arrière, tirer pour actualiser, appui long) sont toujours disponibles. » · « Univers Barça · Design System v1.1 » · « Mouvement & ergonomie » · « iOS · Android · Tablette » · « Zone du pouce » · « Carte d’atteinte pour une main droite sur un écran de 6,7″. Les éléments les plus fréquents (onglets, bouton d’action, bulle IA) sont dans la zone verte. » · « Titre + actions » · « Action principale » · « Facile » · « Atteignable » · « Difficile » · « Règles de placement » · « Actions principales (CTA) fixées en bas, au-dessus de la barre d’onglets. » · « Navigation principale et bulle IA toujours dans la zone verte. » · « Informations de lecture (scores, titres) en haut : pas besoin de les atteindre. » · « Actions destructives éloignées des CTA et toujours confirmées. » · « Fermeture des sheets par balayage vers le bas, sans viser la croix. » · « Actions secondaires en haut à droite : doublées par un geste ou un appui long. » · « Tablette · deux mains » · « rail de navigation à gauche, accessible au pouce gauche ; panneaux maître/détail ; sheets centrés » · « Gestes » · « Balayer depuis le bord gauche » · « Retour (iOS) ou geste système (Android) » · « Tirer vers le bas » · « Actualiser un écran ou fermer un sheet » · « Appui long » · « Aperçu rapide, options d’un message, copie » · « Glisser-déposer »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-33](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-33%5D%22) · [MOB-ZC-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-09%5D%22) · [MOB-ZE-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-11%5D%22) · [MOB-ZE-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-12%5D%22)

#### `ZE-04` — Ergonomie — saisie, lisibilité et prévention des erreurs
_Module : Animations et micro-interactions_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_light.webp?raw=true' width='330' alt='ZE-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_dark.webp?raw=true' width='330' alt='ZE-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_light.webp?raw=true' width='230' alt='ZE-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_dark.webp?raw=true' width='230' alt='ZE-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ergonomie · 02 » · « Confort d’usage » · « Clavier, lisibilité, sécurité des actions et feedback : les détails qui donnent la sensation d’une application haut de gamme, fluide et fiable. » · « Univers Barça · Design System v1.1 » · « Mouvement & ergonomie » · « iOS · Android · Tablette » · « Saisie et clavier » · « Le clavier ne masque jamais l’action » · « boris@exemple.com » · « •••••• » · « Se connecter » · « CTA collé au-dessus du clavier · champ défilé en vue » · « Claviers adaptés au champ » · « E-mail » · « @ et .com visibles » · « Code à 6 chiffres » · « pavé numérique · collage SMS » · « Recherche » · « touche « Rechercher » » · « Message » · « saut de ligne, correction auto » · « Validation sans friction » · « boris@exemple » · « Adresse e-mail invalide » · « Erreur affichée à la sortie du champ, pas à chaque frappe. Message précis + comment corriger. » · « Mot de passe solide » · « Lisibilité et accessibilité fine » · « Texte dynamique » · « Jusqu’à 160 % sans coupure de mise en page » · « Plein soleil »

**Composants repérés** : `banner`, `btn`, `input`, `toast`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-34](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-34%5D%22) · [MOB-FND-36](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-36%5D%22) · [MOB-ZB-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-06%5D%22) · [MOB-ZC-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-02%5D%22) · [MOB-ZE-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-13%5D%22) · [MOB-ZE-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-14%5D%22) · [MOB-ZE-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-15%5D%22) · [MOB-ZE-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-16%5D%22)

## 📐 Règles de gestion

- Instants testés : sheet 0/120/240/360/480 ; modale 0/160/300/500 ; quiz 0/100/220/300 ; badge 0/260/520/900 ; Guess 0/80/160/240 ; onglet 0/90/180/300 ; bulle IA 0/120/240/420.
- Graines déterministes pour confettis.
- 2 tailles × 2 thèmes pour les plus critiques.

## 🛠️ Tâches

- [ ] Créer `test/golden/motion/*_golden_test.dart` avec `pumpChoreographyAt`.
- [ ] Générer masters.
- [ ] Ajouter tests de durée totale (1900/2600/2200/1600).
- [ ] Intégrer à la CI.
- [ ] Documenter l'ajout d'une animation.

## ✔️ Critères d'acceptation

- [ ] Étant donné la sheet à 240 ms, alors le golden correspond au master.
- [ ] Étant donné une durée modifiée, alors le test de durée totale échoue.
- [ ] Étant donné mouvement réduit, alors le golden à t=0 est l'état final.

## 🧪 Tests à écrire

- [ ] Golden : sheet 5 instants.
- [ ] Golden : badge 4 instants.
- [ ] Unitaire : durées totales.
- [ ] Golden : mouvement réduit.

## 🔗 Dépendances

À réaliser après : `MOB-ZE-01` · `MOB-ZE-03` · `MOB-ZE-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §10

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
