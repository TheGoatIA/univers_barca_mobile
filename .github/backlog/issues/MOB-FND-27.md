> **MOB-FND-27** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

`main.dart` enchaîne dotenv, DI et BLoC observer sans ordre formalisé, et le splash attend 2 s en dur. Le CDC §12 vise un démarrage à froid < 2 s sur appareil milieu de gamme et la chorégraphie ZE-02 « Splash → Accueil » dure 1600 ms.

## ✅ Objectif

Un `bootstrap()` ordonné, mesuré, qui n'affiche le splash que le temps nécessaire.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZE-02` — Chorégraphie des écrans clés
_Module : Animations et micro-interactions_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__desktop_light.webp?raw=true' width='330' alt='ZE-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__desktop_dark.webp?raw=true' width='330' alt='ZE-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__mobile_light.webp?raw=true' width='230' alt='ZE-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__mobile_dark.webp?raw=true' width='230' alt='ZE-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Mouvement · 02 » · « Chorégraphies d’écran » · « Au-delà des composants, chaque écran clé a une séquence orchestrée : qui entre, quand, comment. Les chronologies ci-dessous sont les spécifications transmises au développement Flutter (AnimationController + Interval). » · « Univers Barça · Design System v1.1 » · « Mouvement & ergonomie » · « iOS · Android · Tablette » · « Chronologies » · « Accueil · première ouverture » · « 1900 ms » · « En-tête » · « 0–400 » · « Carte prochain match » · « 60–700 » · « Compte à rebours (pulsation) » · « 700–1200 » · « Cartes jeux » · « 180–700 » · « Histoire du jour » · « 260–700 » · « Streak + flamme » · « 340–900 » · « Fantasy » · « 420–700 » · « Bulle IA : apparition + respiration » · « 900–1900 » · « Victoire à Guess the Player » · « 2600 ms » · « Dernière rangée : retournement des cellules » · « 0–500 » · « Flash vert + vibration »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-32](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-32%5D%22) · [MOB-ZE-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-01%5D%22) · [MOB-ZE-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-03%5D%22) · [MOB-ZE-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-04%5D%22) · [MOB-ZE-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-05%5D%22) · [MOB-ZE-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-06%5D%22) · [MOB-ZE-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-07%5D%22) · [MOB-ZE-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-08%5D%22) · [MOB-ZE-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-09%5D%22) · [MOB-ZE-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-10%5D%22) · [MOB-ZE-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-17%5D%22) · [MOB-ZE-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-18%5D%22)

## 📐 Règles de gestion

- Ordre : binding → `AppConfig` → logger → handlers d'erreurs → Firebase.initializeApp → DI (`configureDependencies`) → Drift → `AuthBloc.add(AuthStarted)` → `runApp`. Les inits non critiques (analytics, FCM token, Remote Config) sont différées après le 1er frame.
- Splash animé (ZE-02) : logo apparition + zoom 1,0→1,06 (0–700 ms), rayures balayage horizontal (200–1000), barre de progression de synchro (300–1400), fondu enchaîné vers l'accueil (1300–1600). Durée minimale d'affichage = fin de l'initialisation réelle, jamais un délai artificiel ; maximum perçu 1600 ms si prêt.
- Première connexion sur un nouvel appareil : synchronisation complète initiale avec indicateur de progression avant le dashboard (CDC §12.1).
- Mesure : trace `app_start_cold` (Firebase Performance) ; objectif p75 < 2 s.

## 🛠️ Tâches

- [ ] Créer `lib/bootstrap.dart` (séquence + gestion d'échec avec `ConfigErrorScreen`).
- [ ] Créer `lib/features/splash/presentation/splash_page.dart` avec `AnimationController` 1600 ms + `Interval` pour chaque élément.
- [ ] Retirer `_SplashPage` de `app_router.dart`.
- [ ] Créer `InitialSyncCubit` (progression 0–1).
- [ ] Ajouter la trace de démarrage.
- [ ] Écrire un golden du splash à 0, 700 et 1600 ms.

## ✔️ Critères d'acceptation

- [ ] Étant donné un démarrage normal quand l'init finit en 900 ms alors le splash se ferme sans attendre 1600 ms.
- [ ] Étant donné un nouvel appareil alors la barre de progression reflète la synchro initiale.
- [ ] Étant donné « réduire les animations » alors le splash est un fondu simple de 100 ms.
- [ ] Étant donné une erreur d'initialisation Firebase alors l'app démarre quand même (mode dégradé).

## 🧪 Tests à écrire

- [ ] Test widget : splash aux jalons 0/700/1600 ms (`tester.pump`).
- [ ] Test unitaire : ordre d'initialisation (fakes).
- [ ] Test unitaire : init Firebase en échec.
- [ ] Golden splash.

## ♿ Accessibilité et i18n

- Splash annoncé « Chargement » aux lecteurs d'écran.

## 🔗 Dépendances

À réaliser après : `MOB-FND-02` · `MOB-FND-04` · `MOB-FND-14` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §12
- CDC Flutter §12.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
