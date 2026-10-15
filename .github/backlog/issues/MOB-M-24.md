> **MOB-M-24** · Écran · Priorité **P0** · Taille **S** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

M-13 : « La génération a échoué — Un problème est survenu. Ta tentative n'est pas décomptée de ton quota. » avec « Réessayer » et « Modifier ma demande ».

## ✅ Objectif

Gérer l'échec technique (timeout fournisseur IA, image rejetée en sortie) sans pénaliser l'utilisateur.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `M-13` — Échec de la génération
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-13_echec-de-la-generation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-13_echec-de-la-generation__phone_light.webp?raw=true' width='230' alt='M-13 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-13_echec-de-la-generation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-13_echec-de-la-generation__phone_dark.webp?raw=true' width='230' alt='M-13 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-13_echec-de-la-generation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-13_echec-de-la-generation__tablet_light.webp?raw=true' width='330' alt='M-13 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-13_echec-de-la-generation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-13_echec-de-la-generation__tablet_dark.webp?raw=true' width='330' alt='M-13 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Wallpapers IA » · « La génération a échoué » · « Un problème est survenu. Ta tentative n’est pas décomptée de ton quota. » · « Réessayer » · « Modifier ma demande »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [MOB-M-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-09%5D%22) · [MOB-M-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-22%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

## 📐 Règles de gestion

- « Réessayer » relance `POST /wallpapers` avec la même demande et une nouvelle Idempotency-Key
- « Modifier ma demande » retourne en M-01 avec le brouillon
- Le message de non-décompte est vrai : l'app recharge le quota pour le prouver
- Après 3 échecs consécutifs : suggérer de réessayer plus tard et afficher le traceId (copiable) pour le support

## 🔄 Comportement et états

- Rejet d'image en sortie par la modération : même écran, message adapté (« Le résultat a été filtré »)
- Hors ligne : Réessayer désactivé

## 🛠️ Tâches

- [ ] Créer `wallpaper_generation_failed_page.dart`
- [ ] Mapper `GenerationFailed(refunded)` et `GenerationRejected` vers deux textes ARB
- [ ] Implémenter Réessayer via `RetryPressed`
- [ ] Afficher le `traceId` en petit après 3 échecs
- [ ] Clés ARB `wallpaperFailedTitle`, `wallpaperFailedBody`
- [ ] Tests widget
- [ ] Golden
- [ ] Sentry breadcrumb + `wallpaper_generation_failed`

## ✔️ Critères d'acceptation

- [ ] Étant donné un échec quand M-13 s'affiche alors la mention de non-décompte est visible et le quota affiché est inchangé
- [ ] Étant donné « Réessayer » alors une nouvelle génération démarre
- [ ] Étant donné « Modifier ma demande » alors M-01 contient la saisie précédente
- [ ] Étant donné 3 échecs alors le traceId est affiché

## 🧪 Tests à écrire

- [ ] failed_page_test : actions
- [ ] generation_bloc_test : retry nouvelle clé
- [ ] golden : failed_light / failed_dark

## ♿ Accessibilité et i18n

- Message en `liveRegion` assertive

## 🔗 Dépendances

À réaliser après : `MOB-M-09` · `MOB-M-22` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §3.9, §11.6
- CDC Flutter §7.9

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
