> **MOB-H-26** · Écran · Priorité **P1** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Bottom sheet avec deux cartes d'action (Créer une ligue, Rejoindre avec un code) et champ 'Code' préfixé 'BARCA-' en focus bleu.

## ✅ Objectif

Implémenter la feuille UI qui s'appuie sur la logique des ligues.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-15` — Créer ou rejoindre une ligue
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-15_creer-ou-rejoindre-une-ligue__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-15_creer-ou-rejoindre-une-ligue__phone_light.webp?raw=true' width='230' alt='H-15 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-15_creer-ou-rejoindre-une-ligue__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-15_creer-ou-rejoindre-une-ligue__phone_dark.webp?raw=true' width='230' alt='H-15 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-15_creer-ou-rejoindre-une-ligue__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-15_creer-ou-rejoindre-une-ligue__tablet_light.webp?raw=true' width='330' alt='H-15 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-15_creer-ou-rejoindre-une-ligue__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-15_creer-ou-rejoindre-une-ligue__tablet_dark.webp?raw=true' width='330' alt='H-15 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Aïcha Ngono » · « 812 pts · J11 : +78 » · « Mamadou Diallo » · « 790 pts · J11 : +64 » · « Boris T. » · « Toi » · « 774 pts · J11 : +70 » · « Lucía Fernández » · « 751 pts · J11 : +55 » · « Kevin Mballa » · « 702 pts · J11 : +61 » · « Ligue entre amis » · « Créer une ligue » · « Génère un code à partager » · « Rejoindre avec un code » · « Saisis le code d'un ami » · « Code » · « BARCA- »

**Composants repérés** : `avatar`, `card`, `input`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-FANT-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-15%5D%22) · [API-FANT-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-16%5D%22) · [API-FANT-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-17%5D%22) · [API-FANT-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-18%5D%22) · [MOB-H-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-25%5D%22)

## 📐 Règles de gestion

- Deux cartes cliquables avec icône hexagonale (+ grenat, # bleu) et chevron.
- Le clavier remonte le champ ; bouton 'Rejoindre' apparaît dès 6 caractères saisis.
- Fermeture par glissement ou retour.
- Erreurs inline sous le champ.

## 🔄 Comportement et états

- État chargement du bouton pendant l'appel ; succès -> fermeture + toast.

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/presentation/widgets/league_sheet.dart.
- [ ] Créer LeagueActionCard.
- [ ] Champ avec TextInputFormatter majuscule + préfixe.
- [ ] Brancher use cases.
- [ ] Gérer viewInsets.
- [ ] Clés ARB.
- [ ] Golden.

## ✔️ Critères d'acceptation

- [ ] Étant donné la feuille alors deux cartes sont visibles.
- [ ] Étant donné saisie incomplète alors le bouton est désactivé.
- [ ] Étant donné clavier ouvert alors le champ reste visible.
- [ ] Étant donné une erreur serveur alors le message apparaît sous le champ.

## 🧪 Tests à écrire

- [ ] widget: 2 cartes
- [ ] widget: champ majuscule
- [ ] widget: bouton activé à 6 car.
- [ ] golden

## ♿ Accessibilité et i18n

- Libellés ARB, focus automatique au tap sur Rejoindre

## 🔗 Dépendances

À réaliser après : `MOB-H-25` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.7

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
