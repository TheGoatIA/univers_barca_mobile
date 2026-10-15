> **MOB-F-17** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Le CDC demande contexte, compétition et classement à l'époque pour chaque match historique.

## ✅ Objectif

Afficher le texte éditorial de contexte et le mini-classement de la saison.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `F-10` — Match historique — contexte
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-10_match-historique-contexte__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-10_match-historique-contexte__phone_light.webp?raw=true' width='230' alt='F-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-10_match-historique-contexte__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-10_match-historique-contexte__phone_dark.webp?raw=true' width='230' alt='F-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-10_match-historique-contexte__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-10_match-historique-contexte__tablet_light.webp?raw=true' width='330' alt='F-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-10_match-historique-contexte__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-10_match-historique-contexte__tablet_dark.webp?raw=true' width='330' alt='F-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Match historique » · « Ligue des champions · Finale » · « Barça » · « 3 – 1 » · « Mi-temps 1-1 » · « Man. United » · « 28 mai 2011 · » · « Wembley, Londres » · « Résumé » · « Compos » · « Événements » · « Contexte » · « Deux ans après Rome, le Barça retrouve Manchester United en finale. Porté par un milieu Xavi–Iniesta–Busquets, il impose son jeu de position et remporte sa quatrième Ligue des champions de l’ère moderne. » · « Classement à l’époque » · « FC Barcelone » · « 96 pts » · « Real Madrid » · « 92 pts » · « Valence » · « 71 pts »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-03%5D%22) · [API-FOOT-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-16%5D%22) · [API-FOOT-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-20%5D%22) · [MOB-F-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-01%5D%22) · [MOB-F-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-13%5D%22) · [MOB-F-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-27%5D%22)

## 📐 Règles de gestion

- Carte texte : paragraphe éditorial (ex. 'Deux ans après Rome, le Barça retrouve Manchester United en finale…'), localisé selon Accept-Language, avec mention 'Texte éditorial original rédigé pour l'application' si fournie.
- Carte 'Classement à l'époque' : lignes FC Barcelone 96 pts, Real Madrid 92 pts, Valence 71 pts ; ligne du Barça mise en évidence.
- Classement absent (match de coupe/amical) → carte masquée.
- Texte long : repliable après 6 lignes ('Lire la suite').
- Aucune photographie sous droits ; seuls des visuels originaux.

## 🛠️ Tâches

- [ ] Créer widgets/context_tab.dart, context_text_card.dart, standings_card.dart, standing_row.dart.
- [ ] Implémenter l'expansion 'Lire la suite' (AnimatedSize 200 ms).
- [ ] Mapper StandingEntry (team, points, position?) ; mise en évidence via tokens (AppColors.primary).
- [ ] Ajouter les clés ARB (contextTitle, contextStandingsTitle, contextReadMore, pointsAbbrev='{n} pts').
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné le contexte Wembley alors le paragraphe et 3 lignes de classement s'affichent.
- [ ] Étant donné aucun classement alors la carte classement n'existe pas.
- [ ] Étant donné un texte de 10 lignes alors 'Lire la suite' est proposé.
- [ ] Étant donné la ligne du Barça alors elle est visuellement distincte.

## 🧪 Tests à écrire

- [ ] Test widget ContextTab_texte_et_classement
- [ ] Test widget classement_masque_si_absent
- [ ] Test widget lire_la_suite
- [ ] Golden test contexte clair

## 🔗 Dépendances

À réaliser après : `MOB-F-14` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.6
- CDC Flutter §7.5
- CDC Backend §3.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
