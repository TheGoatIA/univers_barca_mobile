> **MOB-K-17** · Écran · Priorité **P1** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

L'onglet Événements regroupe par mois (oct., nov.) : Watch party · Clásico (Le Relais, Yaoundé, 37 y vont), Watch party · Liga J12 (Bastos Lounge, 12 y vont), Tournoi FIFA entre culés (Café Central, Douala, 9 y vont), avec le bouton « Organiser une watch party ».

## ✅ Objectif

Lister les événements à venir du groupe et permettre d'en organiser un.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `K-08` — Événements du groupe
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-08_evenements-du-groupe__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-08_evenements-du-groupe__phone_light.webp?raw=true' width='230' alt='K-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-08_evenements-du-groupe__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-08_evenements-du-groupe__phone_dark.webp?raw=true' width='230' alt='K-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-08_evenements-du-groupe__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-08_evenements-du-groupe__tablet_light.webp?raw=true' width='330' alt='K-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-08_evenements-du-groupe__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-08_evenements-du-groupe__tablet_dark.webp?raw=true' width='330' alt='K-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Groupe » · « Culés Cameroun » · « Yaoundé » · « 721 membres » · « Public » · « Le point de rendez-vous des supporters du Barça au Cameroun. Watch parties, discussions et bon esprit ! » · « Membre » · « Fil » · « Événements » · « Membres » · « oct. » · « Watch party · Clásico » · « Le Relais, Yaoundé » · « 37 y vont » · « Watch party · Liga J12 » · « Bastos Lounge, Yaoundé » · « 12 y vont » · « nov. » · « Tournoi FIFA entre culés » · « Café Central, Douala » · « 9 y vont » · « Organiser une watch party »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-COMM-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-24%5D%22) · [API-COMM-25](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-25%5D%22) · [API-COMM-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-28%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-K-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-01%5D%22) · [MOB-K-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-04%5D%22) · [MOB-K-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-28%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

## 📐 Règles de gestion

- Cartes triées par date croissante, en-tête de mois ; badge date (mois abrégé + jour) à gauche.
- Compteur « {n} y vont » avec pluriel ; tap -> K-09.
- Bouton « Organiser une watch party » visible pour les membres ; ouvre K-10.
- Événements passés non affichés ; liste vide : « Aucun événement prévu » + CTA.
- Fuseau : affichage à l'heure locale de l'appareil avec abréviation (WAT).

## 🔄 Comportement et états

- Chargement : squelettes ; erreur : AppErrorView ; hors-ligne : liste du cache avec bandeau.

## 🛠️ Tâches

- [ ] Créer widgets/events_tab.dart et widgets/event_card.dart.
- [ ] Créer GroupEventsBloc (load, refresh).
- [ ] Créer widgets/month_header.dart et groupBy mois.
- [ ] Brancher GetGroupEvents.
- [ ] Ajouter le cache Drift cached_group_events (TTL 15 min).
- [ ] Ajouter ARB (pluriel y vont).
- [ ] Goldens.
- [ ] Tests widget/bloc.

## ✔️ Critères d'acceptation

- [ ] Étant donné trois événements sur deux mois, quand l'onglet s'affiche, alors deux en-têtes de mois et trois cartes sont visibles.
- [ ] Étant donné un tap sur une carte, quand elle est pressée, alors K-09 s'ouvre.
- [ ] Étant donné aucun événement, quand l'onglet s'affiche, alors l'état vide avec CTA est visible.
- [ ] Étant donné un événement passé, quand la liste est chargée, alors il est absent.

## 🧪 Tests à écrire

- [ ] group_events_bloc_test.
- [ ] events_tab_test.
- [ ] month_grouping_test.
- [ ] golden_group_events_light_dark.

## ♿ Accessibilité et i18n

- ARB : eventsGoing « {count, plural, =1{1 y va} other{{count} y vont}} », eventsOrganize « Organiser une watch party », eventsEmpty

## 🔗 Dépendances

À réaliser après : `MOB-K-04` · `MOB-K-08` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.8

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
