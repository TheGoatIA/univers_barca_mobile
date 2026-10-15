> **MOB-I-06** · Écran · Priorité **P1** · Taille **S** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Écran d'accueil du module (avant création) : badge 'Simulation', titre 'Forme ta pépite', trois arguments (Décide chaque semaine, Observe sa progression, Partage le même moteur de points) et CTA 'Créer mon joueur'.

## ✅ Objectif

Présenter la promesse et mener à la création.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `I-01` — Présentation de l’académie
_Module : La Masia Academy_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-01_presentation-de-l-academie__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-01_presentation-de-l-academie__phone_light.webp?raw=true' width='230' alt='I-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-01_presentation-de-l-academie__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-01_presentation-de-l-academie__phone_dark.webp?raw=true' width='230' alt='I-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-01_presentation-de-l-academie__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-01_presentation-de-l-academie__tablet_light.webp?raw=true' width='330' alt='I-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-01_presentation-de-l-academie__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-01_presentation-de-l-academie__tablet_dark.webp?raw=true' width='330' alt='I-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « La Masia Academy » · « Simulation » · « Forme ta pépite » · « Crée un jeune joueur virtuel et guide sa progression, semaine après semaine, jusqu'à l'équipe première. » · « Décide chaque semaine » · « Entraînement, tactique, nutrition, récupération. » · « Observe sa progression » · « Des attributs qui évoluent selon tes choix. » · « Partage le même moteur de points » · « Tes réussites alimentent ton Culé Passport. » · « Créer mon joueur »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-FANT-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-28%5D%22) · [MOB-I-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-20%5D%22)

## 📐 Règles de gestion

- Texte fidèle : 'Crée un jeune joueur virtuel et guide sa progression, semaine après semaine, jusqu'à l'équipe première.'
- Affiché uniquement si aucun joueur n'existe (NoPlayer).
- CTA -> /academy/create/identity.
- Mention du lien avec le Culé Passport (moteur de points commun).

## 🔄 Comportement et états

- Image d'illustration originale (sans droits).

## 🛠️ Tâches

- [ ] Créer lib/features/academy/presentation/pages/academy_intro_page.dart.
- [ ] Composant FeatureRow (icône, titre, texte).
- [ ] Navigation.
- [ ] Clés ARB.
- [ ] Golden.

## ✔️ Critères d'acceptation

- [ ] Étant donné aucun joueur alors l'intro s'affiche.
- [ ] Étant donné 'Créer mon joueur' alors étape 1/3.
- [ ] Étant donné un joueur existant alors l'intro n'est pas montrée.
- [ ] Étant donné le mode sombre alors lisible.

## 🧪 Tests à écrire

- [ ] widget textes
- [ ] navigation CTA
- [ ] non affiché si joueur existant
- [ ] golden

## ♿ Accessibilité et i18n

- Titres en en-têtes sémantiques

## 🔗 Dépendances

À réaliser après : `MOB-I-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.7
- CDC Flutter §7.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
