> **MOB-ZA** · Épopée · Phase 0 — Socle technique

## 🎯 Objectif

Poser les fondations visuelles de l'application : identité, palette, typographie, espacements, rayons, ombres et iconographie, sous forme de tokens Dart uniques consommés par tout le design system et partagés avec l'admin.

## 📦 Périmètre

- Tokens couleur/typo/espacement/rayons/ombres/dégradés dans lib/core/theme
- Polices embarquées
- Logo, icône d'app et 146 icônes
- ThemeData clair/sombre + ThemeExtension
- Widgetbook et goldens des fondations
- Migration de l'existant

## 🚫 Hors périmètre

- Composants (groupes ZB à ZE)
- ThemeCubit et persistance du thème (FND theme-cubit)
- Flavors et identifiants (FND env-flavors)
- Infra golden (FND golden-tests-infra)

## 📚 Références

- CDC Global §3.3
- CDC Global §3.4
- CDC Global §4.5
- CDC Flutter §9

## 🧩 Issues de l'épopée (16)

{{CHILDREN}}
