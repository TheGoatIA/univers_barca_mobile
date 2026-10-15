> **MOB-P-12** · Écran · Priorité **P1** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Modale 'Nouveau badge ! GOAT voter — Tu as participé à ton premier duel du comparateur GOAT.' avec 'Super !' et 'Voir mes badges', apparaissant par-dessus n'importe quel écran (ex. Quiz).

## ✅ Objectif

Annoncer un badge juste après l'action qui le débloque.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `P-06` — Déblocage d’un badge
_Module : Culé Passport_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-06_deblocage-d-un-badge__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-06_deblocage-d-un-badge__phone_light.webp?raw=true' width='230' alt='P-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-06_deblocage-d-un-badge__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-06_deblocage-d-un-badge__phone_dark.webp?raw=true' width='230' alt='P-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-06_deblocage-d-un-badge__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-06_deblocage-d-un-badge__tablet_light.webp?raw=true' width='330' alt='P-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-06_deblocage-d-un-badge__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-06_deblocage-d-un-badge__tablet_dark.webp?raw=true' width='330' alt='P-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz » · « Nouveau badge ! » · « GOAT voter » · « Tu as participé à ton premier duel du comparateur GOAT. » · « Super ! » · « Voir mes badges »

**Composants repérés** : `btn`, `modal`

</details>

**Issues liées sur ce même écran :** [API-FANT-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-33%5D%22) · [API-PASS-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-03%5D%22) · [API-PASS-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-08%5D%22) · [API-PASS-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-09%5D%22) · [API-PASS-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-10%5D%22) · [API-PASS-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-14%5D%22) · [API-PASS-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-28%5D%22) · [API-PASS-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-31%5D%22) · [API-PASS-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-32%5D%22)

## 📐 Règles de gestion

- Déclenchée par la réponse serveur de l'action (ex. vote GOAT) contenant newBadges[].
- File : plusieurs badges successifs, un à la fois, jamais plus de 3 d'affilée (le reste est résumé).
- Animation d'apparition avec léger éclat (1,2 s) désactivée si reduce-motion.
- 'Voir mes badges' -> P-03 avec le badge mis en évidence.

## 🔄 Comportement et états

- Ne bloque pas une action critique en cours (formulaire), mise en attente.

## 🛠️ Tâches

- [ ] Créer lib/features/profile_passport/presentation/widgets/badge_unlocked_dialog.dart et BadgeUnlockQueue (service global).
- [ ] Intercepteur Chopper lisant newBadges.
- [ ] Gestion de la file.
- [ ] Animation.
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné un vote GOAT débloquant un badge alors la modale s'affiche.
- [ ] Étant donné 2 badges alors deux modales successives.
- [ ] Étant donné 'Voir mes badges' alors P-03.
- [ ] Étant donné reduce-motion alors pas d'éclat.

## 🧪 Tests à écrire

- [ ] file de badges
- [ ] limite 3
- [ ] navigation
- [ ] reduce-motion

## ♿ Accessibilité et i18n

- Annonce vocale du badge

## 🔗 Dépendances

À réaliser après : `MOB-P-09` · `MOB-P-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.11
- CDC Flutter §7.12

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
