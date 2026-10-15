> **MOB-I-19** · Écran · Priorité **P2** · Taille **S** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Écran 'Bientôt disponible — La Masia Academy arrive très bientôt. Reste à l'écoute !' avec 'Me prévenir'.

## ✅ Objectif

Gérer l'indisponibilité du module.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `I-13` — Module désactivé
_Module : La Masia Academy_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-13_module-desactive__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-13_module-desactive__phone_light.webp?raw=true' width='230' alt='I-13 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-13_module-desactive__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-13_module-desactive__phone_dark.webp?raw=true' width='230' alt='I-13 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-13_module-desactive__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-13_module-desactive__tablet_light.webp?raw=true' width='330' alt='I-13 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-13_module-desactive__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-13_module-desactive__tablet_dark.webp?raw=true' width='330' alt='I-13 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « La Masia Academy » · « Bientôt disponible » · « La Masia Academy arrive très bientôt. Reste à l’écoute ! » · « Me prévenir »

**Composants repérés** : `btn`

</details>

## 📐 Règles de gestion

- Déclenché par flag distant ou 403 module désactivé.
- 'Me prévenir' gère la permission push comme Fantasy.
- Aucun appel /academy tant que off.
- État confirmé persisté.

## 🔄 Comportement et états

- Retour libre.

## 🛠️ Tâches

- [ ] Créer lib/features/academy/presentation/widgets/academy_disabled_view.dart.
- [ ] Lecture du flag.
- [ ] Abonnement notification.
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné flag off alors l'écran s'affiche sans appel.
- [ ] Étant donné Me prévenir alors permission demandée.
- [ ] Étant donné 403 alors même écran.
- [ ] Étant donné réouverture alors état conservé.

## 🧪 Tests à écrire

- [ ] flag off
- [ ] 403
- [ ] bouton confirmé

## 🔗 Dépendances

À réaliser après : `MOB-I-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
