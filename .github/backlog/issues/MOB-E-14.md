> **MOB-E-14** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

E-04 montre la sélection d'une option (surbrillance de la carte et pastille) avec « Valider » actif ; la réponse n'est pas encore envoyée et reste modifiable tant que « Valider » n'est pas touché.

## ✅ Objectif

Implémenter la sélection modifiable, la validation et le verrouillage.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-04` — Question — réponse sélectionnée
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__phone_light.webp?raw=true' width='230' alt='E-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__phone_dark.webp?raw=true' width='230' alt='E-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__tablet_light.webp?raw=true' width='330' alt='E-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-04_question-reponse-selectionnee__tablet_dark.webp?raw=true' width='330' alt='E-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Niveau 2 · Culé » · « 4/10 » · « Histoire · Question 4 » · « Quel joueur a marqué le but de la victoire en finale de la Ligue des champions 2015 à Berlin face à la Juventus ? » · « Neymar Jr » · « Luis Suárez » · « Ivan Rakitić » · « Lionel Messi » · « Valider »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-16%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-32%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Re-toucher une autre option change la sélection ; re-toucher la même option la désélectionne.
- « Valider » verrouille la question : options désactivées, minuteur arrêté, bouton en chargement.
- Retour haptique léger à la sélection (`selectionClick`) si activé dans le système.

## 🛠️ Tâches

- [ ] Implémenter `QuizOptionSelected` dans le bloc (transition `question(selected)`).
- [ ] Créer l'état visuel `OptionState.selected` (bordure grenat 2 dp, fond rosé, pastille pleine).
- [ ] Activer `AppButton` « Valider » via `selected != null`.
- [ ] Verrouiller l'UI au passage en `submitting` (`IgnorePointer`).
- [ ] Animer la sélection (150 ms).
- [ ] Gérer la perte de réseau pendant `submitting` (message + Réessayer).
- [ ] Golden test E-04.
- [ ] Tests bloc/widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné l'option C touchée, quand elle est sélectionnée, alors « Valider » est actif.
- [ ] Étant donné une autre option touchée, quand elle l'est, alors la première est désélectionnée.
- [ ] Étant donné « Valider », quand il est touché, alors toutes les options sont désactivées.
- [ ] Étant donné la perte de réseau, quand la validation échoue, alors un message avec « Réessayer » est affiché sans perdre la sélection.

## 🧪 Tests à écrire

- [ ] bloc_test : changement de sélection.
- [ ] Widget test : verrouillage après validation.
- [ ] Golden test : E-04.
- [ ] Widget test : retry après erreur.

## ♿ Accessibilité et i18n

- Annonce « Option C sélectionnée ».

## 🔗 Dépendances

À réaliser après : `MOB-E-13` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
