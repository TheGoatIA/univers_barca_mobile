> **MOB-H-18** · Écran · Priorité **P0** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Après PUT /fantasy/team réussi, un toast de succès confirme l'enregistrement et l'équipe reste affichée.

## ✅ Objectif

Fournir le feedback de succès et mettre à jour les états dépendants (accueil, aperçu dashboard).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-08` — Composition enregistrée
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-08_composition-enregistree__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-08_composition-enregistree__phone_light.webp?raw=true' width='230' alt='H-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-08_composition-enregistree__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-08_composition-enregistree__phone_dark.webp?raw=true' width='230' alt='H-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-08_composition-enregistree__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-08_composition-enregistree__tablet_light.webp?raw=true' width='330' alt='H-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-08_composition-enregistree__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-08_composition-enregistree__tablet_dark.webp?raw=true' width='330' alt='H-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Fermeture des compositions dans » · « 1 j 04 h 12 min » · « J11 » · « ter Stegen » · « Koundé » · « Cubarsí » · « Araújo » · « Balde » · « De Jong » · « Pedri » · « Gavi » · « Yamal » · « Lewandowski » · « Raphinha » · « 11/11 » · « Équipe complète » · « Formation » · « 4-3-3 » · « · Capitaine » · « Capitaine »

**Composants repérés** : `avatar`, `btn`, `card`, `toast`

</details>

**Issues liées sur ce même écran :** [API-FANT-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-06%5D%22) · [API-FANT-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-24%5D%22) · [MOB-H-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-02%5D%22) · [MOB-H-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-06%5D%22) · [MOB-H-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-31%5D%22) · [MOB-H-35](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-35%5D%22)

## 📐 Règles de gestion

- Toast vert 'Composition enregistrée' pendant 3 s, avec haptique de succès.
- Le cache et FantasyPreviewCard du dashboard sont rafraîchis.
- L'état Saved revient à Editing sans changement visible.
- Aucun doublon de toast si plusieurs sauvegardes rapprochées.

## 🔄 Comportement et états

- Le toast est annonçable par lecteur d'écran (liveRegion).

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/presentation/widgets/fantasy_toasts.dart.
- [ ] Écouter Saved via BlocListener.
- [ ] Invalider le cache dashboard.
- [ ] Clé ARB fantasyTeamSaved.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné une sauvegarde réussie alors le toast s'affiche 3 s.
- [ ] Étant donné deux sauvegardes à 1 s d'intervalle alors un seul toast visible.
- [ ] Étant donné le retour à l'accueil alors la carte reflète la nouvelle équipe.
- [ ] Étant donné le mode sombre alors le toast reste lisible.

## 🧪 Tests à écrire

- [ ] toast affiché sur Saved
- [ ] un seul toast
- [ ] invalidation du cache
- [ ] durée 3 s

## ♿ Accessibilité et i18n

- liveRegion polite

## 🔗 Dépendances

À réaliser après : `MOB-H-17` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
