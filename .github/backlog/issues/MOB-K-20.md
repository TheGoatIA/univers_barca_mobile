> **MOB-K-20** · Écran · Priorité **P1** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

L'onglet Membres propose « Rechercher un membre » et la liste : Mamadou Diallo (Modérateur · Yaoundé, badge Modo), Aïcha Ngono (Membre · Yaoundé), Kevin Mballa, Lucía Fernández, Yann Mbarga.

## ✅ Objectif

Lister les membres du groupe sans exposer de donnée de localisation précise.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `K-11` — Liste des membres
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-11_liste-des-membres__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-11_liste-des-membres__phone_light.webp?raw=true' width='230' alt='K-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-11_liste-des-membres__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-11_liste-des-membres__phone_dark.webp?raw=true' width='230' alt='K-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-11_liste-des-membres__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-11_liste-des-membres__tablet_light.webp?raw=true' width='330' alt='K-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-11_liste-des-membres__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-11_liste-des-membres__tablet_dark.webp?raw=true' width='330' alt='K-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Groupe » · « Culés Cameroun » · « Yaoundé » · « 721 membres » · « Public » · « Le point de rendez-vous des supporters du Barça au Cameroun. Watch parties, discussions et bon esprit ! » · « Membre » · « Fil » · « Événements » · « Membres » · « Rechercher un membre » · « Mamadou Diallo » · « Modérateur · Yaoundé » · « Modo » · « Aïcha Ngono » · « Membre · Yaoundé » · « Kevin Mballa » · « Lucía Fernández » · « Yann Mbarga »

**Composants repérés** : `avatar`, `btn`, `card`, `search`

</details>

**Issues liées sur ce même écran :** [API-COMM-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-19%5D%22) · [API-COMM-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-21%5D%22) · [MOB-K-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-01%5D%22) · [MOB-K-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-15%5D%22) · [MOB-K-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-28%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

## 📐 Règles de gestion

- Informations affichées : avatar, nom d'affichage, rôle (Modérateur / Membre) et ville déclarée (niveau ville uniquement).
- Recherche locale sur les membres chargés (debounce 250 ms) puis serveur au-delà d'une page (q=).
- Tri : modérateurs d'abord, puis ordre alphabétique ; pagination de 30.
- Les membres ayant masqué leur visibilité (« Masqué ») n'apparaissent pas avec leur ville.
- Tap sur un membre : ouvre le profil public minimal (si disponible dans le Culé Passport) sinon aucune action.

## 🔄 Comportement et états

- Chargement : squelette ; vide de recherche : « Aucun membre trouvé » ; erreur/hors-ligne : liste en cache ou état explicite.

## 🛠️ Tâches

- [ ] Créer widgets/members_tab.dart, widgets/member_tile.dart, widgets/role_badge.dart.
- [ ] Créer GroupMembersBloc (load, loadMore, search).
- [ ] Ajouter @Get('/{id}/members') (q, page, limit) à la datasource.
- [ ] Créer use case get_group_members.dart.
- [ ] Appliquer le filtre des masqués locaux (grisés).
- [ ] Ajouter ARB et goldens.
- [ ] Tests.
- [ ] Debounce 250 ms.

## ✔️ Critères d'acceptation

- [ ] Étant donné cinq membres, quand l'onglet s'affiche, alors Mamadou Diallo apparaît en premier avec le badge Modo.
- [ ] Étant donné la saisie « kev », quand le debounce expire, alors seul Kevin Mballa est affiché.
- [ ] Étant donné un membre masqué par moi, quand la liste s'affiche, alors il est grisé avec « Masqué ».
- [ ] Étant donné aucun résultat, quand la recherche aboutit, alors « Aucun membre trouvé ».

## 🧪 Tests à écrire

- [ ] group_members_bloc_test.
- [ ] member_tile_test.
- [ ] member_search_test.
- [ ] golden_group_members_light_dark.

## ♿ Accessibilité et i18n

- ARB : membersSearchHint « Rechercher un membre », memberRoleModerator « Modérateur », memberRoleMember « Membre », memberBadgeMod « Modo »

## 🔗 Dépendances

À réaliser après : `MOB-K-06` · `MOB-K-15` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.8

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
