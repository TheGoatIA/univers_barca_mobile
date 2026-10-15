> **MOB-ZD-12** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Anneau de focus (contour 3 px, décalage 2 px), `Semantics(label: « Partager mon résultat »)`, « Ajouter à mon agenda », règle « couleur non exclusive » (icône, libellé ou motif accompagnent Correct/Proche/Faux/Verrouillé).

## ✅ Objectif

`BarcaFocusRing` global, helpers de sémantique et audit de couleur non exclusive.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZD-05` — Accessibilité
_Module : Composants métier et responsive_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-05_accessibilite__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-05_accessibilite__desktop_light.webp?raw=true' width='330' alt='ZD-05 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-05_accessibilite__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-05_accessibilite__desktop_dark.webp?raw=true' width='330' alt='ZD-05 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-05_accessibilite__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-05_accessibilite__mobile_light.webp?raw=true' width='230' alt='ZD-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-05_accessibilite__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-05_accessibilite__mobile_dark.webp?raw=true' width='230' alt='ZD-05 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Qualité · 01 » · « Accessibilité » · « Cibles tactiles ≥ 44 × 44 pt, contrastes WCAG AA dans les deux thèmes, libellés sémantiques pour VoiceOver/TalkBack, navigation clavier complète côté admin. » · « Cibles tactiles » · « Bouton icône 44 × 44 » · « 44 × 44 pt minimum » · « Bouton compact 36 px + zone étendue » · « Rejoindre » · « zone de frappe étendue à 44 pt » · « Espacement entre cibles » · « ≥ 8 px entre deux cibles » · « Focus, lecteur d’écran et clavier » · « Anneau de focus » · « Valider » · « Rechercher » · « contour 3 px · décalage 2 px » · « Libellés sémantiques » · « Semantics(label: « Partager mon résultat ») » · « Semantics(label: « Ajouter à mon agenda ») » · « aria-label=« Bannir l’utilisateur » » · « aria-describedby → message d’erreur » · « Raccourcis admin » · « Ctrl K » · « Recherche globale » · « J / K » · « Signalement suivant / précédent » · « A / R » · « Approuver / rejeter » · « Esc » · « Fermer le panneau »

**Composants repérés** : `btn`, `input`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-26](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-26%5D%22) · [ADM-ADS-27](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-27%5D%22) · [ADM-ADS-29](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-29%5D%22) · [MOB-FND-36](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-36%5D%22) · [MOB-ZA-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZA-12%5D%22) · [MOB-ZB-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-03%5D%22) · [MOB-ZD-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-11%5D%22)

#### `ZB-01` — Boutons — variantes, tailles et formes
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_light.webp?raw=true' width='330' alt='ZB-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_dark.webp?raw=true' width='330' alt='ZB-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_light.webp?raw=true' width='230' alt='ZB-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_dark.webp?raw=true' width='230' alt='ZB-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 01 » · « Boutons » · « Hauteurs 28 / 36 / 44 / 52 / 56 px, rayon 12 px. Toute zone interactive respecte une cible tactile d’au moins 44 × 44 points (la zone invisible est étendue pour les boutons XS et SM). » · « Variantes » · « Primaire » · « Valider » · « BarcaButton.primary » · « Secondaire (contour) » · « BarcaButton.secondary » · « Tonal » · « BarcaButton.tonal » · « Fantôme » · « BarcaButton.ghost » · « Texte » · « BarcaButton.text » · « Navy » · « BarcaButton.navy » · « Or » · « BarcaButton.gold » · « Danger » · « BarcaButton.danger » · « Tailles » · « Hauteur et typographie par taille — de XS (28 px) à Large (56 px). » · « Échelle » · « XS · 28 px » · « Continuer » · « SM · 36 px » · « MD · 44 px » · « Défaut · 52 px » · « LG · 56 px »

**Composants repérés** : `btn`, `spinner`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-06](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-06%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [ADM-ADS-37](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-37%5D%22) · [MOB-ZB-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-01%5D%22) · [MOB-ZB-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-02%5D%22) · [MOB-ZB-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-03%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22)

#### `ZB-02` — Zones de saisie — formes, tailles et états
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_light.webp?raw=true' width='330' alt='ZB-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_dark.webp?raw=true' width='330' alt='ZB-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_light.webp?raw=true' width='230' alt='ZB-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_dark.webp?raw=true' width='230' alt='ZB-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 02 » · « Champs de saisie » · « Hauteur 52 px (60 px en grand, 44 px en compact), rayon 12 px, libellé au-dessus, aide et erreur en dessous. L’erreur est toujours associée au champ et redite par un texte (pas seulement par la couleur). » · « États » · « Repos » · « E-mail » · « prenom@exemple.com » · « Nous ne partagerons jamais ton adresse. » · « Focus » · « boris@exemple.com » · « Rempli » · « Erreur » · « boris@exemple » · « Adresse e-mail invalide » · « Succès » · « Boris_Culé » · « Désactivé » · « camille@univers-barca.app » · « Tailles » · « Compact · 44 px » · « Rechercher » · « Standard · 52 px » · « Pseudo » · « Grand · 60 px » · « Code d’invitation » · « Types de champs » · « Mot de passe » · « •••••••••• » · « Mot de passe solide » · « Sélecteur (liste) »

**Composants repérés** : `btn`, `input`, `search`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-07](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-07%5D%22) · [ADM-ADS-08](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-08%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [ADM-ADS-37](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-37%5D%22) · [MOB-ZB-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-04%5D%22) · [MOB-ZB-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-05%5D%22) · [MOB-ZB-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-06%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22)

## 📐 Règles de gestion

- Anneau de focus : 3 px secondary, décalage 2 px, rayon = rayon du composant + 2 ; visible navigation clavier/switch.
- Toute icône seule porte un `semanticLabel` traduit ; ordre de lecture logique.
- États Correct/Proche/Faux/Verrouillé : icône ✓ / ≈ / ✕ / cadenas + libellé.
- Contrastes AA (cf. za-contraste-wcag-test).

## 🛠️ Tâches

- [ ] Créer `lib/core/a11y/barca_focus_ring.dart` et `semantic_helpers.dart`.
- [ ] Appliquer aux boutons, champs, chips, cartes tappables.
- [ ] Créer `StatusIndicator` (icône + libellé + couleur) pour états.
- [ ] Test `meetsGuideline(labeledTapTargetGuideline)` sur écrans de démonstration.
- [ ] Checklist TalkBack/VoiceOver manuelle documentée.

## ✔️ Critères d'acceptation

- [ ] Étant donné la navigation Tab, alors un anneau de 3 px décalé de 2 px entoure l'élément focalisé.
- [ ] Étant donné un bouton icône sans label, alors le test labeledTapTargetGuideline échoue.
- [ ] Étant donné l'état « Verrouillé », alors icône cadenas et libellé sont présents.

## 🧪 Tests à écrire

- [ ] Widget : focus ring.
- [ ] Widget : labeledTapTargetGuideline.
- [ ] Widget : StatusIndicator.
- [ ] Golden : focus.

## ♿ Accessibilité et i18n

- ARB : `semanticsShareResult` « Partager mon résultat », `semanticsAddToCalendar` « Ajouter à mon agenda ».

## 🔗 Dépendances

À réaliser après : `MOB-ZD-11` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.6
- CDC Global §3.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
