> **MOB-M-08** · Écran · Priorité **P0** · Taille **M** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Quand la pré-vérification rejette le prompt (ex. « Yamal avec le logo officiel du club… », 36/140), M-03 reste sur le formulaire et affiche une carte d'erreur « Demande refusée — Cette demande ne peut pas être traitée : reproduction de marque protégée. Reformule sans logo officiel, écusson ni contenu protégé. ».

## ✅ Objectif

Expliquer clairement le refus, conserver la saisie, ne pas décompter le quota, et guider vers une reformulation.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `M-03` — Prompt refusé par la modération
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-03_prompt-refuse-par-la-moderation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-03_prompt-refuse-par-la-moderation__phone_light.webp?raw=true' width='230' alt='M-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-03_prompt-refuse-par-la-moderation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-03_prompt-refuse-par-la-moderation__phone_dark.webp?raw=true' width='230' alt='M-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-03_prompt-refuse-par-la-moderation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-03_prompt-refuse-par-la-moderation__tablet_light.webp?raw=true' width='330' alt='M-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-03_prompt-refuse-par-la-moderation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-03_prompt-refuse-par-la-moderation__tablet_dark.webp?raw=true' width='330' alt='M-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Wallpapers IA » · « 1/3 » · « 3 générations gratuites par jour · » · « 2 restantes » · « 1. Joueur ou thème » · « Yamal » · « Pedri » · « Raphinha » · « Lewandowski » · « Autre » · « 2. Style visuel » · « Illustration » · « Néon » · « Aquarelle » · « Rétro » · « Minimal » · « 3. Occasion » · « Jour de match » · « Anniversaire » · « Trophée » · « Libre » · « Précision (optionnel) » · « 36 / 140 » · « Yamal avec le logo officiel du club… » · « Cette demande ne peut pas être traitée : reproduction de marque protégée. » · « Demande refusée » · « Reformule sans logo officiel, écusson ni contenu protégé. »

**Composants repérés** : `card`, `chip`

</details>

**Issues liées sur ce même écran :** [MOB-M-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-04%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

## 📐 Règles de gestion

- Le refus provient du filtrage CDC Global §11.2 : termes interdits, contenu haineux/violent/sexuel, marques et écussons protégés (CDC §10.1)
- Le message affiché vient du code de raison renvoyé par l'API (`details.reason` : `protected_brand`, `hate`, `sexual`, `violence`, `other`) traduit via ARB ; raison inconnue -> libellé générique
- Le quota n'est pas décompté (pré-vérification gratuite) : le bandeau reste « 2 restantes »
- Le champ Précision est surligné en rouge (token `error`) et reçoit le focus

## 🔄 Comportement et états

- Carte d'erreur avec icône bouclier, titre « Demande refusée » et conseil ; disparaît dès que l'utilisateur modifie le champ
- Après 3 refus consécutifs dans la session, afficher un lien « Voir la charte de la communauté »
- Hors ligne : pas de carte (l'erreur est réseau, pas modération)

## 🛠️ Tâches

- [ ] Créer `widgets/prompt_rejected_card.dart` avec `PromptRejectionReason` -> message ARB
- [ ] Étendre `WallpaperFormState.rejected` avec `reason` et `attempts`
- [ ] Mettre le focus sur `details_field` et appliquer le style d'erreur
- [ ] Ne pas effacer le brouillon Drift
- [ ] Lien charte -> route `/settings/about/charter` (écran Q-17)
- [ ] Clés ARB pour les 5 raisons
- [ ] Tests widget + golden
- [ ] Événement `wallpaper_prompt_rejected` (raison, jamais le texte)

## ✔️ Critères d'acceptation

- [ ] Étant donné un 422 reason=protected_brand quand M-03 s'affiche alors le message « reproduction de marque protégée » est visible
- [ ] Étant donné un refus quand l'utilisateur modifie la précision alors la carte disparaît
- [ ] Étant donné un refus alors le compteur de quota est inchangé
- [ ] Étant donné 3 refus alors le lien vers la charte apparaît

## 🧪 Tests à écrire

- [ ] prompt_rejected_card_test : 5 raisons + inconnue
- [ ] form_cubit_test : attempts incrémenté
- [ ] golden : rejected_light / rejected_dark
- [ ] form_page_test : focus sur le champ en erreur

## ♿ Accessibilité et i18n

- Carte annoncée en `liveRegion` (assertive)
- Message d'erreur non basé sur la seule couleur (icône + texte)

## 🔗 Dépendances

À réaliser après : `MOB-M-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §10.1, §11.1, §11.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
