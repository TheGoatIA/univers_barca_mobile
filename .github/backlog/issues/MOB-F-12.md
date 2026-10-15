> **MOB-F-12** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Quand les filtres ne retournent rien, l'écran affiche un état vide avec action de réinitialisation ; le CDC impose aussi un état d'erreur distinct (réseau vs serveur).

## ✅ Objectif

Implémenter BarcaEmptyState/BarcaErrorState pour la frise.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `F-06` — Frise — aucun résultat
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-06_frise-aucun-resultat__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-06_frise-aucun-resultat__phone_light.webp?raw=true' width='230' alt='F-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-06_frise-aucun-resultat__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-06_frise-aucun-resultat__phone_dark.webp?raw=true' width='230' alt='F-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-06_frise-aucun-resultat__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-06_frise-aucun-resultat__tablet_light.webp?raw=true' width='330' alt='F-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-06_frise-aucun-resultat__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-06_frise-aucun-resultat__tablet_dark.webp?raw=true' width='330' alt='F-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 125 ans d’histoire » · « Aucun événement trouvé » · « Aucun match ne correspond à ces filtres. Essaie une autre saison ou réinitialise les filtres. » · « Réinitialiser les filtres »

**Composants repérés** : `avatar`, `btn`

</details>

**Issues liées sur ce même écran :** [API-FOOT-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-17%5D%22) · [MOB-F-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-05%5D%22) · [MOB-F-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-09%5D%22) · [MOB-F-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-25%5D%22) · [MOB-F-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-27%5D%22)

## 📐 Règles de gestion

- Vide : illustration légère, titre 'Aucun événement trouvé', texte 'Aucun match ne correspond à ces filtres. Essaie une autre saison ou réinitialise les filtres.', bouton 'Réinitialiser les filtres'.
- Le bouton émet HistoryFiltersReset et recharge la décennie par défaut.
- Erreur réseau : message compréhensible (jamais technique) + bouton 'Réessayer' ; erreur serveur : message distinct ; icône différente hors-ligne.
- Si des pages sont déjà chargées et que la suivante échoue : bandeau/snackbar 'Impossible de charger la suite' avec action Réessayer, la liste reste visible.
- Le titre '125 ans d'histoire' et la barre de navigation restent visibles.

## 🛠️ Tâches

- [ ] Créer widgets/history_empty_view.dart utilisant AppEmptyState (à créer dans core/widgets si absent).
- [ ] Étendre core/widgets/app_error_view.dart avec un variant offline/server.
- [ ] Brancher HistoryEmpty et HistoryFailure dans history_timeline_page.dart.
- [ ] Ajouter la clé ARB et assets d'illustration (SVG) libres de droits.
- [ ] Ajouter analytics/log d'événement 'history_empty' (observabilité §12.3) sans donnée personnelle.
- [ ] Golden tests clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné total=0 alors le titre 'Aucun événement trouvé' et le bouton 'Réinitialiser les filtres' sont affichés.
- [ ] Étant donné le tap sur 'Réinitialiser les filtres' alors HistoryFiltersReset est émis.
- [ ] Étant donné une coupure réseau au premier chargement alors l'erreur hors-ligne avec 'Réessayer' est affichée.
- [ ] Étant donné une erreur 500 alors le message serveur distinct est affiché.

## 🧪 Tests à écrire

- [ ] Test widget empty_view_textes_et_action
- [ ] Test widget error_view_offline_vs_server
- [ ] Test bloc reset_depuis_empty
- [ ] Golden test empty clair/sombre

## ♿ Accessibilité et i18n

- ARB : historyEmptyTitle, historyEmptyBody, historyEmptyAction, historyErrorOffline, historyErrorServer, commonRetry.
- Le bouton a une zone ≥ 48 dp.

## 🔗 Dépendances

À réaliser après : `MOB-F-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.5
- CDC Flutter §9.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
