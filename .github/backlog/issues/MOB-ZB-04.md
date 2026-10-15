> **MOB-ZB-04** · Écran · Priorité **P0** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

La planche Champs de saisie définit `BarcaTextField` : hauteur 52 px (60 grand, 44 compact), rayon 12, libellé au-dessus, aide et erreur en dessous. États : repos (« E-mail » / placeholder prenom@exemple.com / aide « Nous ne partagerons jamais ton adresse. »), focus, rempli, erreur (« Adresse e-mail invalide »), succès, désactivé.

## ✅ Objectif

Un champ de texte unique couvrant tous les états et tailles, sans `InputDecoration` ad hoc dans les écrans.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-02` — Zones de saisie — formes, tailles et états
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_light.webp?raw=true' width='330' alt='ZB-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_dark.webp?raw=true' width='330' alt='ZB-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_light.webp?raw=true' width='230' alt='ZB-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_dark.webp?raw=true' width='230' alt='ZB-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 02 » · « Champs de saisie » · « Hauteur 52 px (60 px en grand, 44 px en compact), rayon 12 px, libellé au-dessus, aide et erreur en dessous. L’erreur est toujours associée au champ et redite par un texte (pas seulement par la couleur). » · « États » · « Repos » · « E-mail » · « prenom@exemple.com » · « Nous ne partagerons jamais ton adresse. » · « Focus » · « boris@exemple.com » · « Rempli » · « Erreur » · « boris@exemple » · « Adresse e-mail invalide » · « Succès » · « Boris_Culé » · « Désactivé » · « camille@univers-barca.app » · « Tailles » · « Compact · 44 px » · « Rechercher » · « Standard · 52 px » · « Pseudo » · « Grand · 60 px » · « Code d’invitation » · « Types de champs » · « Mot de passe » · « •••••••••• » · « Mot de passe solide » · « Sélecteur (liste) »

**Composants repérés** : `btn`, `input`, `search`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-07](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-07%5D%22) · [ADM-ADS-08](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-08%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [ADM-ADS-37](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-37%5D%22) · [MOB-ZB-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-05%5D%22) · [MOB-ZB-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-06%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22) · [MOB-ZD-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-12%5D%22)

## 📐 Règles de gestion

- Tailles : compact 44 (ex. « Rechercher »), standard 52 (« Pseudo »), grand 60 (« Code d'invitation »).
- Structure verticale : libellé (body 13 w600) 6 px au-dessus ; champ ; ligne aide/erreur 12 px sous le champ, 4 px d'espace.
- Bordure : repos 1 px outline ; focus 2 px primary ; erreur 2 px error + icône ⚠ ; succès 1,5 px success + coche ; désactivé fond surface à 60 %, texte à 38 %.
- Erreur toujours redite par un texte (pas seulement la couleur) : icône + message sous le champ ; remplace le texte d'aide.
- Compteur de caractères optionnel (« 0 / 800 ») aligné à droite.

## 🛠️ Tâches

- [ ] Créer `lib/core/widgets/barca_text_field/barca_text_field.dart` basé sur `TextFormField` + `InputDecoration` générée depuis les tokens.
- [ ] Ajouter `BarcaFieldSize { compact, standard, large }` et `BarcaFieldStatus { idle, success, error }`.
- [ ] Gérer le focus (animation bordure 180 ms) et la remontée du libellé (non flottant : libellé fixe).
- [ ] Ajouter `prefixIcon`, `suffix`, `helperText`, `errorText`, `maxLength` + `counter`.
- [ ] Support `FocusNode`, `TextEditingController`, `autofillHints`, `textInputAction`.
- [ ] Brancher `BarcaFocusRing` hors du contour de la bordure (ZD-05).
- [ ] Remplacer les `TextField` des écrans existants ; page widgetbook.
- [ ] Goldens des 6 états × 3 tailles.

## ✔️ Critères d'acceptation

- [ ] Étant donné `errorText` non nul, quand le champ est rendu, alors le message apparaît sous le champ avec l'icône et la bordure error.
- [ ] Étant donné la taille standard, alors la hauteur du champ est 52 px (44 compact, 60 grand).
- [ ] Étant donné `enabled: false`, quand on tape sur le champ, alors le clavier ne s'ouvre pas.
- [ ] Étant donné le thème sombre, quand le champ a le focus, alors la bordure est #C4265E 2 px.
- [ ] Étant donné texte à 160 %, alors le libellé et l'aide ne sont pas coupés.

## 🧪 Tests à écrire

- [ ] Widget : hauteurs 44/52/60.
- [ ] Widget : aide remplacée par erreur.
- [ ] Widget : désactivé non focalisable.
- [ ] Widget : compteur « 0 / 800 ».
- [ ] Golden : états clair/sombre.

## ♿ Accessibilité et i18n

- `Semantics` : label = libellé, hint = aide, `errorText` annoncé via `liveRegion` ; l'erreur est lue après le libellé.
- ARB : libellés de la planche (`fieldEmailLabel`, `fieldEmailHelper`…).

## 📚 Références

- CDC Flutter §9.3
- CDC Global §3.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
