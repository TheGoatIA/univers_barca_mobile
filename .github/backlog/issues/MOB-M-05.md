> **MOB-M-05** · Écran · Priorité **P0** · Taille **L** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Premier écran du module : « WALLPAPERS IA » avec flèche retour à gauche et icône galerie à droite, stepper segmenté « 1/3 », bandeau de quota « 3 générations gratuites par jour · 2 restantes », trois sections numérotées et le champ Précision. Le bouton principal bordeaux « Générer mon wallpaper » est fixé en bas.

## ✅ Objectif

Implémenter fidèlement M-01 en clair/sombre, branché sur `WallpaperFormCubit` et sur le quota.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `M-01` — Générateur — formulaire guidé
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__phone_light.webp?raw=true' width='230' alt='M-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__phone_dark.webp?raw=true' width='230' alt='M-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__tablet_light.webp?raw=true' width='330' alt='M-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__tablet_dark.webp?raw=true' width='330' alt='M-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Wallpapers IA » · « 1/3 » · « 3 générations gratuites par jour · » · « 2 restantes » · « 1. Joueur ou thème » · « Yamal » · « Pedri » · « Raphinha » · « Lewandowski » · « Autre » · « 2. Style visuel » · « Illustration » · « Néon » · « Aquarelle » · « Rétro » · « Minimal » · « 3. Occasion » · « Jour de match » · « Anniversaire » · « Trophée » · « Libre » · « Précision (optionnel) » · « 39 / 140 » · « Célébration de but sous les projecteurs, ambiance nocturne » · « Générer mon wallpaper »

**Composants repérés** : `btn`, `card`, `chip`

</details>

**Issues liées sur ce même écran :** [API-WALL-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-02%5D%22) · [API-WALL-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-03%5D%22) · [API-WALL-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-04%5D%22) · [API-WALL-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-08%5D%22) · [API-WALL-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-09%5D%22) · [API-WALL-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-23%5D%22) · [API-WALL-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-30%5D%22) · [API-WALL-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-31%5D%22) · [MOB-M-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-02%5D%22) · [MOB-M-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-04%5D%22) · [MOB-M-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-06%5D%22) · [MOB-M-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-22%5D%22) · [MOB-M-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-26%5D%22) · [MOB-M-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-29%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

## 📐 Règles de gestion

- Bandeau quota : icône étincelle bordeaux + texte « 3 générations gratuites par jour · 2 restantes » (valeurs issues de l'API, « 2 restantes » en gras)
- Section 1 « 1. Joueur ou thème » : rangée horizontale scrollable de 4 cartes (avatar rond, nom) + carte pointillée « + Autre » ; carte sélectionnée = bordure bordeaux 2 px
- Section 2 « 2. Style visuel » : 5 chips en retour à la ligne (Illustration, Néon, Aquarelle, Rétro, Minimal) ; chip sélectionnée = fond bordeaux, texte blanc
- Section 3 « 3. Occasion » : 4 chips (Jour de match, Anniversaire, Trophée, Libre)
- Champ « Précision (optionnel) » multi-lignes avec compteur « 39 / 140 » aligné à droite ; le bouton fixe ne masque jamais le champ (padding bas = hauteur du bouton + safe area)

## 🔄 Comportement et états

- Chargement : squelettes (shimmer) pour la rangée de joueurs et le bandeau quota
- Erreur de chargement des joueurs : AppErrorView compact + bouton Réessayer, le reste du formulaire reste utilisable avec « Autre »
- Hors ligne : bandeau « Hors ligne » et bouton désactivé (la pré-vérification exige le réseau)
- Tap sur l'icône galerie -> `/wallpapers/gallery` ; retour avec brouillon non vide -> confirmation « Abandonner la demande ? » (modal)
- Au tap sur le bouton : stepper passe à 2/3 avec indicateur de progression dans le bouton, puis navigation vers M-02

## 🛠️ Tâches

- [ ] Créer `presentation/pages/wallpaper_generator_page.dart` et widgets `quota_banner.dart`, `player_choice_row.dart`, `choice_chip_group.dart`, `details_field.dart`, `step_indicator.dart`
- [ ] Charger les 4 joueurs proposés (Yamal, Pedri, Raphinha, Lewandowski) depuis `GET /players?limit=4&featured=true` avec repli sur les 4 premiers de la liste en cache
- [ ] Utiliser exclusivement les tokens du design system (`core/theme`), polices Barlow Condensed (titre) et Inter
- [ ] Gérer le clavier : `resizeToAvoidBottomInset`, scroll auto vers le champ Précision
- [ ] Ajouter l'animation de sélection (scale 0.96 -> 1.0, 120 ms) désactivable via « Réduire les animations »
- [ ] Ajouter les clés ARB `wallpaperGenTitle`, `wallpaperQuotaBanner`, `wallpaperSectionPlayer`, etc. en fr/en/es
- [ ] Route go_router `/wallpapers/new` (nom `wallpaperNew`)
- [ ] Golden tests phone clair/sombre

## ✔️ Critères d'acceptation

- [ ] Étant donné 2 générations restantes quand l'écran s'affiche alors le bandeau indique « 3 générations gratuites par jour · 2 restantes »
- [ ] Étant donné Yamal, Illustration et Jour de match sélectionnés quand l'utilisateur tape « Générer mon wallpaper » alors le stepper passe à 2/3 puis M-02 s'affiche
- [ ] Étant donné le mode sombre quand l'écran s'affiche alors aucun contraste texte/fond n'est inférieur à 4,5:1
- [ ] Étant donné un téléphone 360 dp de large quand l'écran s'affiche alors aucun débordement horizontal n'apparaît et les chips passent à la ligne

## 🧪 Tests à écrire

- [ ] wallpaper_generator_page_test : rendu initial avec quota
- [ ] wallpaper_generator_page_test : sélection d'un chip met à jour l'état
- [ ] wallpaper_generator_page_test : compteur 39/140
- [ ] golden : generator_light / generator_dark
- [ ] wallpaper_generator_page_test : hors-ligne désactive le bouton

## ♿ Accessibilité et i18n

- Libellés ARB pour chaque chip ; `Semantics(selected:true)` sur le choix actif
- Zone tactile ≥ 48 dp ; compteur annoncé « 39 sur 140 caractères »
- Stepper annoncé « Étape 1 sur 3 »

## 🔗 Dépendances

À réaliser après : `MOB-M-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.9
- CDC Global §4.5 (design system)

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
