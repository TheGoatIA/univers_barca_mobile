> **MOB-C-17** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

C-06 montre le dashboard avant chargement : seule la salutation est affichée, les cartes sont des blocs gris avec effet de brillance (shimmer).

## ✅ Objectif

Afficher un squelette fidèle à la mise en page finale pour éviter les sauts de layout.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `C-06` — Dashboard — chargement squelette
_Module : Accueil dashboard_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-06_dashboard-chargement-squelette__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-06_dashboard-chargement-squelette__phone_light.webp?raw=true' width='230' alt='C-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-06_dashboard-chargement-squelette__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-06_dashboard-chargement-squelette__phone_dark.webp?raw=true' width='230' alt='C-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-06_dashboard-chargement-squelette__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-06_dashboard-chargement-squelette__tablet_light.webp?raw=true' width='330' alt='C-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-06_dashboard-chargement-squelette__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-06_dashboard-chargement-squelette__tablet_dark.webp?raw=true' width='330' alt='C-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Salut Boris 👋 »

**Composants repérés** : `avatar`, `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-14%5D%22) · [MOB-C-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-06%5D%22) · [MOB-C-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-25%5D%22) · [MOB-C-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-26%5D%22) · [MOB-C-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-27%5D%22)

## 📐 Règles de gestion

- Le squelette reprend les hauteurs réelles pour éviter le layout shift.
- Chaque carte a son propre squelette.
- Aucun squelette si un cache existe (cache-then-network).

## 🛠️ Tâches

- [ ] Créer `DashboardSkeleton` avec le package `shimmer` : blocs aux mêmes dimensions que NextMatchCard (≈ 300 dp), double carte jeux, carte histoire, streak, fantasy.
- [ ] Chaque carte a un `CardSkeleton` interne affiché quand `CardState.status == loading` (pas seulement au démarrage).
- [ ] Durée de la brillance : 1,4 s en boucle ; thème clair `surface`/`background`, thème sombre variantes.
- [ ] Désactiver l'animation shimmer si `MediaQuery.disableAnimations` (rendu statique).
- [ ] Afficher le squelette uniquement s'il n'y a pas de cache ; sinon afficher le cache (cache-then-network).
- [ ] Le header (salutation) reste affiché pendant le squelette.
- [ ] Masquer le squelette au plus tôt carte par carte (pas d'attente de toutes).

## ✔️ Critères d'acceptation

- [ ] Étant donné un premier lancement sans cache, quand le dashboard s'ouvre, alors le squelette s'affiche avec le header.
- [ ] Étant donné un cache disponible, quand le dashboard s'ouvre, alors aucun squelette n'est affiché.
- [ ] Étant donné qu'une carte répond avant les autres, quand elle est prête, alors son squelette est remplacé sans attendre les autres.
- [ ] Étant donné les animations réduites, quand le squelette s'affiche, alors aucune animation n'est jouée.

## 🧪 Tests à écrire

- [ ] Test de widget : squelette sans cache.
- [ ] Test de widget : pas de squelette avec cache.
- [ ] Golden clair/sombre.
- [ ] Test de widget : remplacement carte par carte.
- [ ] Test de widget : reduce motion.

## ♿ Accessibilité et i18n

- Semantics `label: « Chargement du tableau de bord »` ; ARB `dashboardLoading`.

## 🔗 Dépendances

À réaliser après : `MOB-C-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.3
- CDC Flutter §7.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
