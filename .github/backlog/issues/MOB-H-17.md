> **MOB-H-17** · Écran · Priorité **P0** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Avant l'envoi, une modale résume formation, capitaine et heure de fermeture et demande confirmation.

## ✅ Objectif

Éviter les enregistrements accidentels et rappeler que la modification reste possible jusqu'à la fermeture.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-07` — Confirmation de la composition
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-07_confirmation-de-la-composition__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-07_confirmation-de-la-composition__phone_light.webp?raw=true' width='230' alt='H-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-07_confirmation-de-la-composition__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-07_confirmation-de-la-composition__phone_dark.webp?raw=true' width='230' alt='H-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-07_confirmation-de-la-composition__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-07_confirmation-de-la-composition__tablet_light.webp?raw=true' width='330' alt='H-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-07_confirmation-de-la-composition__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-07_confirmation-de-la-composition__tablet_dark.webp?raw=true' width='330' alt='H-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Fermeture des compositions dans » · « 1 j 04 h 12 min » · « J11 » · « ter Stegen » · « Koundé » · « Cubarsí » · « Araújo » · « Balde » · « De Jong » · « Pedri » · « Gavi » · « Yamal » · « Lewandowski » · « Raphinha » · « 11/11 » · « Équipe complète » · « Formation » · « 4-3-3 » · « · Capitaine » · « Capitaine »

**Composants repérés** : `avatar`, `btn`, `card`, `modal`

</details>

**Issues liées sur ce même écran :** [API-FANT-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-06%5D%22) · [API-FANT-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-24%5D%22) · [MOB-H-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-02%5D%22) · [MOB-H-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-04%5D%22) · [MOB-H-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-06%5D%22) · [MOB-H-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-29%5D%22) · [MOB-H-35](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-35%5D%22)

## 📐 Règles de gestion

- Récapitulatif : formation (4-3-3), capitaine (Yamal), '11/11 Équipe complète'.
- Boutons 'Confirmer' (primaire) et 'Continuer à modifier' (secondaire).
- La modale est bloquante pendant l'envoi (bouton en chargement, non fermable).
- Rappel : modifiable jusqu'à la fermeture dans 1 j 04 h 12 min.

## 🔄 Comportement et états

- Succès -> fermeture + H-08 ; erreur 409 -> H-09 ; erreur 422 -> message de champ.

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/presentation/widgets/confirm_team_dialog.dart.
- [ ] Émettre SaveRequested.
- [ ] Afficher le loader sur le bouton.
- [ ] Gérer les failures.
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné une équipe complète quand je valide alors la modale s'ouvre avec le récapitulatif.
- [ ] Étant donné un envoi en cours alors la modale n'est pas fermable.
- [ ] Étant donné un 409 alors la modale se ferme et H-09 apparaît.
- [ ] Étant donné 'Continuer à modifier' alors retour au terrain.

## 🧪 Tests à écrire

- [ ] modale récapitulatif
- [ ] non fermable pendant Saving
- [ ] 409 gère verrouillage
- [ ] bouton secondaire ferme

## ♿ Accessibilité et i18n

- Focus piégé dans la modale, annonce du titre

## 🔗 Dépendances

À réaliser après : `MOB-H-06` · `MOB-H-16` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
