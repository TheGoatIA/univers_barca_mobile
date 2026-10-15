> **MOB-I-08** · Écran · Priorité **P0** · Taille **M** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Écran 'Ses points forts — Répartis 12 points bonus sur ses attributs de départ' avec Technique, Physique, Intelligence, Vitesse et compteur 'Points restants'.

## ✅ Objectif

Permettre la répartition de 12 points avec compteur et bornes.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `I-03` — Création — profil de départ
_Module : La Masia Academy_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-03_creation-profil-de-depart__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-03_creation-profil-de-depart__phone_light.webp?raw=true' width='230' alt='I-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-03_creation-profil-de-depart__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-03_creation-profil-de-depart__phone_dark.webp?raw=true' width='230' alt='I-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-03_creation-profil-de-depart__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-03_creation-profil-de-depart__tablet_light.webp?raw=true' width='330' alt='I-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-03_creation-profil-de-depart__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-03_creation-profil-de-depart__tablet_dark.webp?raw=true' width='330' alt='I-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Nouveau joueur » · « 2/3 » · « Ses points forts » · « Répartis 12 points bonus sur ses attributs de départ. » · « Technique » · « Physique » · « Intelligence » · « Vitesse » · « Points restants : » · « Continuer »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-I-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-10%5D%22)

## 📐 Règles de gestion

- Total exact de 12 points à répartir ; 'Points restants' décroit de 12 à 0 ; Continuer actif seulement à 0.
- Bornes par attribut : 0 à +6 (valeur à confirmer avec l'API) ; boutons - et + de 48 dp.
- Seuls Technique, Physique, Intelligence, Vitesse sont ajustables ; Mental et Finition démarrent à la valeur de base.
- Pas de retour négatif : - désactivé à 0.

## 🔄 Comportement et états

- Le compteur s'anime (150 ms) à chaque changement.

## 🛠️ Tâches

- [ ] Créer lib/features/academy/presentation/pages/creation_profile_page.dart.
- [ ] Widget AttributeStepper (-, valeur, +).
- [ ] Événement AttributePointChanged.
- [ ] Logique de somme dans le BLoC.
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné 12 points restants alors Continuer est désactivé.
- [ ] Étant donné 0 restant alors Continuer est actif.
- [ ] Étant donné un + à 0 restant alors rien ne change.
- [ ] Étant donné un attribut à 0 alors - est désactivé.

## 🧪 Tests à écrire

- [ ] somme exacte 12
- [ ] + bloqué à 0 restant
- [ ] - bloqué à 0
- [ ] Continuer conditionnel

## ♿ Accessibilité et i18n

- Annonce 'Points restants : 5'

## 🔗 Dépendances

À réaliser après : `MOB-I-07` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.7
- CDC Flutter §7.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
