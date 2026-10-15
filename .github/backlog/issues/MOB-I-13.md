> **MOB-I-13** · Écran · Priorité **P0** · Taille **S** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Modale : récapitulatif de la décision choisie (Technique · Fatigue), mention 'La décision sera appliquée à la fin de la semaine.', boutons Confirmer / Changer.

## ✅ Objectif

Sécuriser le choix unique hebdomadaire.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `I-07` — Confirmation de la décision
_Module : La Masia Academy_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-07_confirmation-de-la-decision__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-07_confirmation-de-la-decision__phone_light.webp?raw=true' width='230' alt='I-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-07_confirmation-de-la-decision__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-07_confirmation-de-la-decision__phone_dark.webp?raw=true' width='230' alt='I-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-07_confirmation-de-la-decision__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-07_confirmation-de-la-decision__tablet_light.webp?raw=true' width='330' alt='I-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-07_confirmation-de-la-decision__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-07_confirmation-de-la-decision__tablet_dark.webp?raw=true' width='330' alt='I-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Semaine 4 » · « Entraînement technique » · « Contrôle, passes, dribbles » · « Technique + » · « Fatigue + » · « Entraînement physique » · « Endurance, force, explosivité » · « Physique + » · « Fatigue ++ » · « Travail tactique » · « Lecture du jeu, placement » · « Intelligence + » · « Fatigue ~ » · « Repos / récupération » · « Sommeil, soins, décompression » · « Fatigue −− » · « Forme ~ » · « Suivi nutritionnel » · « Réduit l’impact de la fatigue » · « Malus fatigue − » · « Technique » · « · Fatigue » · « . La décision sera appliquée à la fin de la semaine. » · « Confirmer » · « Changer »

**Composants repérés** : `btn`, `card`, `modal`

</details>

**Issues liées sur ce même écran :** [MOB-I-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-04%5D%22) · [MOB-I-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-05%5D%22)

## 📐 Règles de gestion

- Confirmer -> POST /academy/player/decision ; Changer -> fermeture.
- Envoi en chargement non fermable.
- 409 -> 'Décision déjà prise cette semaine'.
- Succès -> retour accueil avec toast 'Décision enregistrée'.

## 🔄 Comportement et états

- Aucun effet appliqué avant la fin de la semaine.

## 🛠️ Tâches

- [ ] Créer lib/features/academy/presentation/widgets/confirm_decision_dialog.dart.
- [ ] Appel DecisionConfirmed.
- [ ] Gestion 409.
- [ ] Toast.
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné Confirmer alors un POST est envoyé.
- [ ] Étant donné Changer alors retour aux cartes.
- [ ] Étant donné un 409 alors le message s'affiche.
- [ ] Étant donné un envoi alors la modale est bloquée.

## 🧪 Tests à écrire

- [ ] POST décision
- [ ] Changer
- [ ] 409
- [ ] non fermable

## 🔗 Dépendances

À réaliser après : `MOB-I-12` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §3.5
- CDC Backend §3.12.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
