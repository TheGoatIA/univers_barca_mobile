> **MOB-P-14** · Écran · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

État d'erreur du champ Pseudo (xX_haine_Xx) : 'Ce pseudo n'est pas autorisé par la charte de la communauté.' et bouton Enregistrer désactivé.

## ✅ Objectif

Gérer erreurs locales et serveur du pseudo.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `P-08` — Pseudo invalide
_Module : Culé Passport_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-08_pseudo-invalide__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-08_pseudo-invalide__phone_light.webp?raw=true' width='230' alt='P-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-08_pseudo-invalide__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-08_pseudo-invalide__phone_dark.webp?raw=true' width='230' alt='P-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-08_pseudo-invalide__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-08_pseudo-invalide__tablet_light.webp?raw=true' width='330' alt='P-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-08_pseudo-invalide__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-08_pseudo-invalide__tablet_dark.webp?raw=true' width='330' alt='P-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Modifier le profil » · « Enregistrer » · « Pseudo » · « xX_haine_Xx » · « Ce pseudo n’est pas autorisé par la charte de la communauté. » · « Pays » · « Cameroun »

**Composants repérés** : `avatar`, `btn`, `input`

</details>

**Issues liées sur ce même écran :** [MOB-P-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-21%5D%22)

## 📐 Règles de gestion

- Local : longueur 3-20 et caractères autorisés (lettres, chiffres, _ et .).
- Serveur : 422 avec code charte -> message de P-08 ; 409 -> 'Ce pseudo est déjà pris'.
- Contrôle de disponibilité différé 400 ms après la saisie (si endpoint) sans révéler les mots interdits.
- Le filtre de charte est côté serveur (liste de modération) : le client n'embarque aucune liste.

## 🔄 Comportement et états

- Bordure rouge, message sous le champ.

## 🛠️ Tâches

- [ ] Ajouter NicknameValidator dans le formulaire.
- [ ] Mapper les erreurs serveur.
- [ ] Debounce.
- [ ] Messages ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné 'xX_haine_Xx' refusé alors le message de charte s'affiche.
- [ ] Étant donné un pseudo pris alors message 409.
- [ ] Étant donné 2 caractères alors erreur locale.
- [ ] Étant donné correction alors l'erreur disparaît.

## 🧪 Tests à écrire

- [ ] 422 charte
- [ ] 409 pris
- [ ] validation locale
- [ ] debounce

## ♿ Accessibilité et i18n

- Erreur annoncée par lecteur d'écran

## 🔗 Dépendances

À réaliser après : `MOB-P-13` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §Modération
- CDC Flutter §7.12

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
