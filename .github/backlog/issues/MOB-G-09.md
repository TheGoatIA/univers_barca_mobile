> **MOB-G-09** · Écran · Priorité **P0** · Taille **L** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Écran de résultat 'Messi vs Xavi' : avatars, barres comparatives des statistiques, puis bloc de vote.

## ✅ Objectif

Implémenter G-04 : en-tête duel, lignes comparatives animées, appel au vote.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `G-04` — Résultat — statistiques croisées
_Module : Comparateur GOAT_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-04_resultat-statistiques-croisees__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-04_resultat-statistiques-croisees__phone_light.webp?raw=true' width='230' alt='G-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-04_resultat-statistiques-croisees__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-04_resultat-statistiques-croisees__phone_dark.webp?raw=true' width='230' alt='G-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-04_resultat-statistiques-croisees__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-04_resultat-statistiques-croisees__tablet_light.webp?raw=true' width='330' alt='G-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-04_resultat-statistiques-croisees__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-04_resultat-statistiques-croisees__tablet_dark.webp?raw=true' width='330' alt='G-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Messi vs Xavi » · « Messi » · « Xavi » · « Matchs » · « Buts » · « Passes décisives » · « Trophées » · « Saisons » · « 0,86 » · « Buts par match » · « 0,11 » · « Qui est le GOAT à tes yeux ? » · « Ton vote est modifiable une fois par semaine. »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-G-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-01%5D%22) · [MOB-G-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-02%5D%22) · [MOB-G-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-03%5D%22) · [MOB-G-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-04%5D%22) · [MOB-G-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-11%5D%22) · [MOB-G-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-14%5D%22) · [MOB-G-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-15%5D%22) · [MOB-G-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-16%5D%22) · [MOB-G-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-17%5D%22)

## 📐 Règles de gestion

- Titre dynamique 'MESSI VS XAVI' ; avatars ronds (A grenat/B bleu) + 'VS'.
- Lignes : Matchs 778/767, Buts 672/85, Passes décisives 269/185, Trophées 35/25, Saisons 17/17, Buts par match 0,86/0,11 ; barre double proportionnelle ; la valeur la plus élevée est en grenat/gras, égalité = teinte neutre.
- Chiffres animés (count-up 600 ms) et barres de 0 à leur longueur (easeOutCubic) ; désactivé si reduce motion.
- Bloc 'Qui est le GOAT à tes yeux ?' avec deux boutons de vote (un par joueur) et note 'Ton vote est modifiable une fois par semaine.'
- Tant que l'utilisateur n'a pas voté, le pourcentage communautaire n'est pas affiché (évite le biais) — le résultat apparaît après vote (G-06).
- Longévité = nombre de saisons (CDC §2.6).
- Pas de verdict : aucun libellé du type 'meilleur joueur' ; l'application n'impose jamais de gagnant.

## 🛠️ Tâches

- [ ] Créer presentation/pages/goat_result_page.dart (route /goat/result?a=&b=).
- [ ] Créer widgets/duel_header.dart, stat_compare_row.dart (réutilisable avec F-07), vote_prompt_card.dart.
- [ ] Implémenter l'animation count-up (TweenAnimationBuilder).
- [ ] Gérer les valeurs égales et 0.
- [ ] Brancher GoatResult et GoatVoteSubmitted(side).
- [ ] ARB goatVsTitle, goatStatMatches/Goals/Assists/Trophies/Seasons/GoalsPerMatch, goatWhoIsGoat, goatVoteWeekly.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné Messi/Xavi alors les six lignes avec valeurs de la maquette sont affichées.
- [ ] Étant donné Saisons 17/17 alors aucune valeur n'est mise en avant.
- [ ] Étant donné l'utilisateur n'a pas voté alors aucun pourcentage communautaire.
- [ ] Étant donné le tap sur le bouton de vote Messi alors GoatVoteSubmitted(a) est émis.
- [ ] Étant donné reduce motion alors pas d'animation.

## 🧪 Tests à écrire

- [ ] Test widget StatCompareRow_valeur_max
- [ ] Test widget egalite_neutre
- [ ] Test widget pas_de_pourcentage_avant_vote
- [ ] Test widget tap_vote
- [ ] Golden test G-04 clair/sombre

## ♿ Accessibilité et i18n

- Chaque ligne : 'Buts : Messi 672, Xavi 85'.
- Boutons de vote : 'Voter pour Messi'.
- Ne pas encoder l'avantage par la couleur seule (gras + icône).

## 🔗 Dépendances

À réaliser après : `MOB-G-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.6
- CDC Flutter §7.5
- CDC Backend §3.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
