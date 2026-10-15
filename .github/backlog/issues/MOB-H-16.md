> **MOB-H-16** · Écran · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Le capitaine (Yamal sur la maquette) est signalé par un badge 'C' jaune et rapporte ses points doublés (règle du barème H-14).

## ✅ Objectif

Permettre de désigner ou changer le capitaine parmi les 11 titulaires.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-06` — Choix du capitaine
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-06_choix-du-capitaine__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-06_choix-du-capitaine__phone_light.webp?raw=true' width='230' alt='H-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-06_choix-du-capitaine__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-06_choix-du-capitaine__phone_dark.webp?raw=true' width='230' alt='H-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-06_choix-du-capitaine__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-06_choix-du-capitaine__tablet_light.webp?raw=true' width='330' alt='H-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-06_choix-du-capitaine__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-06_choix-du-capitaine__tablet_dark.webp?raw=true' width='330' alt='H-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Fermeture des compositions dans » · « 1 j 04 h 12 min » · « J11 » · « ter Stegen » · « Koundé » · « Cubarsí » · « Araújo » · « Balde » · « De Jong » · « Pedri » · « Gavi » · « Yamal » · « Lewandowski » · « Raphinha » · « 11/11 » · « Équipe complète » · « Formation » · « 4-3-3 » · « · Capitaine » · « Capitaine »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-FANT-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-02%5D%22) · [MOB-H-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-06%5D%22)

## 📐 Règles de gestion

- Un seul capitaine ; le choix précédent est automatiquement retiré.
- Le capitaine doit être un titulaire ; si retiré du XI, le capitaine est réinitialisé et la composition repasse non enregistrable.
- Mention claire : 'Points doublés' et rappel du multiplicateur x2.
- Accès : tap sur la ligne '· Capitaine' ou appui sur un joueur placé.

## 🔄 Comportement et états

- Feuille listant les 11 joueurs avec radio ; confirmation immédiate fermant la feuille.
- Animation du badge C (scale 0.8 -> 1, 180 ms).

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/presentation/widgets/captain_sheet.dart.
- [ ] Émettre CaptainSelected(playerId).
- [ ] Réinitialiser le capitaine sur PlayerRemoved.
- [ ] Mettre à jour PlayerSlotWidget (badge).
- [ ] Clés ARB fantasyCaptain, fantasyCaptainDoubled.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné Yamal capitaine quand je choisis Pedri alors Yamal perd le 'C' et Pedri le reçoit.
- [ ] Étant donné le capitaine retiré alors canSave devient faux.
- [ ] Étant donné la feuille alors 11 joueurs sont proposés.
- [ ] Étant donné composition verrouillée alors le choix est désactivé.

## 🧪 Tests à écrire

- [ ] un seul capitaine
- [ ] retrait du capitaine réinitialise
- [ ] feuille liste 11 joueurs
- [ ] badge C animé
- [ ] désactivé en Locked

## ♿ Accessibilité et i18n

- Semantics 'capitaine' sur le joueur

## 🔗 Dépendances

À réaliser après : `MOB-H-10` · `MOB-H-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.6
- CDC Backend §3.12.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
