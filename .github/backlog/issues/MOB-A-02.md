> **MOB-A-02** · Écran · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Premier écran vu par l'utilisateur : fond dégradé bordeaux vers violet à fines bandes verticales, écusson blanc/rose avec ballon au centre, titre « UNIVERS BARÇA » en Barlow Condensed, accroche et barre de progression jaune en bas.

## ✅ Objectif

Implémenter `SplashPage` conforme à la maquette A-01, sans aucun appel réseau bloquant dans son build, avec transition douce vers la destination décidée.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `A-01` — Splash
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-01_splash__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-01_splash__phone_light.webp?raw=true' width='230' alt='A-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-01_splash__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-01_splash__phone_dark.webp?raw=true' width='230' alt='A-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-01_splash__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-01_splash__tablet_light.webp?raw=true' width='330' alt='A-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-01_splash__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-01_splash__tablet_dark.webp?raw=true' width='330' alt='A-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon culé, au quotidien. » · « v1.0.0 · Application non officielle »

</details>

**Issues liées sur ce même écran :** [API-PLAT-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-01%5D%22) · [API-PLAT-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-09%5D%22) · [API-PLAT-41](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-41%5D%22) · [MOB-A-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-01%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

## 📐 Règles de gestion

- Textes exacts : « Univers Barça » (titre), « Ton compagnon culé, au quotidien. », « v1.0.0 · Application non officielle » (la version est lue depuis `package_info_plus`, pas codée en dur ; mention « Application non officielle » obligatoire, cf. CDC Global §10.1).
- Barre de progression : 3 px de haut environ, piste blanche à 25 % d'opacité, remplissage jaune (token accent) ; affichée à environ 55 % dans la maquette, progression réelle liée aux étapes du démarrage.
- Le fond utilise le dégradé de marque défini dans `core/theme/app_colors.dart` ; aucun hexadécimal dans le widget ; même rendu en thème clair et sombre (le splash est toujours sur fond de marque).
- Respect de `MediaQuery.disableAnimations` : sans animation, le logo apparaît directement.

## 🔄 Comportement et états

- Chargement : logo en fondu + léger zoom (400 ms, easeOut), titre puis accroche en cascade (120 ms de décalage), barre qui avance par étapes.
- Sortie : fondu de 250 ms vers l'écran suivant (pas de slide).
- Erreur d'initialisation fatale (Drift illisible) : affichage de `AppErrorView` avec « Réessayer » et réinitialisation du cache local en dernier recours.
- Tablette : contenu centré, largeur maximale 480 dp.

## 🛠️ Tâches

- [ ] Créer `lib/features/system/presentation/pages/splash_page.dart` et widgets `splash_progress_bar.dart`, `brand_gradient_background.dart` dans `lib/core/widgets/`.
- [ ] Ajouter l'asset vectoriel `assets/images/crest_white.svg` (ou réutiliser l'existant) et le déclarer dans `pubspec.yaml`.
- [ ] Brancher la progression sur `AppStartupCubit` (BlocBuilder, valeur 0..1).
- [ ] Configurer le splash natif (flutter_native_splash) avec le même dégradé pour éviter le flash blanc Android/iOS.
- [ ] Ajouter les clés ARB `splashTagline`, `splashVersionDisclaimer` (placeholder `{version}`) dans app_fr/en/es.arb.
- [ ] Gérer la barre de statut claire (SystemUiOverlayStyle.light) sur cet écran uniquement.
- [ ] Test golden phone + tablette, clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné le démarrage quand SplashPage s'affiche alors le titre « UNIVERS BARÇA », l'accroche et « v1.0.0 · Application non officielle » sont visibles.
- [ ] Étant donné une initialisation terminée quand la destination est connue alors un fondu de 250 ms mène à l'écran cible.
- [ ] Étant donné « réduire les animations » activé quand le splash s'affiche alors aucune animation d'entrée n'est jouée.
- [ ] Étant donné un build staging quand le splash s'affiche alors la version affichée correspond à `pubspec.yaml`.

## 🧪 Tests à écrire

- [ ] Golden test `splash_page` phone clair/sombre et tablette.
- [ ] Widget test : la barre reflète la valeur 0.55 fournie par le cubit.
- [ ] Widget test : texte de version injecté par un `PackageInfo` factice.
- [ ] Widget test : `disableAnimations` → pas d'AnimationController actif.

## ♿ Accessibilité et i18n

- Libellé Semantics « Univers Barça, chargement en cours » ; la barre de progression expose `value`.
- Contraste texte blanc sur dégradé ≥ 4,5:1 (vérifier sur la zone la plus claire).
- Texte mis à l'échelle sans chevauchement jusqu'à textScaleFactor 1,5.

## 🔗 Dépendances

À réaliser après : `MOB-A-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §12
- CDC Global §10.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
