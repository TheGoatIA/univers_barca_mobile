> **MOB-I-05** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Les cartes de décision affichent des puces d'effet (Technique +, Fatigue ++, Forme ~, Malus fatigue −). Elles traduisent la table CDC Backend §3.12.3.

## ✅ Objectif

Centraliser la table d'effets affichée et la lecture du bilan renvoyé par le serveur.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `I-06` — Décision hebdomadaire
_Module : La Masia Academy_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-06_decision-hebdomadaire__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-06_decision-hebdomadaire__phone_light.webp?raw=true' width='230' alt='I-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-06_decision-hebdomadaire__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-06_decision-hebdomadaire__phone_dark.webp?raw=true' width='230' alt='I-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-06_decision-hebdomadaire__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-06_decision-hebdomadaire__tablet_light.webp?raw=true' width='330' alt='I-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-06_decision-hebdomadaire__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-06_decision-hebdomadaire__tablet_dark.webp?raw=true' width='330' alt='I-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Semaine 4 » · « Décision hebdomadaire » · « Samuel » · « Forme 78 % · Fatigue 34 % » · « Entraînement technique » · « Contrôle, passes, dribbles » · « Technique + » · « Fatigue + » · « Entraînement physique » · « Endurance, force, explosivité » · « Physique + » · « Fatigue ++ » · « Travail tactique » · « Lecture du jeu, placement » · « Intelligence + » · « Fatigue ~ » · « Repos / récupération » · « Sommeil, soins, décompression » · « Fatigue −− » · « Forme ~ » · « Suivi nutritionnel » · « Réduit l’impact de la fatigue » · « Malus fatigue − » · « Valider la décision »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-I-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-02%5D%22) · [MOB-I-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-03%5D%22) · [MOB-I-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-04%5D%22) · [MOB-I-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-12%5D%22) · [MOB-I-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-21%5D%22) · [MOB-I-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-22%5D%22)

#### `I-07` — Confirmation de la décision
_Module : La Masia Academy_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-07_confirmation-de-la-decision__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-07_confirmation-de-la-decision__phone_light.webp?raw=true' width='230' alt='I-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-07_confirmation-de-la-decision__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-07_confirmation-de-la-decision__phone_dark.webp?raw=true' width='230' alt='I-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-07_confirmation-de-la-decision__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-07_confirmation-de-la-decision__tablet_light.webp?raw=true' width='330' alt='I-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-07_confirmation-de-la-decision__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-07_confirmation-de-la-decision__tablet_dark.webp?raw=true' width='330' alt='I-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Semaine 4 » · « Entraînement technique » · « Contrôle, passes, dribbles » · « Technique + » · « Fatigue + » · « Entraînement physique » · « Endurance, force, explosivité » · « Physique + » · « Fatigue ++ » · « Travail tactique » · « Lecture du jeu, placement » · « Intelligence + » · « Fatigue ~ » · « Repos / récupération » · « Sommeil, soins, décompression » · « Fatigue −− » · « Forme ~ » · « Suivi nutritionnel » · « Réduit l’impact de la fatigue » · « Malus fatigue − » · « Technique » · « · Fatigue » · « . La décision sera appliquée à la fin de la semaine. » · « Confirmer » · « Changer »

**Composants repérés** : `btn`, `card`, `modal`

</details>

**Issues liées sur ce même écran :** [MOB-I-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-04%5D%22) · [MOB-I-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-13%5D%22)

#### `I-08` — Bilan de la semaine
_Module : La Masia Academy_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-08_bilan-de-la-semaine__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-08_bilan-de-la-semaine__phone_light.webp?raw=true' width='230' alt='I-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-08_bilan-de-la-semaine__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-08_bilan-de-la-semaine__phone_dark.webp?raw=true' width='230' alt='I-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-08_bilan-de-la-semaine__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-08_bilan-de-la-semaine__tablet_light.webp?raw=true' width='330' alt='I-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-08_bilan-de-la-semaine__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-08_bilan-de-la-semaine__tablet_dark.webp?raw=true' width='330' alt='I-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Bilan · Semaine 3 » · « Semaine réussie » · « +3 » · « points de global » · « Évolution des attributs » · « Technique » · « +4 » · « Physique » · « +0 » · « Intelligence » · « +1 » · « Mental » · « −2 » · « Conseil de l'assistant : il a besoin de repos avant le prochain match. » · « Semaine suivante »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-I-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-01%5D%22) · [MOB-I-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-02%5D%22) · [MOB-I-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-04%5D%22) · [MOB-I-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-14%5D%22)

## 📐 Règles de gestion

- Entraînement technique : Technique +, Fatigue + ; physique : Physique +, Fatigue ++ ; repos : Fatigue −−, légère perte de forme si répété (Forme ~) ; tactique : Intelligence +, Fatigue ~ ; nutrition : réduit l'impact négatif de la fatigue (Malus fatigue −).
- Le calcul réel est serveur (ComputeAcademyProgression, moteur de points partagé avec Fantasy) ; le client n'affiche que des tendances qualitatives, jamais de valeurs inventées.
- Écart CDC/maquette : le CDC Global cite aussi 'mental' comme type de décision, absent des 5 cartes de I-06 ; l'attribut Mental existe mais n'a pas de carte dédiée.
- Couleurs des puces : vert (gain), jaune (neutre/modéré), rouge (coût élevé).

## 🔄 Comportement et états

- La décision est appliquée à la fin de la semaine (I-07), pas immédiatement.

## 🛠️ Tâches

- [ ] Créer lib/features/academy/domain/decision_effects.dart (Map<DecisionType, List<Effect>>).
- [ ] Enum EffectKind(positive, neutral, negative) avec symboles + / ++ / ~ / − / −−.
- [ ] Composant EffectChip.
- [ ] Documenter la table.
- [ ] Tests de cohérence avec le CDC.

## ✔️ Critères d'acceptation

- [ ] Étant donné 'physique' alors les puces Physique + et Fatigue ++ s'affichent.
- [ ] Étant donné 'repos' alors Fatigue −− et Forme ~.
- [ ] Étant donné 'nutrition' alors Malus fatigue −.
- [ ] Étant donné un type inconnu alors aucune puce.

## 🧪 Tests à écrire

- [ ] table complète 5 décisions
- [ ] symboles corrects
- [ ] type inconnu sans puce

## ♿ Accessibilité et i18n

- Chaque puce a un libellé texte, pas seulement une couleur

## 🔗 Dépendances

À réaliser après : `MOB-I-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §3.12.3
- CDC Global §2.7

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
