> **MOB-I-12** · Écran · Priorité **P0** · Taille **L** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

En-tête 'SEMAINE 4 · Décision hebdomadaire', rappel 'Samuel Forme 78 % · Fatigue 34 %', cinq cartes sélectionnables (Entraînement technique, physique, Travail tactique, Repos / récupération, Suivi nutritionnel) avec puces d'effet, CTA 'Valider la décision'.

## ✅ Objectif

Permettre de choisir une seule décision par semaine.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `I-06` — Décision hebdomadaire
_Module : La Masia Academy_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-06_decision-hebdomadaire__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-06_decision-hebdomadaire__phone_light.webp?raw=true' width='230' alt='I-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-06_decision-hebdomadaire__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-06_decision-hebdomadaire__phone_dark.webp?raw=true' width='230' alt='I-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-06_decision-hebdomadaire__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-06_decision-hebdomadaire__tablet_light.webp?raw=true' width='330' alt='I-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-06_decision-hebdomadaire__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-06_decision-hebdomadaire__tablet_dark.webp?raw=true' width='330' alt='I-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Semaine 4 » · « Décision hebdomadaire » · « Samuel » · « Forme 78 % · Fatigue 34 % » · « Entraînement technique » · « Contrôle, passes, dribbles » · « Technique + » · « Fatigue + » · « Entraînement physique » · « Endurance, force, explosivité » · « Physique + » · « Fatigue ++ » · « Travail tactique » · « Lecture du jeu, placement » · « Intelligence + » · « Fatigue ~ » · « Repos / récupération » · « Sommeil, soins, décompression » · « Fatigue −− » · « Forme ~ » · « Suivi nutritionnel » · « Réduit l’impact de la fatigue » · « Malus fatigue − » · « Valider la décision »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-FANT-26](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-26%5D%22) · [API-FANT-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-29%5D%22) · [API-FANT-34](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-34%5D%22) · [MOB-I-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-02%5D%22) · [MOB-I-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-03%5D%22) · [MOB-I-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-04%5D%22) · [MOB-I-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-05%5D%22) · [MOB-I-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-21%5D%22) · [MOB-I-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-22%5D%22)

## 📐 Règles de gestion

- Sélection exclusive (radio) ; sélection par défaut aucune ; la carte choisie a une bordure grenat.
- Chaque carte : icône, titre, sous-titre (Contrôle, passes, dribbles), puces d'effet.
- Valider désactivé sans sélection ; ouvre la modale de confirmation (I-07).
- Si fatigue >= 80 %, la carte Repos est mise en avant (recommandée) sans interdire les autres.

## 🔄 Comportement et états

- Défilement vertical ; CTA fixe en bas.

## 🛠️ Tâches

- [ ] Créer lib/features/academy/presentation/pages/weekly_decision_page.dart.
- [ ] Widget DecisionCard.
- [ ] Sélection dans le BLoC.
- [ ] Recommandation de repos.
- [ ] Clés ARB.
- [ ] Golden.

## ✔️ Critères d'acceptation

- [ ] Étant donné aucune sélection alors Valider est désactivé.
- [ ] Étant donné une sélection alors une seule carte est active.
- [ ] Étant donné fatigue 82 % alors Repos est recommandé.
- [ ] Étant donné Valider alors la confirmation s'ouvre.

## 🧪 Tests à écrire

- [ ] sélection exclusive
- [ ] bouton désactivé
- [ ] recommandation repos
- [ ] golden

## ♿ Accessibilité et i18n

- Radio group, cartes >= 48 dp

## 🔗 Dépendances

À réaliser après : `MOB-I-05` · `MOB-I-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §3.12.3
- CDC Flutter §7.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
