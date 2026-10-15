> **MOB-I-18** · Écran · Priorité **P1** · Taille **M** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Modale 'Promotion ! Juvenil B — Samuel atteint 75 de global et rejoint la catégorie supérieure. Nouveau badge débloqué !' avec bouton Continuer.

## ✅ Objectif

Célébrer la montée de catégorie et notifier le badge.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `I-12` — Jalon — promotion
_Module : La Masia Academy_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-12_jalon-promotion__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-12_jalon-promotion__phone_light.webp?raw=true' width='230' alt='I-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-12_jalon-promotion__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-12_jalon-promotion__phone_dark.webp?raw=true' width='230' alt='I-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-12_jalon-promotion__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-12_jalon-promotion__tablet_light.webp?raw=true' width='330' alt='I-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-12_jalon-promotion__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-12_jalon-promotion__tablet_dark.webp?raw=true' width='330' alt='I-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « La Masia Academy » · « Cadet A · 15 ans » · « Samuel Mbarga » · « Milieu offensif · Pied gauche » · « Global » · « Forme » · « 78% » · « Fatigue » · « 34% » · « S4 » · « Semaine 4 · décision à prendre » · « Prochain match de l'académie samedi » · « Attributs » · « Technique » · « Physique » · « Intelligence » · « Vitesse » · « Mental » · « Finition » · « Prendre la décision de la semaine » · « Promotion ! » · « Juvenil B » · « Samuel atteint 75 de global et rejoint la catégorie supérieure. Nouveau badge débloqué ! » · « Continuer »

**Composants repérés** : `btn`, `card`, `modal`

</details>

**Issues liées sur ce même écran :** [MOB-I-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-04%5D%22) · [MOB-I-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-20%5D%22) · [MOB-I-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-22%5D%22)

## 📐 Règles de gestion

- Déclenché quand global >= seuil (75) ; la modale n'apparaît qu'une fois par palier.
- Met à jour la catégorie affichée (Cadet A -> Juvenil B) et déclenche le flux de badge du Passport (P-06).
- Animation de confettis courte (1,5 s), désactivable.
- Le moteur de points est partagé (CDC Global §2.7) : le badge est calculé côté serveur.

## 🔄 Comportement et états

- Continuer ferme et affiche l'accueil mis à jour.

## 🛠️ Tâches

- [ ] Créer lib/features/academy/presentation/widgets/promotion_dialog.dart.
- [ ] MilestoneAcknowledged.
- [ ] Mémoriser le palier vu.
- [ ] Brancher la file d'événements de badge.
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné global 75 alors la modale s'affiche une fois.
- [ ] Étant donné Continuer alors catégorie Juvenil B.
- [ ] Étant donné un badge débloqué alors le flux Passport démarre.
- [ ] Étant donné reduce-motion alors pas de confettis.

## 🧪 Tests à écrire

- [ ] modale une fois
- [ ] catégorie mise à jour
- [ ] badge relayé

## ♿ Accessibilité et i18n

- Titre annoncé, focus sur Continuer

## 🔗 Dépendances

À réaliser après : `MOB-I-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.7
- CDC Backend §3.12.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
