> **MOB-I-09** · Écran · Priorité **P0** · Taille **M** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Carte récapitulative 'Cadet A — Samuel Mbarga — Milieu offensif · Pied gauche · 15 ans', objectif 'Atteindre 75 de global pour être promu en Juvenil B', bouton 'Entrer à La Masia'.

## ✅ Objectif

Valider la création et envoyer POST /academy/player.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `I-04` — Création — confirmation
_Module : La Masia Academy_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-04_creation-confirmation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-04_creation-confirmation__phone_light.webp?raw=true' width='230' alt='I-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-04_creation-confirmation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-04_creation-confirmation__phone_dark.webp?raw=true' width='230' alt='I-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-04_creation-confirmation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-04_creation-confirmation__tablet_light.webp?raw=true' width='330' alt='I-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-04_creation-confirmation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-04_creation-confirmation__tablet_dark.webp?raw=true' width='330' alt='I-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Nouveau joueur » · « 3/3 » · « Cadet A » · « Samuel Mbarga » · « Milieu offensif · Pied gauche · 15 ans » · « Premier objectif » · « Atteindre 75 de global » · « pour être promu en Juvenil B » · « Entrer à La Masia »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-I-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-01%5D%22) · [MOB-I-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-10%5D%22)

## 📐 Règles de gestion

- Récapitulatif non modifiable ; 'Retour' revient à l'étape 2.
- Envoi : bouton en chargement ; succès -> accueil du joueur (I-05) ; 409 -> joueur déjà existant, redirection.
- Objectif initial : 75 de global pour Juvenil B (valeur affichée de la maquette, issue de la configuration serveur).
- Création unique : une fois créé, aucun écran de création accessible.

## 🔄 Comportement et états

- Erreur réseau : brouillon de création conservé.

## 🛠️ Tâches

- [ ] Créer lib/features/academy/presentation/pages/creation_confirm_page.dart.
- [ ] Carte récapitulatif.
- [ ] Appel CreationConfirmed.
- [ ] Redirection post-succès.
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné la confirmation alors POST est envoyé une fois.
- [ ] Étant donné succès alors l'accueil joueur s'affiche.
- [ ] Étant donné un 409 alors redirection vers l'accueil existant.
- [ ] Étant donné une erreur réseau alors retry possible sans ressaisie.

## 🧪 Tests à écrire

- [ ] POST une fois
- [ ] 409 redirection
- [ ] brouillon conservé
- [ ] affichage objectif

## 🔗 Dépendances

À réaliser après : `MOB-I-08` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.7
- CDC Backend §3.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
