> **MOB-ZB-06** · Fonctionnel · Priorité **P1** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

ZE-04 précise que l'erreur est affichée à la sortie du champ (pas à chaque frappe) avec un message précis expliquant comment corriger (ex. « Adresse e-mail invalide »). La logique doit être centralisée pour tous les champs.

## ✅ Objectif

Mixin/contrôleur de validation `BarcaFieldValidator` avec stratégie « on blur, puis live après première erreur ».

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-02` — Zones de saisie — formes, tailles et états
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_light.webp?raw=true' width='330' alt='ZB-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__desktop_dark.webp?raw=true' width='330' alt='ZB-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_light.webp?raw=true' width='230' alt='ZB-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-02_zones-de-saisie-formes-tailles-et-etats__mobile_dark.webp?raw=true' width='230' alt='ZB-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 02 » · « Champs de saisie » · « Hauteur 52 px (60 px en grand, 44 px en compact), rayon 12 px, libellé au-dessus, aide et erreur en dessous. L’erreur est toujours associée au champ et redite par un texte (pas seulement par la couleur). » · « États » · « Repos » · « E-mail » · « prenom@exemple.com » · « Nous ne partagerons jamais ton adresse. » · « Focus » · « boris@exemple.com » · « Rempli » · « Erreur » · « boris@exemple » · « Adresse e-mail invalide » · « Succès » · « Boris_Culé » · « Désactivé » · « camille@univers-barca.app » · « Tailles » · « Compact · 44 px » · « Rechercher » · « Standard · 52 px » · « Pseudo » · « Grand · 60 px » · « Code d’invitation » · « Types de champs » · « Mot de passe » · « •••••••••• » · « Mot de passe solide » · « Sélecteur (liste) »

**Composants repérés** : `btn`, `input`, `search`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-07](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-07%5D%22) · [ADM-ADS-08](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-08%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [ADM-ADS-37](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-37%5D%22) · [MOB-ZB-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-04%5D%22) · [MOB-ZB-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-05%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22) · [MOB-ZD-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-12%5D%22)

#### `ZE-04` — Ergonomie — saisie, lisibilité et prévention des erreurs
_Module : Animations et micro-interactions_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_light.webp?raw=true' width='330' alt='ZE-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_dark.webp?raw=true' width='330' alt='ZE-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_light.webp?raw=true' width='230' alt='ZE-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_dark.webp?raw=true' width='230' alt='ZE-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ergonomie · 02 » · « Confort d’usage » · « Clavier, lisibilité, sécurité des actions et feedback : les détails qui donnent la sensation d’une application haut de gamme, fluide et fiable. » · « Univers Barça · Design System v1.1 » · « Mouvement & ergonomie » · « iOS · Android · Tablette » · « Saisie et clavier » · « Le clavier ne masque jamais l’action » · « boris@exemple.com » · « •••••• » · « Se connecter » · « CTA collé au-dessus du clavier · champ défilé en vue » · « Claviers adaptés au champ » · « E-mail » · « @ et .com visibles » · « Code à 6 chiffres » · « pavé numérique · collage SMS » · « Recherche » · « touche « Rechercher » » · « Message » · « saut de ligne, correction auto » · « Validation sans friction » · « boris@exemple » · « Adresse e-mail invalide » · « Erreur affichée à la sortie du champ, pas à chaque frappe. Message précis + comment corriger. » · « Mot de passe solide » · « Lisibilité et accessibilité fine » · « Texte dynamique » · « Jusqu’à 160 % sans coupure de mise en page » · « Plein soleil »

**Composants repérés** : `banner`, `btn`, `input`, `toast`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-34](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-34%5D%22) · [MOB-FND-36](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-36%5D%22) · [MOB-ZC-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-02%5D%22) · [MOB-ZE-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-13%5D%22) · [MOB-ZE-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-14%5D%22) · [MOB-ZE-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-15%5D%22) · [MOB-ZE-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-16%5D%22) · [MOB-ZE-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-18%5D%22)

## 📐 Règles de gestion

- Première validation à la perte de focus ; après une erreur, revalidation live à chaque frappe pour effacer l'erreur dès correction ; succès affiché après validation.
- Pas d'erreur sur champ vide non touché ; à la soumission, tous les champs invalides sont validés et le focus va au premier.
- Messages localisés avec règle de correction : e-mail « Adresse e-mail invalide — vérifie le @ et le domaine », mot de passe « 8 caractères minimum ».
- Le message d'erreur ne contient jamais de texte technique brut.

## 🛠️ Tâches

- [ ] Créer `lib/core/widgets/barca_text_field/validators.dart` : `Validators.email`, `required`, `minLength`, `pseudo`, `compose`.
- [ ] Ajouter `ValidationMode { onBlur, live }` et logique de transition dans `BarcaTextField`.
- [ ] Créer `BarcaForm` (GlobalKey, `validateAll()`, focus sur premier champ en erreur, scroll en vue).
- [ ] Ajouter ARB des messages d'erreur FR/EN/ES.
- [ ] Documenter les conventions (Joi côté API : mêmes règles, cf. API validation).
- [ ] Tests unitaires et widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné un e-mail « boris@exemple », quand le champ perd le focus, alors « Adresse e-mail invalide » est affiché.
- [ ] Étant donné l'erreur affichée, quand l'utilisateur corrige en tapant, alors l'erreur disparaît dès que la valeur est valide.
- [ ] Étant donné la frappe d'un e-mail partiel, alors aucune erreur n'apparaît avant la perte de focus.
- [ ] Étant donné un formulaire invalide soumis, alors le premier champ en erreur reçoit le focus et est visible malgré le clavier.

## 🧪 Tests à écrire

- [ ] Unitaire : chaque validateur (3 cas chacun).
- [ ] Widget : blur puis live.
- [ ] Widget : `validateAll` focus premier invalide.
- [ ] Widget : clavier ouvert, champ défilé en vue.

## ♿ Accessibilité et i18n

- Annonce vocale de l'erreur à l'apparition (`SemanticsService.announce`).

## 🔗 Dépendances

À réaliser après : `MOB-ZB-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.3
- CDC Global §3.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
