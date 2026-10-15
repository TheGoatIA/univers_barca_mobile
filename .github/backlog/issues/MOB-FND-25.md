> **MOB-FND-25** · Fonctionnel · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Le CDC §9.1 impose un ThemeCubit à trois états (système par défaut, clair forcé, sombre forcé), persisté localement et synchronisé avec la préférence de compte, appliqué sans redémarrage. `main.dart` fixe `ThemeMode.system`.

## ✅ Objectif

Brancher la préférence de thème de bout en bout.

## 📐 Règles de gestion

- États `ThemeMode.system|light|dark`, défaut `system`.
- Persistance `LocalPrefs.theme_mode` ; synchro compte via `PATCH /users/me` (champ à confirmer côté API).
- Changement de thème : transition 200 ms (`AnimatedTheme` natif) ; en mode « réduire les animations » instantané.
- Barre d'état/navigation : `SystemUiOverlayStyle` adaptée au thème.

## 🛠️ Tâches

- [ ] Créer `lib/core/theme/theme_cubit.dart`.
- [ ] Brancher dans `lib/app.dart` (`themeMode: context.watch<ThemeCubit>().state`).
- [ ] Gérer `SystemChrome.setSystemUIOverlayStyle`.
- [ ] Ajouter `ThemeRepository`.
- [ ] Prévoir le sélecteur UI dans le groupe Paramètres (hors périmètre).

## ✔️ Critères d'acceptation

- [ ] Étant donné système sombre et choix « système » alors l'app est sombre.
- [ ] Étant donné « clair forcé » alors elle reste claire malgré le système sombre.
- [ ] Étant donné un redémarrage alors le choix est restauré.

## 🧪 Tests à écrire

- [ ] bloc_test : trois états.
- [ ] Test unitaire : persistance.
- [ ] Test widget : `MaterialApp` reflète le mode.
- [ ] Test widget : overlay style.

## 🔗 Dépendances

À réaliser après : `MOB-FND-18` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.1
- CDC Global §3.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
