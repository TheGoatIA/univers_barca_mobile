> **MOB-F-06** · Écran · Priorité **P0** · Taille **L** · Phase 1 — MVP

## 🎯 Contexte

Premier écran de l'onglet Historique (3e de la barre de navigation). L'utilisateur parcourt 125 ans d'histoire sous forme de frise verticale de cartes, filtrée par décennie.

## ✅ Objectif

Réaliser la mise en page fidèle à la maquette F-01 : titre, sous-titre, actions, chips de décennies, en-tête de décennie et cartes d'événements.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `F-01` — Frise chronologique
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-01_frise-chronologique__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-01_frise-chronologique__phone_light.webp?raw=true' width='230' alt='F-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-01_frise-chronologique__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-01_frise-chronologique__phone_dark.webp?raw=true' width='230' alt='F-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-01_frise-chronologique__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-01_frise-chronologique__tablet_light.webp?raw=true' width='330' alt='F-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-01_frise-chronologique__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-01_frise-chronologique__tablet_dark.webp?raw=true' width='330' alt='F-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 125 ans d’histoire » · « 1950s » · « 1970s » · « 1990s » · « 2000s » · « 2010s » · « 2020s » · « 2010 – 2019 » · « 42 événements » · « 6 juin · » · « Berlin : le Barça s’offre un triplé historique » · « Ligue des champions » · « 3-1 Juventus » · « 28 mai · » · « Wembley : une démonstration face à Manchester United » · « 3-1 » · « 27 mai · » · « Rome : le sextuplé se dessine » · « 2-0 » · « 17 mai · » · « Paris : première étoile de l’ère Rijkaard » · « 2-1 »

**Composants repérés** : `avatar`, `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-06%5D%22) · [API-FOOT-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-17%5D%22) · [API-FOOT-54](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-54%5D%22) · [MOB-F-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-01%5D%22) · [MOB-F-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-02%5D%22) · [MOB-F-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-03%5D%22) · [MOB-F-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-05%5D%22) · [MOB-F-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-24%5D%22) · [MOB-F-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-25%5D%22) · [MOB-F-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-26%5D%22) · [MOB-F-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-27%5D%22)

## 📐 Règles de gestion

- En-tête : titre 'HISTORIQUE' (Barlow Condensed), sous-titre '125 ans d'histoire', icônes filtre (ouvre F-03) et recherche (ouvre F-04) alignées à droite.
- Chips horizontales scrollables : 1950s, 1970s, 1990s, 2000s, 2010s, 2020s ; chip active = fond sombre, texte blanc ; les autres fond neutre. La chip active est auto-centrée au scroll.
- Titre de section '2010 – 2019' + compteur '42 événements' à droite (texte secondaire).
- Ligne verticale grise à gauche avec pastille par carte : pastille pleine or pour un trophée, anneau grenat/bleu pour un match.
- Carte : date 'jour mois · année' (année en gras), titre sur 2-3 lignes, puces 'Ligue des champions' (fond bleu clair) et score ('3-1 Juventus', '3-1'), chevron ; icône 56 px dans un carré arrondi (coupe sur fond or = trophée, ballon sur dégradé grenat, étoile sur fond bleu).
- Tri antichronologique dans la décennie (2015 → 2006). Tap sur la carte → /history/match/:id si kind=match|trophy avec matchId, sinon pas de navigation.
- La barre de navigation basse conserve l'onglet Historique actif ; le FAB Barça AI visible sur la maquette est fourni par le module Assistant IA (hors périmètre).

## 🛠️ Tâches

- [ ] Créer lib/features/history/presentation/pages/history_timeline_page.dart (route /history).
- [ ] Créer widgets/history_header.dart, decade_chips_bar.dart, decade_section_header.dart, timeline_event_card.dart, timeline_rail.dart.
- [ ] Utiliser exclusivement les tokens core/theme (AppColors, AppSpacing, AppTypography) ; aucune couleur hexadécimale.
- [ ] Icône d'événement via un widget EventKindBadge(kind) (couleurs or/grenat/bleu depuis le design system).
- [ ] Brancher BlocBuilder<HistoryTimelineBloc, HistoryState> ; cartes tappables avec InkWell et feedback.
- [ ] Formater les dates avec intl (DateFormat.MMMMd + année) selon la locale courante.
- [ ] Ajouter la route /history dans app_router.dart et RouteConstants.history ; onglet de la ShellRoute.
- [ ] Prévoir golden tests clair/sombre sur petit et grand smartphone.

## ✔️ Critères d'acceptation

- [ ] Étant donné 42 événements 2010-2019 quand l'écran s'ouvre alors '2010 – 2019' et '42 événements' sont affichés.
- [ ] Étant donné la chip 1990s quand elle est touchée alors la chip devient active et la liste se recharge pour 1990-1999.
- [ ] Étant donné une carte trophée quand elle est affichée alors la pastille de la frise est pleine et or et l'icône coupe est visible.
- [ ] Étant donné le thème sombre quand l'écran s'affiche alors tous les contrastes respectent WCAG AA.
- [ ] Étant donné un tap sur la carte Berlin 2015 alors la route /history/match/<id> est ouverte.

## 🧪 Tests à écrire

- [ ] Test widget HistoryTimelinePage_affiche_titre_et_chips
- [ ] Test widget DecadeChipsBar_selection_change_chip_active
- [ ] Test widget TimelineEventCard_trophee_vs_match
- [ ] Test widget carte_tap_navigue_vers_detail
- [ ] Golden test frise clair/sombre petit et grand écran

## ♿ Accessibilité et i18n

- Clés ARB : historyTitle='Historique', historySubtitle='{years} ans d'histoire', historyEventsCount='{count, plural, one{# événement} other{# événements}}', historyFilterTooltip, historySearchTooltip.
- Chaque carte a un Semantics label complet : 'Ligue des champions, 6 juin 2015, Berlin : le Barça s'offre un triplé historique, score 3-1 Juventus'.
- Chips : Semantics(selected) + zone tactile ≥ 44×44 pt.
- Icônes de filtre/recherche avec tooltip et label sémantique.

## 🔗 Dépendances

À réaliser après : `MOB-F-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.6
- CDC Flutter §7.5
- CDC Flutter §9.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
