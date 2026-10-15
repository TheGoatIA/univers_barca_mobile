> **MOB-M-25** · Écran · Priorité **P1** · Taille **S** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

M-14 : « Wallpapers IA en pause — La génération d'images est temporairement désactivée. Elle reviendra très vite ! » avec « Voir ma galerie ». Le back-office (configuration produit) peut couper la génération pour maîtriser les coûts.

## ✅ Objectif

Informer sans casser la galerie : seule la création est bloquée.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `M-14` — Module désactivé
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-14_module-desactive__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-14_module-desactive__phone_light.webp?raw=true' width='230' alt='M-14 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-14_module-desactive__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-14_module-desactive__phone_dark.webp?raw=true' width='230' alt='M-14 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-14_module-desactive__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-14_module-desactive__tablet_light.webp?raw=true' width='330' alt='M-14 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-14_module-desactive__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-14_module-desactive__tablet_dark.webp?raw=true' width='330' alt='M-14 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Wallpapers IA » · « Wallpapers IA en pause » · « La génération d’images est temporairement désactivée. Elle reviendra très vite ! » · « Voir ma galerie »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

## 📐 Règles de gestion

- Détection par 503 `MODULE_DISABLED` ou champ `features.wallpapers=false` de la config distante
- Galerie, détail, partage et enregistrement restent accessibles
- Le bouton « Nouveau wallpaper » de M-08 est remplacé par l'accès à M-14
- Réévaluation du drapeau à chaque ouverture du module (cache max 5 min)

## 🔄 Comportement et états

- Entrée directe par deep link/notification -> M-14
- Retour automatique au formulaire si le drapeau repasse à true

## 🛠️ Tâches

- [ ] Créer `wallpaper_module_disabled_page.dart`
- [ ] Créer `FeatureFlagsRepository` (cache 5 min, Drift/SharedPreferences) s'il n'existe pas
- [ ] Intercepter `ModuleDisabledFailure` dans les use cases
- [ ] Garde de route go_router `redirect` sur `/wallpapers/new*`
- [ ] Clés ARB `wallpaperPausedTitle`, `wallpaperPausedBody`
- [ ] Tests
- [ ] Golden
- [ ] Analytics `wallpaper_module_disabled_seen`

## ✔️ Critères d'acceptation

- [ ] Étant donné le drapeau à false quand l'utilisateur ouvre `/wallpapers/new` alors M-14 s'affiche
- [ ] Étant donné le drapeau à false alors la galerie reste consultable
- [ ] Étant donné le drapeau repassé à true après 5 min alors le formulaire est accessible

## 🧪 Tests à écrire

- [ ] feature_flag_test : cache 5 min
- [ ] router_guard_test : redirection
- [ ] golden : paused_light / paused_dark

## 🔗 Dépendances

À réaliser après : `MOB-M-02` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Admin (configuration produit)
- CDC Backend §3.9

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
