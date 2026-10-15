> **MOB-E-11** · Écran · Priorité **P1** · Taille **XS** · Phase 1 — MVP

## 🎯 Contexte

Pendant la préparation du quiz, E-18 affiche un spinner, « Préparation de ton quiz » et « Sélection de questions adaptées à ton niveau… ».

## ✅ Objectif

Implémenter l'état de chargement plein écran avec délai et repli.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-18` — Chargement des questions
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-18_chargement-des-questions__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-18_chargement-des-questions__phone_light.webp?raw=true' width='230' alt='E-18 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-18_chargement-des-questions__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-18_chargement-des-questions__phone_dark.webp?raw=true' width='230' alt='E-18 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-18_chargement-des-questions__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-18_chargement-des-questions__tablet_light.webp?raw=true' width='330' alt='E-18 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-18_chargement-des-questions__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-18_chargement-des-questions__tablet_dark.webp?raw=true' width='330' alt='E-18 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz du jour » · « Préparation de ton quiz » · « Sélection de questions adaptées à ton niveau… »

**Composants repérés** : `spinner`

</details>

**Issues liées sur ce même écran :** [API-JEUX-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-13%5D%22) · [API-JEUX-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-14%5D%22) · [MOB-E-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-04%5D%22) · [MOB-E-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-06%5D%22) · [MOB-E-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-30%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Afficher E-18 si le chargement dure plus de 300 ms (évite le clignotement).
- Après 10 s, proposer « Réessayer » et « Retour » ; après 20 s, erreur serveur avec message non technique.
- Mode hors-ligne : message « Connexion nécessaire pour démarrer le quiz du jour ».

## 🛠️ Tâches

- [ ] Créer `QuizLoadingView` (spinner de la marque, `AppLoading`).
- [ ] Ajouter un `Timer(300 ms)` d'affichage différé dans la page.
- [ ] Gérer les paliers 10 s/20 s via `QuizLoadingTimeoutCubit`.
- [ ] Respecter `reduceMotion` (spinner statique à 0 %).
- [ ] Croix de sortie fonctionnelle.
- [ ] Golden test clair/sombre.
- [ ] `Semantics(liveRegion)` sur le texte.
- [ ] Test des délais.

## ✔️ Critères d'acceptation

- [ ] Étant donné un chargement de 200 ms, quand il se termine, alors E-18 n'a jamais été affiché.
- [ ] Étant donné 10 s écoulées, quand le chargement est en cours, alors le bouton « Réessayer » apparaît.
- [ ] Étant donné hors-ligne, quand le quiz est demandé, alors le message de connexion nécessaire est affiché.
- [ ] Étant donné la croix, quand elle est touchée, alors retour au hub.

## 🧪 Tests à écrire

- [ ] Widget test : délai 300 ms.
- [ ] Widget test : bouton à 10 s.
- [ ] Golden test : E-18.
- [ ] Widget test : hors-ligne.

## ♿ Accessibilité et i18n

- Clés ARB : `preparingQuiz`, `selectingQuestions`, `retry`, `connectionRequired`.

## 🔗 Dépendances

À réaliser après : `MOB-E-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
