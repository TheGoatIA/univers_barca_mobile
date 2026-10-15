> **MOB-D-19** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Une bottom sheet « Partager » présente un aperçu de la carte (« Univers Barça — Guess the Player · n°214 · 3/6 · Série de 12 jours ») et 4 destinations : WhatsApp, Instagram, Copier, Image. Un toast confirme « Résultat copié dans le presse-papiers ».

## ✅ Objectif

Implémenter la feuille de partage D-09 reliée au service de génération d'image.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `D-09` — Partage — image de résultat
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-09_partage-image-de-resultat__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-09_partage-image-de-resultat__phone_light.webp?raw=true' width='230' alt='D-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-09_partage-image-de-resultat__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-09_partage-image-de-resultat__phone_dark.webp?raw=true' width='230' alt='D-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-09_partage-image-de-resultat__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-09_partage-image-de-resultat__tablet_light.webp?raw=true' width='330' alt='D-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-09_partage-image-de-resultat__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-09_partage-image-de-resultat__tablet_dark.webp?raw=true' width='330' alt='D-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Partager » · « Univers » · « Barça » · « Guess the Player · n°214 » · « 3/6 » · « Série de 12 jours » · « WhatsApp » · « Instagram » · « Copier » · « Image » · « Résultat copié dans le presse-papiers »

**Composants repérés** : `toast`

</details>

**Issues liées sur ce même écran :** [API-JEUX-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-09%5D%22) · [API-JEUX-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-19%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-D-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-18%5D%22) · [MOB-D-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-28%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

## 📐 Règles de gestion

- 4 actions en grille : WhatsApp (texte + image), Instagram (story), Copier (texte), Image (enregistrement/partage du PNG).
- Toast de succès : « Résultat copié dans le presse-papiers » (2 s) ; toast d'erreur si la capture échoue.
- Aperçu de la carte avec le même widget que l'image exportée (cohérence visuelle).

## 🛠️ Tâches

- [ ] Créer `presentation/widgets/guess_share_sheet.dart` (`showModalBottomSheet`).
- [ ] Créer `ShareDestinationButton(icon,label,onTap)`.
- [ ] Détecter la disponibilité de WhatsApp/Instagram (`url_launcher.canLaunchUrl` ; déclarer `LSApplicationQueriesSchemes` iOS et `<queries>` Android).
- [ ] Brancher les actions sur `ShareImageService` / `EmojiGridFormatter`.
- [ ] Utiliser le composant `AppToast` du design system.
- [ ] Analytics `guess_shared{channel}`.
- [ ] Gérer le chargement pendant la capture (bouton désactivé avec spinner).
- [ ] Tests widget et golden.

## ✔️ Critères d'acceptation

- [ ] Étant donné D-07, quand « Partager mon résultat » est touché, alors la feuille s'ouvre avec l'aperçu de la carte.
- [ ] Étant donné « Copier », quand il est touché, alors le toast « Résultat copié dans le presse-papiers » s'affiche.
- [ ] Étant donné une capture en erreur, quand une action est touchée, alors un message d'erreur est affiché et l'app reste stable.
- [ ] Étant donné iOS sans WhatsApp, quand la feuille s'ouvre, alors le bouton WhatsApp est masqué ou désactivé.

## 🧪 Tests à écrire

- [ ] Widget test : 4 destinations.
- [ ] Widget test : toast de copie.
- [ ] Widget test : échec de capture.
- [ ] Golden test : D-09 clair/sombre.

## ♿ Accessibilité et i18n

- Clés ARB : `shareTitle`, `shareWhatsapp`, `shareInstagram`, `shareCopy`, `shareImage`, `resultCopied`, `shareError`.

## 🔗 Dépendances

À réaliser après : `MOB-D-18` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.3
- CDC Global §2.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
