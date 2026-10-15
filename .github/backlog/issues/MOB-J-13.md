> **MOB-J-13** · Écran · Priorité **P1** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Après sélection d'un pays, l'écran affiche « Cameroun », « 1 240 culés · 6 groupes locaux · 2 watch parties », trois statistiques (1 240 Culés, Groupes, Événements) et la liste des groupes avec le bouton Rejoindre.

## ✅ Objectif

Offrir une vue de synthèse d'un pays avant de plonger dans les groupes.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `J-05` — Résultats pour un pays
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-05_resultats-pour-un-pays__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-05_resultats-pour-un-pays__phone_light.webp?raw=true' width='230' alt='J-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-05_resultats-pour-un-pays__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-05_resultats-pour-un-pays__phone_dark.webp?raw=true' width='230' alt='J-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-05_resultats-pour-un-pays__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-05_resultats-pour-un-pays__tablet_light.webp?raw=true' width='330' alt='J-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-05_resultats-pour-un-pays__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-05_resultats-pour-un-pays__tablet_dark.webp?raw=true' width='330' alt='J-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Cameroun » · « 🇨🇲 » · « 1 240 culés · 6 groupes locaux · 2 watch parties » · « 1 240 » · « Culés » · « Groupes » · « Événements » · « Culés Cameroun » · « Yaoundé · 721 membres · » · « Watch party sam. » · « Rejoindre »

**Composants repérés** : `avatar`, `btn`, `card`, `map`

</details>

**Issues liées sur ce même écran :** [API-COMM-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-08%5D%22) · [API-COMM-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-11%5D%22) · [API-COMM-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-12%5D%22) · [API-COMM-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-14%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-J-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-03%5D%22) · [MOB-J-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-24%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22)

## 📐 Règles de gestion

- Les trois compteurs viennent de la réponse API (aggregates + groups + events), jamais recalculés par le client.
- Pluriels ICU : « {n, plural, =0{Aucun groupe local} =1{1 groupe local} other{{n} groupes locaux}} ».
- Même ligne de groupe que J-02 (local_group_tile).
- Bouton retour ramène à la recherche en conservant la saisie.
- Compteur de culés arrondi par l'API ; le client affiche tel quel.

## 🔄 Comportement et états

- Chargement : squelette des 3 tuiles ; erreur : AppErrorView avec Réessayer ; pays sans groupe : K-16 en dessous des stats.

## 🛠️ Tâches

- [ ] Créer presentation/pages/country_results_page.dart (route /community/country/:code).
- [ ] Créer widgets/country_stats_row.dart (3 tuiles).
- [ ] Réutiliser local_group_tile.dart.
- [ ] Ajouter l'événement MapCountrySummaryRequested et l'état associé.
- [ ] Ajouter ARB avec pluriels FR/EN/ES.
- [ ] Gérer la mise à jour de la caméra si l'écran est ouvert depuis la carte.
- [ ] Tests widget/golden.
- [ ] Analytics community_country_viewed (countryCode).

## ✔️ Critères d'acceptation

- [ ] Étant donné le Cameroun, quand l'écran s'affiche, alors « 1 240 culés · 6 groupes locaux · 2 watch parties » est visible.
- [ ] Étant donné 1 groupe, quand l'écran s'affiche, alors « 1 groupe local » (singulier).
- [ ] Étant donné une erreur réseau, quand l'écran charge, alors AppErrorView.
- [ ] Étant donné un tap sur un groupe, quand il est pressé, alors K-01 s'ouvre.

## 🧪 Tests à écrire

- [ ] country_stats_row_test : valeurs.
- [ ] plural_test : 0/1/n.
- [ ] country_results_page_test : erreur.
- [ ] golden_country_results.

## ♿ Accessibilité et i18n

- ARB : communityStatsCules « Culés », communityStatsGroups « Groupes », communityStatsEvents « Événements »

## 🔗 Dépendances

À réaliser après : `MOB-J-12` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.8
- CDC Flutter §7.7

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
