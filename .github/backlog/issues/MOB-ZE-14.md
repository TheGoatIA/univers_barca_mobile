> **MOB-ZE-14** · UX / Ergonomie · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

ZE-04 : le texte dynamique supporte jusqu'à 160 % sans coupure de mise en page (CDC Flutter §9.6 textScaleFactor).

## ✅ Objectif

Garantir et tester l'absence d'overflow pour les composants du design system à 1,0 / 1,3 / 1,6.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZE-04` — Ergonomie — saisie, lisibilité et prévention des erreurs
_Module : Animations et micro-interactions_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_light.webp?raw=true' width='330' alt='ZE-04 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__desktop_dark.webp?raw=true' width='330' alt='ZE-04 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_light.webp?raw=true' width='230' alt='ZE-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-04_ergonomie-saisie-lisibilite-et-prevention-des-erreurs__mobile_dark.webp?raw=true' width='230' alt='ZE-04 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ergonomie · 02 » · « Confort d’usage » · « Clavier, lisibilité, sécurité des actions et feedback : les détails qui donnent la sensation d’une application haut de gamme, fluide et fiable. » · « Univers Barça · Design System v1.1 » · « Mouvement & ergonomie » · « iOS · Android · Tablette » · « Saisie et clavier » · « Le clavier ne masque jamais l’action » · « boris@exemple.com » · « •••••• » · « Se connecter » · « CTA collé au-dessus du clavier · champ défilé en vue » · « Claviers adaptés au champ » · « E-mail » · « @ et .com visibles » · « Code à 6 chiffres » · « pavé numérique · collage SMS » · « Recherche » · « touche « Rechercher » » · « Message » · « saut de ligne, correction auto » · « Validation sans friction » · « boris@exemple » · « Adresse e-mail invalide » · « Erreur affichée à la sortie du champ, pas à chaque frappe. Message précis + comment corriger. » · « Mot de passe solide » · « Lisibilité et accessibilité fine » · « Texte dynamique » · « Jusqu’à 160 % sans coupure de mise en page » · « Plein soleil »

**Composants repérés** : `banner`, `btn`, `input`, `toast`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-34](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-34%5D%22) · [MOB-FND-36](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-36%5D%22) · [MOB-ZB-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-06%5D%22) · [MOB-ZC-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-02%5D%22) · [MOB-ZE-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-13%5D%22) · [MOB-ZE-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-15%5D%22) · [MOB-ZE-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-16%5D%22) · [MOB-ZE-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-18%5D%22)

## 📐 Règles de gestion

- Aucune hauteur fixe sur un conteneur de texte : `minHeight` + `IntrinsicHeight`/contraintes souples.
- Boutons : multiligne si nécessaire ; navigation inférieure : libellés sur 1 ligne avec ellipsis à 1,3+, icônes seules à 1,6 si besoin.
- Chips, tags, onglets : défilement horizontal plutôt que troncature.
- Échelle plafonnée à 2,0 par `MediaQuery.textScaler.clamp`.

## 🛠️ Tâches

- [ ] Créer `test/a11y/text_scale_test.dart` itérant sur composants et échelles.
- [ ] Corriger les composants en overflow.
- [ ] Ajouter `TextScaleClamp` à la racine de l'app.
- [ ] Widgetbook : addon échelle texte.
- [ ] Goldens 1,6 sur composants critiques.

## ✔️ Critères d'acceptation

- [ ] Étant donné texte à 160 %, quand on rend BarcaButton, BarcaTextField, BarcaCard, alors aucun overflow n'est levé.
- [ ] Étant donné 160 %, alors la barre d'onglets reste utilisable (cibles ≥ 44).
- [ ] Étant donné 300 %, alors l'échelle est plafonnée à 2,0.

## 🧪 Tests à écrire

- [ ] Widget : matrice composants × échelles.
- [ ] Golden : 1,6.
- [ ] Widget : clamp 2,0.

## ♿ Accessibilité et i18n

- Test manuel avec « texte plus grand » iOS/Android.

## 📚 Références

- CDC Flutter §9.6
- CDC Global §3.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
