> **MOB-J-20** · Écran · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

L'écran « Visibilité » propose trois options exclusives : « Ville uniquement » (compté dans les agrégats de Yaoundé), « Pays uniquement » (Cameroun) et « Masqué » (aucun compteur), avec le rappel que la position GPS précise n'est jamais stockée ni visible.

## ✅ Objectif

Laisser l'utilisateur choisir la précision de sa présence dans les compteurs, révocable à tout moment.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `J-09` — Visibilité sur la carte
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-09_visibilite-sur-la-carte__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-09_visibilite-sur-la-carte__phone_light.webp?raw=true' width='230' alt='J-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-09_visibilite-sur-la-carte__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-09_visibilite-sur-la-carte__phone_dark.webp?raw=true' width='230' alt='J-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-09_visibilite-sur-la-carte__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-09_visibilite-sur-la-carte__tablet_light.webp?raw=true' width='330' alt='J-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-09_visibilite-sur-la-carte__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-09_visibilite-sur-la-carte__tablet_dark.webp?raw=true' width='330' alt='J-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Visibilité » · « Choisis la précision avec laquelle tu apparais dans les compteurs de la carte. » · « Ville uniquement » · « Compté dans les agrégats de Yaoundé » · « Pays uniquement » · « Compté dans les agrégats du Cameroun » · « Masqué » · « Tu n’apparais dans aucun compteur » · « Ta position GPS précise n'est jamais stockée ni visible par un autre utilisateur. »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-COMM-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-01%5D%22) · [API-COMM-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-04%5D%22) · [API-COMM-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-06%5D%22) · [API-COMM-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-29%5D%22) · [API-COMM-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-31%5D%22) · [MOB-J-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-17%5D%22) · [MOB-J-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-19%5D%22) · [MOB-J-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-25%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22) · [MOB-J-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-27%5D%22)

## 📐 Règles de gestion

- Sélection exclusive (radio) avec libellés dynamiques selon la zone : « Compté dans les agrégats de {city} », « Compté dans les agrégats du {country} ».
- Choisir « Masqué » demande une confirmation légère (snackbar annulable 5 s) et enregistre un consentement geolocation révoqué si le GPS était actif.
- Accessible depuis la carte (bouton réglages de la recherche) et Paramètres › Confidentialité.
- Le changement est immédiat (optimiste) et reflété dans le sous-titre de la carte au prochain rafraîchissement.
- Si aucune zone n'est définie, l'écran propose d'abord J-06.

## 🔄 Comportement et états

- Erreur réseau : retour à l'ancienne option et toast d'erreur.
- Chargement : squelette des 3 cartes.

## 🛠️ Tâches

- [ ] Créer presentation/pages/map_visibility_page.dart (route /community/location/visibility) et VisibilityCubit.
- [ ] Créer widgets/visibility_option_card.dart (radio, titre, sous-titre).
- [ ] Brancher UpdateVisibility et RevokeGeolocationConsent (si Masqué).
- [ ] Implémenter le snackbar d'annulation (undo 5 s).
- [ ] Texte de rappel bas d'écran avec icône bouclier.
- [ ] Ajouter ARB FR/EN/ES et goldens.
- [ ] Lier depuis Paramètres › Confidentialité (route partagée avec le groupe Paramètres).
- [ ] Tests cubit/widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné « Ville uniquement », quand l'écran s'ouvre, alors le sous-titre mentionne Yaoundé.
- [ ] Étant donné un choix « Masqué », quand il est confirmé, alors l'API reçoit visibility=hidden.
- [ ] Étant donné une erreur serveur, quand l'utilisateur change d'option, alors l'ancienne option est restaurée.
- [ ] Étant donné « Masqué » choisi par erreur, quand l'utilisateur tape « Annuler » dans les 5 s, alors l'option précédente revient.
- [ ] Étant donné aucune zone, quand l'écran s'ouvre, alors J-06 s'affiche.

## 🧪 Tests à écrire

- [ ] visibility_cubit_test : optimiste + rollback.
- [ ] visibility_page_test : trois options.
- [ ] undo_snackbar_test : 5 s.
- [ ] golden_visibility.

## ♿ Accessibilité et i18n

- ARB : communityVisibilityTitle « Visibilité », communityVisibilityCity « Ville uniquement », communityVisibilityCountry « Pays uniquement », communityVisibilityHidden « Masqué »
- Groupe radio sémantique avec état sélectionné annoncé.

## 🔗 Dépendances

À réaliser après : `MOB-J-19` · `MOB-J-17` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.16.2
- CDC Global §10.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
