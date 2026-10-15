> **MOB-H-19** · Écran · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Quand la journée est en cours, la composition devient lecture seule : bandeau 'Composition verrouillée · Match en cours · points en direct' avec pastille 'En direct', lien 'Voir le détail', toast d'erreur si une modification est tentée (409).

## ✅ Objectif

Gérer l'état verrouillé de bout en bout, sans perte de données.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-09` — Composition verrouillée — erreur 409
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-09_composition-verrouillee-erreur-409__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-09_composition-verrouillee-erreur-409__phone_light.webp?raw=true' width='230' alt='H-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-09_composition-verrouillee-erreur-409__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-09_composition-verrouillee-erreur-409__phone_dark.webp?raw=true' width='230' alt='H-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-09_composition-verrouillee-erreur-409__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-09_composition-verrouillee-erreur-409__tablet_light.webp?raw=true' width='330' alt='H-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-09_composition-verrouillee-erreur-409__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-09_composition-verrouillee-erreur-409__tablet_dark.webp?raw=true' width='330' alt='H-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Composition verrouillée » · « Match en cours · points en direct » · « En direct » · « ter Stegen » · « Koundé » · « Cubarsí » · « Araújo » · « Balde » · « De Jong » · « Pedri » · « Gavi » · « Yamal » · « Lewandowski » · « Raphinha » · « 11/11 » · « Équipe complète » · « Formation » · « 4-3-3 » · « · Capitaine » · « Voir le détail »

**Composants repérés** : `avatar`, `btn`, `card`, `toast`

</details>

**Issues liées sur ce même écran :** [MOB-H-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-02%5D%22) · [MOB-H-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-06%5D%22) · [MOB-H-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-08%5D%22) · [MOB-H-35](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-35%5D%22)

## 📐 Règles de gestion

- 409 Conflict = composition déjà verrouillée (CDC Backend §6) ; le client bascule en Locked.
- Lecture seule : slots non draggables, formation et capitaine non modifiables.
- Points en direct : rafraîchissement toutes les 60 s pendant le match (polling) ; arrêt quand le score final est calculé.
- 'Voir le détail' ouvre H-11.

## 🔄 Comportement et états

- Un toast d'erreur explique 'La journée est verrouillée, ta composition n'a pas été modifiée'.
- Aucune action possible sur le CTA d'enregistrement (masqué).

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/presentation/widgets/locked_banner.dart et live_badge.dart.
- [ ] Basculer l'UI en readOnly depuis l'état Locked.
- [ ] Polling avec Timer.periodic 60 s (arrêt en arrière-plan).
- [ ] Mapper FantasyLockedFailure vers toast.
- [ ] Clés ARB fantasyLocked, fantasyLive.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné un 409 alors l'écran passe en lecture seule avec le bandeau.
- [ ] Étant donné une journée en direct alors les points se rafraîchissent chaque minute.
- [ ] Étant donné un tap sur un joueur verrouillé alors aucune feuille ne s'ouvre.
- [ ] Étant donné 'Voir le détail' alors H-11 s'affiche.

## 🧪 Tests à écrire

- [ ] 409 -> Locked
- [ ] slots non interactifs
- [ ] polling 60 s
- [ ] arrêt du polling en background
- [ ] toast d'erreur

## ♿ Accessibilité et i18n

- Annonce 'composition verrouillée' à l'entrée

## 🔗 Dépendances

À réaliser après : `MOB-H-06` · `MOB-H-08` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.6
- CDC Backend §6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
