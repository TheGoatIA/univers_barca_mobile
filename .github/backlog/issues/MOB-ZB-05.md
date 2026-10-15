> **MOB-ZB-05** · Écran · Priorité **P1** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

La planche liste les types : Mot de passe (•••••••••• + indicateur « Mot de passe solide »), recherche, sélecteur en liste (« Pays » → Cameroun), date (24/10/2026) et heure, ainsi que le code à 6 chiffres et le message multiligne (ZE-04).

## ✅ Objectif

Variantes de `BarcaTextField` : `.password`, `.search`, `.select`, `.date`, `.time`, `.otp`, `.multiline`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-02` — Zones de saisie — formes, tailles et états
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_light.webp?raw=true' width='330' alt='ZB-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_dark.webp?raw=true' width='330' alt='ZB-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_light.webp?raw=true' width='230' alt='ZB-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_dark.webp?raw=true' width='230' alt='ZB-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 02 » · « Champs de saisie » · « Hauteur 52 px (60 px en grand, 44 px en compact), rayon 12 px, libellé au-dessus, aide et erreur en dessous. L’erreur est toujours associée au champ et redite par un texte (pas seulement par la couleur). » · « États » · « Repos » · « E-mail » · « prenom@exemple.com » · « Nous ne partagerons jamais ton adresse. » · « Focus » · « boris@exemple.com » · « Rempli » · « Erreur » · « boris@exemple » · « Adresse e-mail invalide » · « Succès » · « Boris_Culé » · « Désactivé » · « camille@univers-barca.app » · « Tailles » · « Compact · 44 px » · « Rechercher » · « Standard · 52 px » · « Pseudo » · « Grand · 60 px » · « Code d’invitation » · « Types de champs » · « Mot de passe » · « •••••••••• » · « Mot de passe solide » · « Sélecteur (liste) »

**Composants repérés** : `btn`, `input`, `search`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-07](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-07%5D%22) · [ADM-ADS-08](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-08%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [ADM-ADS-37](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-37%5D%22) · [MOB-ZB-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-04%5D%22) · [MOB-ZB-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-06%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22) · [MOB-ZD-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-12%5D%22)

## 📐 Règles de gestion

- Mot de passe : bouton œil 44 × 44 (afficher/masquer), indicateur de robustesse à 4 segments (Faible → Solide) sous le champ, libellé « Mot de passe solide » en success ; autofill + `obscureText`.
- Recherche : champ compact 44, icône loupe, bouton effacer, `textInputAction: search` (« Rechercher »), debounce 300 ms.
- Sélecteur : ouvre un bottom sheet avec liste/recherche (ZC-01) ; valeur affichée + chevron-d ; ex. pays « Cameroun ».
- Date/heure : `showDatePicker`/`showTimePicker` thémés, format localisé (24/10/2026 en fr), champ non éditable à la main.
- OTP 6 chiffres : 6 cases 48 × 56, pavé numérique, collage SMS (`AutofillHints.oneTimeCode`), saut automatique, retour arrière.
- Multiligne : 3 à 6 lignes, saut de ligne, correction auto, compteur.

## 🛠️ Tâches

- [ ] Créer `barca_password_field.dart` + `PasswordStrengthMeter` (calcul : longueur ≥ 8, classes de caractères ; indépendant des règles serveur).
- [ ] Créer `barca_search_field.dart` avec debounce 300 ms (`Timer`).
- [ ] Créer `barca_select_field.dart` + `BarcaOptionSheet`.
- [ ] Créer `barca_date_field.dart` et `barca_time_field.dart` avec `intl` (locale courante).
- [ ] Créer `barca_otp_field.dart` (6 `FocusNode`, `FilteringTextInputFormatter.digitsOnly`).
- [ ] Créer `barca_multiline_field.dart` (`minLines: 3`, `maxLines: 6`).
- [ ] Claviers adaptés : `TextInputType.emailAddress` (@ et .com visibles), `number`, `search`, `multiline`.
- [ ] Use cases widgetbook et goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné un mot de passe de 4 caractères, quand l'utilisateur tape, alors l'indicateur affiche « Faible » (1 segment).
- [ ] Étant donné le collage « 123456 » dans l'OTP, alors les 6 cases sont remplies et `onCompleted` est appelé une fois.
- [ ] Étant donné la locale `en`, quand la date 24/10/2026 est choisie, alors elle s'affiche « 10/24/2026 ».
- [ ] Étant donné la frappe rapide dans la recherche, quand 300 ms s'écoulent sans frappe, alors `onChanged` est émis une seule fois.

## 🧪 Tests à écrire

- [ ] Unitaire : calcul de robustesse (5 cas).
- [ ] Widget : œil bascule `obscureText`.
- [ ] Widget : OTP saut et retour arrière.
- [ ] Widget : debounce recherche (fakeAsync).
- [ ] Widget : select ouvre la sheet.
- [ ] Golden : types de champs clair/sombre.

## ♿ Accessibilité et i18n

- Bouton œil : label « Afficher le mot de passe »/« Masquer le mot de passe ».
- OTP : chaque case annonce « Chiffre 3 sur 6 ».
- ARB : `passwordStrengthWeak|Fair|Good|Strong`.

## 🔗 Dépendances

À réaliser après : `MOB-ZB-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
