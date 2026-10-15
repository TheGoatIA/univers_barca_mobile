> **MOB-G-12** · Écran · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Après un vote, une carte 'RÉSULTAT DE LA COMMUNAUTÉ' apparaît en tête avec la barre 71 % / 29 %, et un toast confirme.

## ✅ Objectif

Implémenter G-06 : carte de résultat animée et toast de confirmation.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `G-06` — Vote enregistré
_Module : Comparateur GOAT_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-06_vote-enregistre__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-06_vote-enregistre__phone_light.webp?raw=true' width='230' alt='G-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-06_vote-enregistre__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-06_vote-enregistre__phone_dark.webp?raw=true' width='230' alt='G-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-06_vote-enregistre__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-06_vote-enregistre__tablet_light.webp?raw=true' width='330' alt='G-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-06_vote-enregistre__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/G/G-06_vote-enregistre__tablet_dark.webp?raw=true' width='330' alt='G-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Messi vs Xavi » · « Messi » · « Xavi » · « Résultat de la communauté » · « 12 481 votes · tu as voté pour Messi » · « 71 % » · « 29 % » · « Matchs » · « Buts » · « Passes décisives » · « Trophées » · « Saisons » · « 0,86 » · « Buts par match » · « 0,11 » · « Ton vote a bien été pris en compte »

**Composants repérés** : `card`, `toast`

</details>

**Issues liées sur ce même écran :** [MOB-G-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-01%5D%22) · [MOB-G-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-02%5D%22) · [MOB-G-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-03%5D%22) · [MOB-G-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-04%5D%22) · [MOB-G-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-11%5D%22) · [MOB-G-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-14%5D%22) · [MOB-G-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-15%5D%22) · [MOB-G-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-16%5D%22) · [MOB-G-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-G-17%5D%22)

## 📐 Règles de gestion

- Carte : titre 'RÉSULTAT DE LA COMMUNAUTÉ', sous-titre '12 481 votes · tu as voté pour Messi', barre bicolore (grenat 71 % / bleu 29 %), noms sous la barre avec coche à côté du joueur voté.
- La barre s'anime de 50/50 vers 71/29 en 700 ms (easeOutCubic).
- Toast sombre 'Ton vote a bien été pris en compte' avec icône coche verte, durée 3 s, au-dessus de la barre de navigation.
- Les statistiques croisées restent affichées sous la carte.
- Pourcentages arrondis, somme 100 ; si totalVotes < 10 : afficher aussi 'Peu de votes pour l'instant'.
- Retour sur l'écran après fermeture : la carte reste visible (état myVote conservé).

## 🛠️ Tâches

- [ ] Créer widgets/community_result_card.dart, vote_split_bar.dart.
- [ ] Utiliser le composant toast/SnackBar du design system (AppToast).
- [ ] Brancher GoatVoted et effets one-shot.
- [ ] Ajouter ARB goatCommunityResult, goatVotesYouVoted='{count} votes · tu as voté pour {name}', goatVoteSaved.
- [ ] Gérer le thème sombre.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné GoatVoted alors la carte et le toast s'affichent.
- [ ] Étant donné 71/29 alors la barre est proportionnelle.
- [ ] Étant donné 5 votes alors la mention 'Peu de votes' est visible.
- [ ] Étant donné la rotation d'écran alors la carte reste.

## 🧪 Tests à écrire

- [ ] Test widget CommunityResultCard_textes
- [ ] Test widget VoteSplitBar_proportion
- [ ] Test widget toast_vote_enregistre
- [ ] Golden test G-06 clair/sombre

## ♿ Accessibilité et i18n

- La carte annonce 'Messi 71 pour cent, Xavi 29 pour cent, tu as voté pour Messi'.
- Toast = liveRegion polite.

## 🔗 Dépendances

À réaliser après : `MOB-G-11` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.6
- CDC Flutter §7.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
