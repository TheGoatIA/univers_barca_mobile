> **MOB-ZE-11** · UX / Ergonomie · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Carte d'atteinte main droite sur écran 6,7″ : onglets, bouton d'action et bulle IA en zone facile. Règles : CTA fixés en bas au-dessus de la barre d'onglets ; infos de lecture en haut ; destructives éloignées du CTA et confirmées ; sheets fermées par balayage ; actions secondaires en haut à droite doublées par geste/appui long ; tablette : rail à gauche.

## ✅ Objectif

Gabarit `ThumbZoneScaffold` et `BottomActionBar` appliquant les règles.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZE-03` — Ergonomie — zone du pouce et gestes
_Module : Animations et micro-interactions_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__desktop_light.webp?raw=true' width='330' alt='ZE-03 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__desktop_dark.webp?raw=true' width='330' alt='ZE-03 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__mobile_light.webp?raw=true' width='230' alt='ZE-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-03_ergonomie-zone-du-pouce-et-gestes__mobile_dark.webp?raw=true' width='230' alt='ZE-03 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ergonomie · 01 » · « Ergonomie à une main » · « Conçu pour les grands smartphones : les actions principales sont dans la zone du pouce, les informations en haut, les gestes naturels (balayage arrière, tirer pour actualiser, appui long) sont toujours disponibles. » · « Univers Barça · Design System v1.1 » · « Mouvement & ergonomie » · « iOS · Android · Tablette » · « Zone du pouce » · « Carte d’atteinte pour une main droite sur un écran de 6,7″. Les éléments les plus fréquents (onglets, bouton d’action, bulle IA) sont dans la zone verte. » · « Titre + actions » · « Action principale » · « Facile » · « Atteignable » · « Difficile » · « Règles de placement » · « Actions principales (CTA) fixées en bas, au-dessus de la barre d’onglets. » · « Navigation principale et bulle IA toujours dans la zone verte. » · « Informations de lecture (scores, titres) en haut : pas besoin de les atteindre. » · « Actions destructives éloignées des CTA et toujours confirmées. » · « Fermeture des sheets par balayage vers le bas, sans viser la croix. » · « Actions secondaires en haut à droite : doublées par un geste ou un appui long. » · « Tablette · deux mains » · « rail de navigation à gauche, accessible au pouce gauche ; panneaux maître/détail ; sheets centrés » · « Gestes » · « Balayer depuis le bord gauche » · « Retour (iOS) ou geste système (Android) » · « Tirer vers le bas » · « Actualiser un écran ou fermer un sheet » · « Appui long » · « Aperçu rapide, options d’un message, copie » · « Glisser-déposer »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-33](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-33%5D%22) · [MOB-ZC-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-09%5D%22) · [MOB-ZE-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-12%5D%22) · [MOB-ZE-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-18%5D%22)

## 📐 Règles de gestion

- CTA principal : barre fixe en bas avec fond surface + ombre, marge 16, au-dessus de la barre d'onglets et des safe areas.
- Pas de CTA dans le tiers supérieur de l'écran ; informations (scores, titres) en haut.
- Action destructive : style `danger` texte, séparée ≥ 24 px du CTA, toujours confirmée (`zc-modale-confirmation`).
- Chaque action secondaire en haut à droite a un équivalent geste (balayage, appui long).
- Tablette : rail de navigation à gauche.

## 🛠️ Tâches

- [ ] Créer `lib/core/widgets/layout/thumb_zone_scaffold.dart` et `bottom_action_bar.dart`.
- [ ] Gérer clavier (cf. ze-clavier-saisie).
- [ ] Checklist de revue d'écran dans `docs/DESIGN_SYSTEM.md` (zones facile/atteignable/difficile).
- [ ] Appliquer à un écran de référence (players).
- [ ] Tests, goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné un écran de formulaire, alors le CTA est fixé en bas au-dessus de la barre d'onglets.
- [ ] Étant donné clavier ouvert, alors le CTA reste visible.
- [ ] Étant donné une action destructive, alors elle est à ≥ 24 px du CTA principal.

## 🧪 Tests à écrire

- [ ] Widget : position CTA.
- [ ] Widget : safe area.
- [ ] Golden : 390/834.

## ♿ Accessibilité et i18n

- Ordre de focus : contenu puis CTA ; équivalents sans geste disponibles dans le menu.

## 📚 Références

- CDC Global §3.4
- CDC Flutter §9.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
