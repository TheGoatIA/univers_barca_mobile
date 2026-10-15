> **MOB-K-16** · Écran · Priorité **P0** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Dans le fil, un message masqué par la modération n'affiche plus ni auteur ni contenu : « Utilisateur — il y a 3 h — Ce message a été masqué par la modération. ».

## ✅ Objectif

Rendre l'état masqué sans révéler le contenu, et empêcher toute action sur ce message.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `K-07` — Message masqué par la modération
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-07_message-masque-par-la-moderation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-07_message-masque-par-la-moderation__phone_light.webp?raw=true' width='230' alt='K-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-07_message-masque-par-la-moderation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-07_message-masque-par-la-moderation__phone_dark.webp?raw=true' width='230' alt='K-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-07_message-masque-par-la-moderation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-07_message-masque-par-la-moderation__tablet_light.webp?raw=true' width='330' alt='K-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-07_message-masque-par-la-moderation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-07_message-masque-par-la-moderation__tablet_dark.webp?raw=true' width='330' alt='K-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Culés Cameroun » · « Yaoundé » · « 721 membres » · « Public » · « Le point de rendez-vous des supporters du Barça au Cameroun. Watch parties, discussions et bon esprit ! » · « Membre » · « Fil » · « Événements » · « Membres » · « Mamadou Diallo » · « Modérateur » · « il y a 12 min » · « Qui est chaud pour le Clásico samedi ? On se retrouve au Relais à 19h30 ! 🔵🔴 » · « Aïcha Ngono » · « il y a 1 h » · « Quelqu’un a vu la compo probable ? Yamal titulaire sans doute. » · « Utilisateur » · « il y a 3 h » · « Ce message a été masqué par la modération. » · « Écrire dans le groupe… »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-COMM-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-22%5D%22) · [API-MODER-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-17%5D%22) · [API-MODER-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-32%5D%22) · [MOB-K-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-03%5D%22) · [MOB-K-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-07%5D%22) · [MOB-K-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-27%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

## 📐 Règles de gestion

- Le contenu masqué n'est jamais présent dans le payload ; le client affiche l'avatar générique et le nom « Utilisateur ».
- Aucun bouton d'options, ni copie, ni signalement sur un message masqué.
- Style atténué (texte secondaire, italique) avec icône œil barré.
- Le masquage est visible par tous les membres, y compris l'auteur, qui reçoit en plus une notification (groupe O).
- Si un message passe de visible à hidden pendant que l'écran est ouvert (polling), il est remplacé avec une transition fade 200 ms.

## 🛠️ Tâches

- [ ] Créer widgets/hidden_post_tile.dart.
- [ ] Adapter PostTile pour sélectionner le gabarit selon status.
- [ ] Gérer la transition AnimatedSwitcher.
- [ ] Désactiver le menu d'options pour hidden.
- [ ] Exclure le message des actions de copie.
- [ ] Ajouter ARB et Semantics (« Message masqué par la modération »).
- [ ] Goldens.
- [ ] Tests widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné un message hidden, quand le fil s'affiche, alors seul « Ce message a été masqué par la modération. » est visible.
- [ ] Étant donné ce gabarit, quand l'utilisateur appuie longuement, alors aucun menu ne s'ouvre.
- [ ] Étant donné un polling qui passe un message en hidden, quand il est reçu, alors le message est remplacé en fondu.
- [ ] Étant donné le payload, quand on l'inspecte, alors aucun texte d'origine n'est présent.

## 🧪 Tests à écrire

- [ ] hidden_post_tile_test.
- [ ] post_tile_selection_test.
- [ ] hidden_transition_test.
- [ ] golden_hidden_post_light_dark.

## ♿ Accessibilité et i18n

- ARB : postHiddenByModeration « Ce message a été masqué par la modération. », postAuthorUnknown « Utilisateur »

## 🔗 Dépendances

À réaliser après : `MOB-K-09` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §11
- CDC Backend §4.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
