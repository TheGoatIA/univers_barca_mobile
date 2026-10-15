> **MOB-E-21** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

E-09 : « Niveau supérieur ! — Socio. Tu passes du niveau 2 au niveau 3. Les questions seront plus corsées — et rapporteront plus de points. » avec « Continuer » et « Partager ».

## ✅ Objectif

Implémenter la modale de montée de niveau avec célébration.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-09` — Montée de niveau
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-09_montee-de-niveau__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-09_montee-de-niveau__phone_light.webp?raw=true' width='230' alt='E-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-09_montee-de-niveau__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-09_montee-de-niveau__phone_dark.webp?raw=true' width='230' alt='E-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-09_montee-de-niveau__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-09_montee-de-niveau__tablet_light.webp?raw=true' width='330' alt='E-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-09_montee-de-niveau__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-09_montee-de-niveau__tablet_dark.webp?raw=true' width='330' alt='E-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Résultat » · « Niveau supérieur ! » · « Socio » · « Tu passes du niveau 2 au niveau 3. Les questions seront plus corsées — et rapporteront plus de points. » · « Continuer » · « Partager »

**Composants repérés** : `btn`, `modal`

</details>

**Issues liées sur ce même écran :** [API-JEUX-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-12%5D%22) · [API-JEUX-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-17%5D%22) · [MOB-E-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-08%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Affichée une seule fois par changement de niveau (identifiant `levelChangeId`).
- « Partager » partage une image « Niveau Socio — Univers Barça » sans donnée personnelle.
- Aucune pression : fermeture possible par « Continuer » ou glissement.

## 🛠️ Tâches

- [ ] Créer `LevelUpModal` (`showModalBottomSheet`/dialogue plein écran) avec badge de palier.
- [ ] Animer le badge (échelle 400 ms + halo) et confetti discret (désactivable).
- [ ] Générer l'image de partage via le service de partage commun (`RepaintBoundary`).
- [ ] Marquer l'événement comme vu (préférence locale `seen_level_change_id`).
- [ ] Mettre à jour `UserQuizLevel` en cache et le Passport.
- [ ] Analytics `quiz_level_up{from,to}`.
- [ ] Golden test.
- [ ] Tests widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné `levelChange:'up'` (2→3), quand E-08 est fermé, alors la modale affiche « Socio ».
- [ ] Étant donné la modale déjà vue, quand l'utilisateur revient sur E-08, alors elle n'est pas réaffichée.
- [ ] Étant donné « Partager », quand il est touché, alors une image sans nom d'utilisateur est partagée.
- [ ] Étant donné `reduceMotion`, quand la modale s'ouvre, alors aucun confetti n'est joué.

## 🧪 Tests à écrire

- [ ] Golden test : E-09.
- [ ] Widget test : une seule fois.
- [ ] Widget test : partage.
- [ ] Widget test : reduceMotion.

## ♿ Accessibilité et i18n

- Clés ARB : `levelUpTitle`, `levelUpBody` (placeholders), `continueAction`, `share`.

## 🔗 Dépendances

À réaliser après : `MOB-E-19` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.4
- CDC Backend §3.12.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
