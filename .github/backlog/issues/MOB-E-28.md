> **MOB-E-28** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

E-15 « Défie tes amis » : « Crée ta ligue privée : un classement hebdomadaire rien qu'entre vous. », code d'invitation, « Copier le code », « Lien », « Partager l'invitation ».

## ✅ Objectif

Implémenter la création de ligue et le partage du code/lien.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-15` — Inviter des amis
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-15_inviter-des-amis__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-15_inviter-des-amis__phone_light.webp?raw=true' width='230' alt='E-15 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-15_inviter-des-amis__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-15_inviter-des-amis__phone_dark.webp?raw=true' width='230' alt='E-15 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-15_inviter-des-amis__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-15_inviter-des-amis__tablet_light.webp?raw=true' width='330' alt='E-15 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-15_inviter-des-amis__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-15_inviter-des-amis__tablet_dark.webp?raw=true' width='330' alt='E-15 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Inviter » · « Défie tes amis » · « Crée ta ligue privée : un classement hebdomadaire rien qu’entre vous. » · « Ton code d’invitation » · « Copier le code » · « Lien » · « Partager l’invitation »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-JEUX-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-23%5D%22) · [API-JEUX-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-24%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Code au format `BARCA-XXXX` (4 caractères alphanumériques majuscules sans ambiguïté I/O/0/1), généré par le serveur.
- Lien : `https://…/league/join?code=BARCA-4X7Q` (ouvre l'app via deep link ou une page de repli).
- Partage via la feuille système (`share_plus`) avec texte localisé.

## 🛠️ Tâches

- [ ] Créer `quiz_invite_page.dart` avec `LeagueNameField` (3 à 30 caractères) et affichage du code.
- [ ] Appeler `CreateLeague(name)` → `LeagueModel`.
- [ ] Boutons : `Clipboard.setData` code, copier le lien, `Share.share`.
- [ ] Gérer les erreurs (nom invalide, trop de ligues : limite à confirmer).
- [ ] Toast « Code copié ».
- [ ] Analytics `league_created`, `league_invite_shared`.
- [ ] Golden test E-15.
- [ ] Tests widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné un nom valide, quand « Créer » est touché, alors un code `BARCA-XXXX` s'affiche.
- [ ] Étant donné « Copier le code », quand il est touché, alors le presse-papiers contient le code.
- [ ] Étant donné « Partager l'invitation », quand il est touché, alors la feuille système s'ouvre avec le lien.
- [ ] Étant donné un nom de 2 caractères, quand on valide, alors une erreur de validation s'affiche.

## 🧪 Tests à écrire

- [ ] Widget test : validation du nom.
- [ ] Widget test : copie du code.
- [ ] Test : format de code.
- [ ] Golden test : E-15.
- [ ] Widget test : partage.

## ♿ Accessibilité et i18n

- Clés ARB : `challengeFriends`, `leagueExplain`, `inviteCode`, `copyCode`, `link`, `shareInvite`, `leagueNameHint`.

## 🔗 Dépendances

À réaliser après : `MOB-E-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.4
- CDC Flutter §6.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
