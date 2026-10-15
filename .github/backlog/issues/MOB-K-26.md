> **MOB-K-26** · Écran · Priorité **P1** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Quand une ville n'a aucun groupe : « Aucun groupe local ici — Il n'y a pas encore de groupe à Bafoussam. Pourquoi ne pas en créer un ? » avec « Créer un groupe » et « Élargir la recherche ».

## ✅ Objectif

Transformer l'état vide en opportunité de création ou d'élargissement.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `K-16` — Aucun groupe — recherche vide
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-16_aucun-groupe-recherche-vide__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-16_aucun-groupe-recherche-vide__phone_light.webp?raw=true' width='230' alt='K-16 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-16_aucun-groupe-recherche-vide__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-16_aucun-groupe-recherche-vide__phone_dark.webp?raw=true' width='230' alt='K-16 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-16_aucun-groupe-recherche-vide__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-16_aucun-groupe-recherche-vide__tablet_light.webp?raw=true' width='330' alt='K-16 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-16_aucun-groupe-recherche-vide__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-16_aucun-groupe-recherche-vide__tablet_dark.webp?raw=true' width='330' alt='K-16 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Groupes » · « Aucun groupe local ici » · « Il n’y a pas encore de groupe à Bafoussam. Pourquoi ne pas en créer un ? » · « Créer un groupe » · « Élargir la recherche »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-COMM-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-13%5D%22) · [API-COMM-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-14%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-K-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-02%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

## 📐 Règles de gestion

- « Créer un groupe » ouvre K-14 avec la ville préremplie (« Bafoussam »).
- « Élargir la recherche » relance la recherche au niveau pays, puis monde.
- Illustration de design system ; texte dynamique avec le nom de la ville.
- Si une demande pending existe déjà pour cette ville, remplacer le CTA par « Voir ma demande » (K-15).
- Affiché dans J-02, J-03, J-05 et la recherche de groupes.

## 🛠️ Tâches

- [ ] Créer widgets/empty_groups_view.dart (paramètres city, onCreate, onWiden).
- [ ] Implémenter la logique d'élargissement dans MapZoomChanged (zone parente).
- [ ] Détecter la demande pending via GetMyPendingGroup.
- [ ] Brancher dans country_sheet/city_sheet/country_results_page.
- [ ] Ajouter ARB et illustration.
- [ ] Goldens.
- [ ] Tests widget.
- [ ] Analytics empty_groups_cta.

## ✔️ Critères d'acceptation

- [ ] Étant donné Bafoussam sans groupe, quand la feuille s'affiche, alors le texte nomme Bafoussam.
- [ ] Étant donné « Élargir la recherche », quand il est tapé, alors la zone passe au pays.
- [ ] Étant donné « Créer un groupe », quand il est tapé, alors K-14 s'ouvre avec la ville remplie.
- [ ] Étant donné une demande pending, quand l'état vide s'affiche, alors « Voir ma demande » remplace le bouton de création.

## 🧪 Tests à écrire

- [ ] empty_groups_view_test.
- [ ] widen_search_test.
- [ ] pending_cta_test.
- [ ] golden_empty_groups_light_dark.

## ♿ Accessibilité et i18n

- ARB : groupsEmptyTitle « Aucun groupe local ici », groupsEmptyBody « Il n'y a pas encore de groupe à {city}. Pourquoi ne pas en créer un ? », groupsEmptyCreate, groupsEmptyWiden « Élargir la recherche »

## 🔗 Dépendances

À réaliser après : `MOB-K-23` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.16.2 (RG-MAP-04, RG-MAP-05)

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
