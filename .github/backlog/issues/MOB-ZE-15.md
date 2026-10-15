> **MOB-ZE-15** · UX / Ergonomie · Priorité **P1** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

ZE-04 : plein soleil = contrastes AA minimum, boutons à fort contraste ; mode sombre OLED = fond #121218 (pas de noir pur : pas de traînées) ; VoiceOver/TalkBack avec libellés sur toutes les icônes.

## ✅ Objectif

Vérifier et documenter les contrastes extrêmes et le fond sombre.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZE-04` — Ergonomie — saisie, lisibilité et prévention des erreurs
_Module : Animations et micro-interactions_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_light.webp?raw=true' width='330' alt='ZE-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_dark.webp?raw=true' width='330' alt='ZE-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_light.webp?raw=true' width='230' alt='ZE-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_dark.webp?raw=true' width='230' alt='ZE-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ergonomie · 02 » · « Confort d’usage » · « Clavier, lisibilité, sécurité des actions et feedback : les détails qui donnent la sensation d’une application haut de gamme, fluide et fiable. » · « Univers Barça · Design System v1.1 » · « Mouvement & ergonomie » · « iOS · Android · Tablette » · « Saisie et clavier » · « Le clavier ne masque jamais l’action » · « boris@exemple.com » · « •••••• » · « Se connecter » · « CTA collé au-dessus du clavier · champ défilé en vue » · « Claviers adaptés au champ » · « E-mail » · « @ et .com visibles » · « Code à 6 chiffres » · « pavé numérique · collage SMS » · « Recherche » · « touche « Rechercher » » · « Message » · « saut de ligne, correction auto » · « Validation sans friction » · « boris@exemple » · « Adresse e-mail invalide » · « Erreur affichée à la sortie du champ, pas à chaque frappe. Message précis + comment corriger. » · « Mot de passe solide » · « Lisibilité et accessibilité fine » · « Texte dynamique » · « Jusqu’à 160 % sans coupure de mise en page » · « Plein soleil »

**Composants repérés** : `banner`, `btn`, `input`, `toast`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-34](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-34%5D%22) · [MOB-FND-36](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-36%5D%22) · [MOB-ZB-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-06%5D%22) · [MOB-ZC-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-02%5D%22) · [MOB-ZE-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-13%5D%22) · [MOB-ZE-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-14%5D%22) · [MOB-ZE-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-16%5D%22) · [MOB-ZE-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-18%5D%22)

## 📐 Règles de gestion

- Fond sombre #121218 jamais #000000 ; surfaces #1E1E27.
- Boutons principaux contraste ≥ 4,5:1 (idéalement ≥ 7:1 pour le texte sur primaire en usage extérieur).
- Texte secondaire ≥ 4,5:1 ; icônes porteuses de sens ≥ 3:1.
- Support du réglage système « contraste élevé » : bordures renforcées 2 px.

## 🛠️ Tâches

- [ ] Ajouter test interdisant `Colors.black`/`0xFF000000` dans `lib/`.
- [ ] Variante `highContrast` de `AppColorTokens`.
- [ ] Appliquer via `MediaQuery.highContrast`.
- [ ] Audit des icônes sans `semanticLabel`.
- [ ] Documenter.

## ✔️ Critères d'acceptation

- [ ] Étant donné le thème sombre, alors le background est #121218.
- [ ] Étant donné le contraste élevé système, alors les bordures passent à 2 px.
- [ ] Étant donné `lib/`, alors aucun noir pur n'est utilisé comme fond.

## 🧪 Tests à écrire

- [ ] Unitaire : pas de noir pur.
- [ ] Widget : highContrast.
- [ ] Unitaire : ratios boutons.

## 📚 Références

- CDC Global §3.3
- CDC Global §4.5.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
