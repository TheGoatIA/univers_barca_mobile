> **MOB-ZA-05** · Infrastructure · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

`AppTypography` appelle actuellement `GoogleFonts.getFont`, qui télécharge les polices à l'exécution et retombe en police système hors-ligne : incompatible avec le fonctionnement hors-ligne (CDC Global §3.5) et avec des golden tests déterministes.

## ✅ Objectif

Embarquer les fichiers de police dans les assets et déclarer les familles dans `pubspec.yaml`, sans dépendance réseau.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZA-03` — Typographie
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__desktop_light.webp?raw=true' width='330' alt='ZA-03 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__desktop_dark.webp?raw=true' width='330' alt='ZA-03 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__mobile_light.webp?raw=true' width='230' alt='ZA-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-03_typographie__mobile_dark.webp?raw=true' width='230' alt='ZA-03 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 03 » · « Typographie » · « Barlow Condensed (esprit maillot sportif) pour les titres et les scores ; Inter, très lisible sur petit écran, pour le texte courant. Échelle modulaire de ratio ~1,25 partagée entre Flutter et l’admin React. » · « Familles » · « Titres & scores · Barlow Condensed » · « Més que un club » · « ABCDEFGHIJKLMNOPQRSTUVWXYZ 0123456789 » · « Graisses 600 · 700 · 800 · majuscules · interlettrage +0,5 % » · « Texte courant · Inter » · « Ton compagnon culé, au quotidien. » · « Abcdefghijklmnopqrstuvwxyz ÀÉÈÇÑ 0123456789 — lisible à toutes les tailles, sur tous les écrans. » · « Graisses 400 · 500 · 600 · 700 · 800 » · « Échelle typographique » · « Display » · « display · 47 / 56 px » · « Univers Barça » · « Titres d’écran héros, scores » · « H1 » · « h1 · 37 px » · « Mon équipe Fantasy » · « Titres d’écran » · « H2 » · « h2 · 30 px » · « Classement mondial » · « Titres de section » · « H3 » · « h3 · 24 px » · « Prochain match » · « Titres de carte » · « Body large »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-02](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-02%5D%22) · [MOB-ZA-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-04%5D%22) · [MOB-ZA-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-08%5D%22) · [MOB-ZA-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-13%5D%22) · [MOB-ZA-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-14%5D%22) · [MOB-ZA-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-15%5D%22) · [MOB-ZA-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-16%5D%22)

## 📐 Règles de gestion

- Barlow Condensed : graisses 600, 700, 800 (+ italique non requis). Inter : 400, 500, 600, 700, 800 (variable ou statiques).
- Jeu de caractères : latin + latin étendu (À É È Ç Ñ ¿ ¡ visibles sur la planche) ; licence OFL conservée dans `assets/fonts/LICENSES/`.
- `GoogleFonts.config.allowRuntimeFetching = false` ; échec visible en test si une police n'est pas bundlée.

## 🛠️ Tâches

- [ ] Ajouter `assets/fonts/BarlowCondensed-{SemiBold,Bold,ExtraBold}.ttf` et `Inter-{Regular,Medium,SemiBold,Bold,ExtraBold}.ttf`.
- [ ] Déclarer dans `pubspec.yaml` `fonts:` (families `Barlow Condensed`, `Inter`) avec weights 400-800.
- [ ] Remplacer `GoogleFonts.getFont` par `TextStyle(fontFamily: ...)` dans `app_typography.dart` ; retirer `google_fonts` si plus utilisé.
- [ ] Ajouter `FontLoader` dans l'initialisation des tests (`test/flutter_test_config.dart`) pour que les goldens utilisent les vraies polices.
- [ ] Sous-ensemble (pyftsubset) pour limiter le poids de l'APK/IPA (< 600 Ko cumulés visés).
- [ ] Vérifier la taille de l'app avant/après et consigner dans l'ADR (cf. FND `doc-adr-socle`).

## ✔️ Critères d'acceptation

- [ ] Étant donné l'application en mode avion premier lancement, quand un écran s'affiche, alors les titres utilisent Barlow Condensed (pas de police système).
- [ ] Étant donné `pubspec.yaml`, quand `flutter pub get` s'exécute, alors toutes les polices déclarées existent.
- [ ] Étant donné un golden test, quand il s'exécute sur deux machines, alors les pixels sont identiques.

## 🧪 Tests à écrire

- [ ] Test : chaque fichier listé dans `pubspec.yaml` existe (script Dart).
- [ ] Widget : `Text` en h1 résout `fontFamily == 'Barlow Condensed'`.
- [ ] Test : `GoogleFonts.config.allowRuntimeFetching` vaut false après bootstrap.

## 📚 Références

- CDC Global §4.5.2
- CDC Global §3.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
