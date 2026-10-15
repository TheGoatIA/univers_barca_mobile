> **MOB-ZC-02** · Écran · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Modale centrée « Désactiver la localisation ? — Tu n'apparaîtras plus dans les compteurs. » avec bouton danger « Désactiver » et « Annuler » texte. ZE-04 exige que les actions destructives soient toujours confirmées et éloignées du CTA.

## ✅ Objectif

`showBarcaDialog` / `BarcaConfirmDialog` pour toute confirmation.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZC-01` — Surfaces flottantes — sheets, modales, toasts
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_light.webp?raw=true' width='330' alt='ZC-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_dark.webp?raw=true' width='330' alt='ZC-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_light.webp?raw=true' width='230' alt='ZC-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_dark.webp?raw=true' width='230' alt='ZC-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 07 » · « Surfaces flottantes » · « Bottom sheets (24 px de rayon), modales centrées, toasts et infobulles. Sur tablette, les sheets deviennent des panneaux centrés de 600 px maximum. » · « Bottom sheet et modale » · « Bottom sheet » · « Formation » · « 4-3-3 » · « 4-2-3-1 » · « Appliquer » · « Modale de confirmation » · « Désactiver la localisation ? » · « Tu n’apparaîtras plus dans les compteurs. » · « Désactiver » · « Annuler » · « Modale de célébration » · « Nouveau badge ! » · « GOAT voter » · « Super ! » · « Toasts, snackbars et infobulles » · « Toast succès » · « Équipe enregistrée · J11 » · « Toast erreur » · « Composition déjà verrouillée » · « Toast information » · « Ta série de 12 jours est en danger » · « Infobulle » · « Pose-moi une question sur le Barça ! 👋 » · « Toast admin » · « Fiche publiée » · « Notification push »

**Composants repérés** : `btn`, `modal`, `sheet`, `toast`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-16](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-16%5D%22) · [ADM-ADS-17](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-17%5D%22) · [ADM-ADS-18](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-18%5D%22) · [ADM-ADS-37](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-37%5D%22) · [MOB-FND-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-32%5D%22) · [MOB-ZC-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-01%5D%22) · [MOB-ZC-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-03%5D%22) · [MOB-ZC-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-04%5D%22) · [MOB-ZC-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-05%5D%22) · [MOB-ZC-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-17%5D%22)

#### `ZE-04` — Ergonomie — saisie, lisibilité et prévention des erreurs
_Module : Animations et micro-interactions_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_light.webp?raw=true' width='330' alt='ZE-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_dark.webp?raw=true' width='330' alt='ZE-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_light.webp?raw=true' width='230' alt='ZE-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_dark.webp?raw=true' width='230' alt='ZE-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ergonomie · 02 » · « Confort d’usage » · « Clavier, lisibilité, sécurité des actions et feedback : les détails qui donnent la sensation d’une application haut de gamme, fluide et fiable. » · « Univers Barça · Design System v1.1 » · « Mouvement & ergonomie » · « iOS · Android · Tablette » · « Saisie et clavier » · « Le clavier ne masque jamais l’action » · « boris@exemple.com » · « •••••• » · « Se connecter » · « CTA collé au-dessus du clavier · champ défilé en vue » · « Claviers adaptés au champ » · « E-mail » · « @ et .com visibles » · « Code à 6 chiffres » · « pavé numérique · collage SMS » · « Recherche » · « touche « Rechercher » » · « Message » · « saut de ligne, correction auto » · « Validation sans friction » · « boris@exemple » · « Adresse e-mail invalide » · « Erreur affichée à la sortie du champ, pas à chaque frappe. Message précis + comment corriger. » · « Mot de passe solide » · « Lisibilité et accessibilité fine » · « Texte dynamique » · « Jusqu’à 160 % sans coupure de mise en page » · « Plein soleil »

**Composants repérés** : `banner`, `btn`, `input`, `toast`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-34](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-34%5D%22) · [MOB-FND-36](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-36%5D%22) · [MOB-ZB-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-06%5D%22) · [MOB-ZE-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-13%5D%22) · [MOB-ZE-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-14%5D%22) · [MOB-ZE-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-15%5D%22) · [MOB-ZE-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-16%5D%22) · [MOB-ZE-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-18%5D%22)

## 📐 Règles de gestion

- Rayon 24, largeur max 340 px mobile, padding 24, icône 48 px dans pastille teintée (or pour info, error pour destructif).
- Titre h3 centré majuscule ; description body secondaire ; boutons empilés : action principale (danger/primaire) puis « Annuler » texte.
- Animation : pop 300 ms (échelle 0,92 → 1) + fondu ; fermeture 180 ms ; haptique selon gravité (`heavyImpact` pour destructive).
- Scrim 40 %, fermeture au tap sur scrim désactivée pour destructive.
- Variante saisie de confirmation (mot de passe/texte) pour suppression de compte en 3 étapes (ZE-04) : `confirmationText`.

## 🛠️ Tâches

- [ ] Créer `barca_dialog.dart` et `show_barca_dialog.dart` (`showGeneralDialog` + transition personnalisée).
- [ ] Définir `BarcaDialogKind { info, warning, destructive }`.
- [ ] Retour typé `Future<bool?>`.
- [ ] Variante `requireTyped(text: ...)` avec champ de saisie et bouton désactivé tant que non conforme.
- [ ] Focus trap et restauration du focus.
- [ ] ARB : `dialogCancel`, `dialogConfirm`.
- [ ] Tests, widgetbook.

## ✔️ Critères d'acceptation

- [ ] Étant donné une confirmation destructive, quand on tape hors de la modale, alors elle reste ouverte.
- [ ] Étant donné « Annuler », quand on tape, alors le futur retourne false.
- [ ] Étant donné `requireTyped('SUPPRIMER')`, quand le texte est incomplet, alors le bouton est désactivé.
- [ ] Étant donné TalkBack, quand la modale s'ouvre, alors le titre est annoncé.

## 🧪 Tests à écrire

- [ ] Widget : retour true/false.
- [ ] Widget : saisie obligatoire.
- [ ] Widget : pas de dismiss sur scrim (destructive).
- [ ] Golden : modale confirmation.

## ♿ Accessibilité et i18n

- `Semantics(namesRoute)`; boutons ≥ 44 pt; espace ≥ 8 px entre boutons.

## 📚 Références

- CDC Flutter §9.3
- CDC Global §3.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
