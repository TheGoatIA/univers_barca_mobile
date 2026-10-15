> **MOB-P-10** · Écran · Priorité **P1** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Feuille 'Badge — Débloqué le 12 oct. 2026 — Série de 10 jours' : description 'Tu as joué au moins un jeu quotidien 10 jours de suite. Continue pour viser les 100 !', 'Prochain palier 12 / 100 jours' et bouton 'Partager ce badge'.

## ✅ Objectif

Afficher le détail d'un badge obtenu et son prochain palier.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `P-04` — Badge débloqué — détail
_Module : Culé Passport_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-04_badge-debloque-detail__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-04_badge-debloque-detail__phone_light.webp?raw=true' width='230' alt='P-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-04_badge-debloque-detail__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-04_badge-debloque-detail__phone_dark.webp?raw=true' width='230' alt='P-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-04_badge-debloque-detail__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-04_badge-debloque-detail__tablet_light.webp?raw=true' width='330' alt='P-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-04_badge-debloque-detail__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-04_badge-debloque-detail__tablet_dark.webp?raw=true' width='330' alt='P-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Badge » · « Débloqué le 12 oct. 2026 » · « Série de 10 jours » · « Tu as joué au moins un jeu quotidien 10 jours de suite. Continue pour viser les 100 ! » · « Prochain palier » · « 12 / 100 jours » · « Partager ce badge »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-P-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-09%5D%22) · [MOB-P-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-18%5D%22)

## 📐 Règles de gestion

- Date localisée ; prochain palier avec barre (12/100).
- Partage : image générée (badge + libellé) via la feuille de partage système ; aucun lien personnel exposé.
- Fermeture par glissement.
- Pas de partage si badge verrouillé.

## 🔄 Comportement et états

- Erreur de génération d'image : message et réessai.

## 🛠️ Tâches

- [ ] Créer lib/features/profile_passport/presentation/widgets/badge_detail_sheet.dart.
- [ ] Génération d'image (RepaintBoundary -> PNG).
- [ ] share_plus.
- [ ] Barre de palier.
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné un badge débloqué alors la date s'affiche.
- [ ] Étant donné 'Partager' alors la feuille système s'ouvre avec l'image.
- [ ] Étant donné un badge sans palier alors pas de barre.
- [ ] Étant donné une erreur alors réessai.

## 🧪 Tests à écrire

- [ ] date localisée
- [ ] partage appelé
- [ ] palier masqué
- [ ] golden

## ♿ Accessibilité et i18n

- Bouton Partager libellé

## 🔗 Dépendances

À réaliser après : `MOB-P-08` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.12
- CDC Global §2.11

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
