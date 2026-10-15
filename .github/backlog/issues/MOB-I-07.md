> **MOB-I-07** · Écran · Priorité **P0** · Taille **M** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Formulaire 'Nouveau joueur 1/3' : prénom et nom (Samuel Mbarga), poste (Gardien, Défenseur, Milieu, Ailier, Attaquant) en chips, pied fort (Gauche, Droit, Les deux), bouton Continuer.

## ✅ Objectif

Collecter identité, poste et pied fort avec validation.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `I-02` — Création — identité et poste
_Module : La Masia Academy_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-02_creation-identite-et-poste__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-02_creation-identite-et-poste__phone_light.webp?raw=true' width='230' alt='I-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-02_creation-identite-et-poste__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-02_creation-identite-et-poste__phone_dark.webp?raw=true' width='230' alt='I-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-02_creation-identite-et-poste__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-02_creation-identite-et-poste__tablet_light.webp?raw=true' width='330' alt='I-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-02_creation-identite-et-poste__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-02_creation-identite-et-poste__tablet_dark.webp?raw=true' width='330' alt='I-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Nouveau joueur » · « 1/3 » · « Prénom et nom » · « Samuel Mbarga » · « Poste » · « Gardien » · « Défenseur » · « Milieu » · « Ailier » · « Attaquant » · « Pied fort » · « Gauche » · « Droit » · « Les deux » · « Continuer »

**Composants repérés** : `btn`, `chip`, `input`

</details>

**Issues liées sur ce même écran :** [MOB-I-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-03%5D%22) · [MOB-I-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-10%5D%22) · [MOB-I-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-22%5D%22)

## 📐 Règles de gestion

- Nom : 2 à 30 caractères, lettres, espaces, apostrophes et traits d'union ; passe par le filtre de charte (même règle que pseudo, cf. Passport).
- Poste et pied obligatoires ; Continuer désactivé tant que invalide.
- Âge de départ imposé à 15 ans (Cadet A) d'après I-04 ; non modifiable.
- Un seul joueur par utilisateur.

## 🔄 Comportement et états

- Erreurs inline ; retour conserve la saisie.

## 🛠️ Tâches

- [ ] Créer lib/features/academy/presentation/pages/creation_identity_page.dart.
- [ ] Champ nom avec validateur.
- [ ] Chips poste/pied (ChoiceChip).
- [ ] Indicateur d'étape '1/3'.
- [ ] Émettre CreationStepNext.
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné nom vide alors Continuer désactivé.
- [ ] Étant donné 'Samuel Mbarga', Milieu, Gauche alors Continuer actif.
- [ ] Étant donné un nom avec chiffres alors erreur inline.
- [ ] Étant donné retour depuis l'étape 2 alors la saisie est conservée.

## 🧪 Tests à écrire

- [ ] validation nom
- [ ] chips exclusives
- [ ] bouton activé
- [ ] saisie conservée

## ♿ Accessibilité et i18n

- Chips en groupe radio, label de champ explicite

## 🔗 Dépendances

À réaliser après : `MOB-I-04` · `MOB-I-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.6
- CDC Global §2.7

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
