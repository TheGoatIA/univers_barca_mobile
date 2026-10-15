> **MOB-P-15** · Écran · Priorité **P1** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Écran 'Avatar' avec trois onglets (Joueurs, Initiales, Couleurs), grille d'avatars illustrés, mention 'Avatars illustrés originaux · aucune photo sous droits.' et bouton 'Utiliser cet avatar'.

## ✅ Objectif

Choisir un avatar parmi des illustrations originales.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `P-09` — Choix de l’avatar
_Module : Culé Passport_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-09_choix-de-l-avatar__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-09_choix-de-l-avatar__phone_light.webp?raw=true' width='230' alt='P-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-09_choix-de-l-avatar__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-09_choix-de-l-avatar__phone_dark.webp?raw=true' width='230' alt='P-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-09_choix-de-l-avatar__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-09_choix-de-l-avatar__tablet_light.webp?raw=true' width='330' alt='P-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-09_choix-de-l-avatar__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-09_choix-de-l-avatar__tablet_dark.webp?raw=true' width='330' alt='P-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Avatar » · « Joueurs » · « Initiales » · « Couleurs » · « Avatars illustrés originaux · aucune photo sous droits. » · « Utiliser cet avatar »

**Composants repérés** : `btn`, `card`

</details>

## 📐 Règles de gestion

- Valeur stockée dans avatarKey (ex. 'player_yamal', 'initials_blue', 'color_garnet').
- Initiales : générées depuis le pseudo (BT pour Boris_Culé) sur fond de couleur au choix.
- Aucune photo de joueur réelle (droits) : illustrations originales uniquement.
- Pas d'upload de photo personnelle.

## 🔄 Comportement et états

- Sélection avec anneau ; bouton actif après sélection.

## 🛠️ Tâches

- [ ] Créer lib/features/profile_passport/presentation/pages/avatar_picker_screen.dart.
- [ ] Catalogue assets/avatars/.
- [ ] Widget AvatarWidget central.
- [ ] Génération des initiales.
- [ ] Retour de la valeur avatarKey.
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné l'onglet Initiales alors 'BT' est proposé.
- [ ] Étant donné un avatar choisi alors avatarKey est renvoyé.
- [ ] Étant donné aucune sélection alors le bouton est désactivé.
- [ ] Étant donné un avatarKey inconnu alors repli initiales.

## 🧪 Tests à écrire

- [ ] initiales
- [ ] avatarKey
- [ ] repli inconnu
- [ ] golden

## ♿ Accessibilité et i18n

- Alt text pour chaque avatar

## 🔗 Dépendances

À réaliser après : `MOB-P-13` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.12
- CDC Global §2.11

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
