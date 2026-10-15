> **MOB-K-12** · Écran · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Un appui sur ⋯ ou un appui long sur un message ouvre une feuille avec l'extrait « Photo du dernier visionnage… » et les actions Copier le texte, Enregistrer, Signaler ce message, Masquer cet utilisateur.

## ✅ Objectif

Offrir les actions contextuelles d'un message selon le rôle et l'auteur.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `K-04` — Options et signalement
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-04_options-et-signalement__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-04_options-et-signalement__phone_light.webp?raw=true' width='230' alt='K-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-04_options-et-signalement__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-04_options-et-signalement__phone_dark.webp?raw=true' width='230' alt='K-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-04_options-et-signalement__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-04_options-et-signalement__tablet_light.webp?raw=true' width='330' alt='K-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-04_options-et-signalement__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-04_options-et-signalement__tablet_dark.webp?raw=true' width='330' alt='K-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Groupe » · « Culés Cameroun » · « Yaoundé » · « 721 membres » · « Public » · « Le point de rendez-vous des supporters du Barça au Cameroun. Watch parties, discussions et bon esprit ! » · « Membre » · « Fil » · « Événements » · « Membres » · « Mamadou Diallo » · « Modérateur » · « il y a 12 min » · « Qui est chaud pour le Clásico samedi ? On se retrouve au Relais à 19h30 ! 🔵🔴 » · « Aïcha Ngono » · « il y a 1 h » · « Quelqu’un a vu la compo probable ? Yamal titulaire sans doute. » · « Kevin Mballa » · « il y a 3 h » · « Photo du dernier visionnage au Bastos, quelle ambiance ! » · « Écrire dans le groupe… » · « Photo du dernier visionnage… » · « Copier le texte » · « Enregistrer » · « Signaler ce message » · « Masquer cet utilisateur »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-COMM-26](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-26%5D%22) · [MOB-K-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-05%5D%22) · [MOB-K-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-15%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

## 📐 Règles de gestion

- Actions visibles selon le contexte : Copier le texte (tous), Enregistrer (messages avec image), Signaler ce message (messages des autres), Masquer cet utilisateur (autres), Supprimer (auteur uniquement ou modérateur du groupe).
- « Signaler » ouvre K-05 ; « Masquer cet utilisateur » ouvre une confirmation puis filtre localement.
- Copier : texte dans le presse-papiers + toast « Texte copié » ; Enregistrer : sauvegarde dans la galerie avec permission contextuelle (CDC §6.4).
- Un modérateur de groupe voit en plus « Masquer ce message » (appel modération) — action à confirmer avec l'API.
- Fermeture par swipe, tap extérieur ou bouton retour système.

## 🛠️ Tâches

- [ ] Créer widgets/post_options_sheet.dart avec extrait du message sur 1 ligne (ellipsis).
- [ ] Créer l'enum PostAction et PostActionsResolver (règles par rôle/auteur).
- [ ] Implémenter copy_to_clipboard et toast.
- [ ] Implémenter l'enregistrement d'image (gallery_saver ou image_gallery_saver) avec gestion du refus.
- [ ] Brancher la navigation vers K-05 et la confirmation de masquage.
- [ ] Ajouter le retour haptique léger à l'ouverture.
- [ ] Ajouter ARB et goldens.
- [ ] Tests de PostActionsResolver.

## ✔️ Critères d'acceptation

- [ ] Étant donné un message d'un autre utilisateur, quand le menu s'ouvre, alors Signaler et Masquer cet utilisateur sont présents.
- [ ] Étant donné son propre message, quand le menu s'ouvre, alors Signaler est absent et Supprimer présent.
- [ ] Étant donné un tap sur Copier, quand l'action s'exécute, alors le texte est dans le presse-papiers et un toast s'affiche.
- [ ] Étant donné une permission galerie refusée, quand l'utilisateur enregistre, alors un message l'invite à l'activer dans les réglages.

## 🧪 Tests à écrire

- [ ] post_actions_resolver_test : matrice rôle x auteur.
- [ ] post_options_sheet_test.
- [ ] clipboard_test.
- [ ] golden_post_options_light_dark.

## ♿ Accessibilité et i18n

- ARB : postCopy « Copier le texte », postSave « Enregistrer », postReport « Signaler ce message », postHideUser « Masquer cet utilisateur », postDelete « Supprimer »

## 🔗 Dépendances

À réaliser après : `MOB-K-09` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §11

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
