> **MOB-D-09** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

À la toute première ouverture du jeu, puis via l'icône « ? » du plateau, une bottom sheet explique la mécanique : proposer un joueur, lire les indices vert/jaune/rouge et ▲▼, 6 essais, partage sans spoiler.

## ✅ Objectif

Implémenter la feuille de règles D-02 avec légende des couleurs et bouton « C'est parti ! ».

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `D-02` — Règles du jeu
_Module : Jeux - Guess the Player_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-02_regles-du-jeu__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-02_regles-du-jeu__phone_light.webp?raw=true' width='230' alt='D-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-02_regles-du-jeu__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-02_regles-du-jeu__phone_dark.webp?raw=true' width='230' alt='D-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-02_regles-du-jeu__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-02_regles-du-jeu__tablet_light.webp?raw=true' width='330' alt='D-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-02_regles-du-jeu__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/D/D-02_regles-du-jeu__tablet_dark.webp?raw=true' width='330' alt='D-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Guess the Player » · « Défi n°214 · 0/6 essais » · « Qui est le joueur mystère ? » · « Chaque essai compare tes choix aux indices. » · « Joueur » · « Nation » · « Poste » · « Âge » · « N° » · « Club » · « Correct » · « Proche » · « Faux » · « ▲▼ plus / moins » · « Nom du joueur… » · « Comment jouer ? » · « Propose un joueur » · « Tape un nom : ton choix est comparé au joueur mystère. » · « Lis les indices » · « Vert : exact · Jaune : proche · Rouge : faux. ▲▼ indiquent plus ou moins. » · « 6 essais maximum » · « Un nouveau joueur chaque jour, identique pour tous. » · « Partage ton résultat » · « Une grille sans spoiler à envoyer à tes amis. » · « C’est parti ! »

**Composants repérés** : `btn`, `card`, `input`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-JEUX-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-05%5D%22) · [API-JEUX-35](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-35%5D%22) · [MOB-D-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-29%5D%22) · [MOB-D-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-D-30%5D%22)

## 📐 Règles de gestion

- Afficher automatiquement une seule fois (drapeau local `guess_rules_seen` dans les préférences locales Drift/SharedPreferences) ; toujours accessible via l'icône « ? ».
- 4 étapes numérotées : « Propose un joueur », « Lis les indices », « 6 essais maximum », « Partage ton résultat » avec les textes exacts de la maquette.
- Légende : Correct (vert), Proche (jaune), Faux (rouge), « ▲▼ plus / moins ».

## 🛠️ Tâches

- [ ] Créer `presentation/widgets/guess_rules_sheet.dart` ouvert par `showModalBottomSheet(isScrollControlled:true, showDragHandle:true)`.
- [ ] Créer `GuessLegend` (réutilisé par le plateau, D-03) : 3 pastilles colorées + « ▲▼ plus / moins ».
- [ ] Créer `GuessRuleStep(icon,title,body)` pour chaque étape.
- [ ] Persister `guess_rules_seen` via `LocalPrefsRepository` ; le bouton « C'est parti ! » ferme la feuille et fixe le drapeau.
- [ ] Fermeture par glissement = même effet que « C'est parti ! ».
- [ ] Gérer `maxHeight 90 %` et scroll interne pour petits écrans / texte agrandi.
- [ ] Envoyer `guess_rules_viewed{source:'auto'|'help'}`.
- [ ] Golden test clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné une première ouverture, quand le jeu s'affiche, alors la feuille s'ouvre automatiquement et ne revient pas aux ouvertures suivantes.
- [ ] Étant donné le plateau, quand on touche « ? », alors la feuille s'ouvre à la demande.
- [ ] Étant donné la feuille ouverte, quand on touche « C'est parti ! », alors elle se ferme et le champ de saisie prend le focus.
- [ ] Étant donné TalkBack, quand la feuille s'ouvre, alors le titre est lu en premier.

## 🧪 Tests à écrire

- [ ] Widget test : ouverture automatique une seule fois.
- [ ] Widget test : ouverture via « ? ».
- [ ] Golden test : feuille claire.
- [ ] Golden test : feuille sombre.

## ♿ Accessibilité et i18n

- Clés ARB : `guessHowToPlay`, `ruleProposeTitle`, `ruleProposeBody`, `ruleCluesTitle`, `ruleCluesBody`, `ruleSixTriesTitle`, `ruleSixTriesBody`, `ruleShareTitle`, `ruleShareBody`, `letsGo`, `legendCorrect`, `legendClose`, `legendWrong`, `legendMoreLess`.

## 🔗 Dépendances

À réaliser après : `MOB-D-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.3
- CDC Global §2.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
