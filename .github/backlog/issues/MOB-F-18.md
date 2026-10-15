> **MOB-F-18** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Quand un match jamais ouvert est demandé sans connexion, ou qu'un lien est invalide, l'utilisateur voit une erreur explicite plutôt qu'un écran vide.

## ✅ Objectif

Implémenter l'écran d'erreur 'Match indisponible hors-ligne' et la variante 404.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `F-14` — Match introuvable — erreur
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-14_match-introuvable-erreur__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-14_match-introuvable-erreur__phone_light.webp?raw=true' width='230' alt='F-14 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-14_match-introuvable-erreur__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-14_match-introuvable-erreur__phone_dark.webp?raw=true' width='230' alt='F-14 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-14_match-introuvable-erreur__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-14_match-introuvable-erreur__tablet_light.webp?raw=true' width='330' alt='F-14 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-14_match-introuvable-erreur__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-14_match-introuvable-erreur__tablet_dark.webp?raw=true' width='330' alt='F-14 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Match historique » · « Match indisponible hors-ligne » · « Ce match n’a pas encore été consulté : connecte-toi pour le charger. Les matchs déjà ouverts restent accessibles. » · « Réessayer »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-FOOT-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-07%5D%22) · [API-FOOT-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-16%5D%22) · [MOB-F-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-02%5D%22) · [MOB-F-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-03%5D%22) · [MOB-F-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-04%5D%22) · [MOB-F-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-13%5D%22) · [MOB-F-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-24%5D%22) · [MOB-F-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-25%5D%22) · [MOB-F-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-27%5D%22)

## 📐 Règles de gestion

- Hors-ligne non caché : titre 'Match indisponible hors-ligne', texte 'Ce match n'a pas encore été consulté : connecte-toi pour le charger. Les matchs déjà ouverts restent accessibles.', bouton 'Réessayer'.
- 'Réessayer' relance HistoricalMatchRequested ; si le réseau revient, le match se charge et est mis en cache.
- 404 : 'Match introuvable' + bouton 'Retour à la frise' ; pas de bouton Réessayer.
- L'en-tête 'MATCH HISTORIQUE' avec flèche retour reste visible.
- Détection du retour réseau via NetworkInfo : rechargement automatique optionnel (stream de connectivité) avec debounce 2 s.

## 🛠️ Tâches

- [ ] Créer widgets/match_unavailable_view.dart (variants offline/notFound) basé sur AppErrorView.
- [ ] Brancher OfflineNotCached et NotFound dans historical_match_page.dart.
- [ ] Ajouter l'icône 'cloud_off' et ARB (matchOfflineTitle, matchOfflineBody, matchNotFoundTitle, matchBackToTimeline).
- [ ] Écouter connectivity_plus pour proposer un rafraîchissement automatique.
- [ ] Golden tests des deux variantes.

## ✔️ Critères d'acceptation

- [ ] Étant donné hors-ligne sans cache alors les textes de la maquette F-14 s'affichent.
- [ ] Étant donné 'Réessayer' avec réseau revenu alors le match s'affiche.
- [ ] Étant donné 404 alors 'Match introuvable' et pas de bouton Réessayer.
- [ ] Étant donné le retour réseau alors le chargement automatique se déclenche une fois.

## 🧪 Tests à écrire

- [ ] Test widget unavailable_offline_textes
- [ ] Test widget unavailable_404_variant
- [ ] Test bloc retry_apres_retour_reseau
- [ ] Golden test erreur clair/sombre

## ♿ Accessibilité et i18n

- Message annoncé comme alerte (liveRegion).
- Bouton Réessayer ≥ 48 dp.

## 🔗 Dépendances

À réaliser après : `MOB-F-13` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.5
- CDC Flutter §5.3
- CDC Flutter §9.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
