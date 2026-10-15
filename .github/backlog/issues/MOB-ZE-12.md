> **MOB-ZE-12** · Fonctionnel · Priorité **P1** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

Gestes de ZE-03 : bord gauche = retour ; tirer vers le bas = actualiser/fermer ; appui long = aperçu rapide, options d'un message, copie ; glisser-déposer = composer le XI Fantasy ; balayer latéralement = onglets de contenu/carrousel ; pincer/double appui = zoom carte/wallpaper ; balayer une ligne = archiver/retirer avec annulation ; maintenir le micro = dicter une question.

## ✅ Objectif

Widgets de gestes réutilisables avec alternatives accessibles.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZE-03` — Ergonomie — zone du pouce et gestes
_Module : Animations et micro-interactions_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__desktop_light.webp?raw=true' width='330' alt='ZE-03 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__desktop_dark.webp?raw=true' width='330' alt='ZE-03 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__mobile_light.webp?raw=true' width='230' alt='ZE-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__mobile_dark.webp?raw=true' width='230' alt='ZE-03 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ergonomie · 01 » · « Ergonomie à une main » · « Conçu pour les grands smartphones : les actions principales sont dans la zone du pouce, les informations en haut, les gestes naturels (balayage arrière, tirer pour actualiser, appui long) sont toujours disponibles. » · « Univers Barça · Design System v1.1 » · « Mouvement & ergonomie » · « iOS · Android · Tablette » · « Zone du pouce » · « Carte d’atteinte pour une main droite sur un écran de 6,7″. Les éléments les plus fréquents (onglets, bouton d’action, bulle IA) sont dans la zone verte. » · « Titre + actions » · « Action principale » · « Facile » · « Atteignable » · « Difficile » · « Règles de placement » · « Actions principales (CTA) fixées en bas, au-dessus de la barre d’onglets. » · « Navigation principale et bulle IA toujours dans la zone verte. » · « Informations de lecture (scores, titres) en haut : pas besoin de les atteindre. » · « Actions destructives éloignées des CTA et toujours confirmées. » · « Fermeture des sheets par balayage vers le bas, sans viser la croix. » · « Actions secondaires en haut à droite : doublées par un geste ou un appui long. » · « Tablette · deux mains » · « rail de navigation à gauche, accessible au pouce gauche ; panneaux maître/détail ; sheets centrés » · « Gestes » · « Balayer depuis le bord gauche » · « Retour (iOS) ou geste système (Android) » · « Tirer vers le bas » · « Actualiser un écran ou fermer un sheet » · « Appui long » · « Aperçu rapide, options d’un message, copie » · « Glisser-déposer »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-33](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-33%5D%22) · [MOB-ZC-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-09%5D%22) · [MOB-ZE-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-11%5D%22) · [MOB-ZE-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-18%5D%22)

## 📐 Règles de gestion

- `BarcaSwipeActionRow` : balayage gauche = action (archiver/retirer), seuil 40 %, annulation par toast 6 s ; jamais destructif sans annulation.
- `BarcaLongPressMenu` : appui long 400 ms → haptique + menu contextuel (aperçu, copier).
- `BarcaZoomable` : pincer 1× à 4×, double appui bascule 1× ↔ 2×.
- Micro : maintenir pour dicter (permission micro via priming FND), relâcher envoie, glisser vers la gauche annule.
- Chaque geste a une alternative bouton/menu (accessibilité).

## 🛠️ Tâches

- [ ] Créer `lib/core/widgets/gestures/barca_swipe_action_row.dart`, `barca_long_press_menu.dart`, `barca_zoomable.dart`, `hold_to_talk_button.dart`.
- [ ] Intégrer `Dismissible`/`flutter_slidable` thémé.
- [ ] Annulation via `ToastService` (action « Annuler »).
- [ ] Dictée via `speech_to_text` derrière une interface `DictationService` (mockable).
- [ ] Tests, widgetbook.

## ✔️ Critères d'acceptation

- [ ] Étant donné un swipe > 40 %, alors la ligne est retirée et un toast « Annuler » apparaît 6 s.
- [ ] Étant donné « Annuler », alors la ligne est restaurée.
- [ ] Étant donné un appui long 400 ms, alors le menu s'ouvre avec haptique.
- [ ] Étant donné un double appui, alors le zoom passe à 2×.
- [ ] Étant donné la dictée refusée (permission), alors un message explique comment l'activer.

## 🧪 Tests à écrire

- [ ] Widget : swipe + annulation.
- [ ] Widget : appui long.
- [ ] Widget : zoom bornes 1–4.
- [ ] Widget : micro annulation par glissement.
- [ ] Widget : alternative accessible.

## ♿ Accessibilité et i18n

- Actions personnalisées `Semantics.customSemanticsActions` (Archiver, Retirer, Copier) pour lecteurs d'écran ; ARB des actions.

## 🔗 Dépendances

À réaliser après : `MOB-ZE-02` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §3.4
- CDC Flutter §9

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
