> **MOB-F-23** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

La biographie est un texte éditorial original rédigé pour l'application, sans photographie sous droits.

## ✅ Objectif

Afficher le titre, le corps et les mentions d'attribution/langue.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `F-13` — Fiche joueur — biographie
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-13_fiche-joueur-biographie__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-13_fiche-joueur-biographie__phone_light.webp?raw=true' width='230' alt='F-13 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-13_fiche-joueur-biographie__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-13_fiche-joueur-biographie__phone_dark.webp?raw=true' width='230' alt='F-13 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-13_fiche-joueur-biographie__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-13_fiche-joueur-biographie__tablet_light.webp?raw=true' width='330' alt='F-13 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-13_fiche-joueur-biographie__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-13_fiche-joueur-biographie__tablet_dark.webp?raw=true' width='330' alt='F-13 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Lamine Yamal » · « Aperçu » · « Statistiques » · « Biographie » · « Langue : Français » · « Un prodige formé à La Masia » · « Intégré très jeune à l’académie, il devient l’un des plus jeunes joueurs de l’histoire du club à disputer un match officiel avec l’équipe première. Ailier au dribble déroutant, il s’impose rapidement comme un pilier du projet sportif. » · « Texte éditorial original rédigé pour l’application. » · « Illustration originale · aucune photographie sous droits »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-01%5D%22) · [API-FOOT-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-08%5D%22) · [API-FOOT-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-12%5D%22) · [API-FOOT-56](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-56%5D%22) · [MOB-F-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-20%5D%22) · [MOB-F-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-25%5D%22) · [MOB-F-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-27%5D%22)

## 📐 Règles de gestion

- Ligne 'Langue : Français' indiquant la langue du texte (toujours affichée ; change si repli).
- Titre éditorial ('Un prodige formé à La Masia') + corps de plusieurs paragraphes.
- Mention 'Texte éditorial original rédigé pour l'application.' et 'Illustration originale · aucune photographie sous droits'.
- Application non officielle : cohérence avec la mention fan-made globale.
- Biographie absente → 'Biographie bientôt disponible'.
- Texte sélectionnable (SelectableText) et taille de police suivant les réglages système.

## 🛠️ Tâches

- [ ] Créer widgets/player_biography_tab.dart, biography_card.dart, attribution_footer.dart.
- [ ] Afficher la langue via un mapper LanguageLabel (fr→Français, en→English, es→Español).
- [ ] Gérer l'état vide.
- [ ] ARB : bioLanguage='Langue : {lang}', bioAttribution, bioIllustrationNote, bioEmpty.
- [ ] Test avec textes très longs (scroll) et textScaleFactor 2.0.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné une biographie fr alors 'Langue : Français' et le titre sont visibles.
- [ ] Étant donné un repli de langue alors la langue effective est affichée.
- [ ] Étant donné aucun texte alors le message d'absence s'affiche.
- [ ] Étant donné textScaleFactor=2 alors aucun débordement.

## 🧪 Tests à écrire

- [ ] Test widget biographie_textes
- [ ] Test widget langue_repli
- [ ] Test widget bio_absente
- [ ] Test widget grand_texte
- [ ] Golden test biographie clair/sombre

## ♿ Accessibilité et i18n

- Texte lisible avec VoiceOver/TalkBack dans l'ordre titre → corps → mentions.

## 🔗 Dépendances

À réaliser après : `MOB-F-21` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.5
- CDC Backend §3.2
- CDC Global §2.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
