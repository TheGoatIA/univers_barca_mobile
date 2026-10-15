> **MOB-H-24** · Écran · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Carte 'Barème de référence' (badge Configurable) : but attaquant/milieu +5/+6, but défenseur/gardien +8, passe +3, clean sheet +4, titularisation ≥ 60 min +2, entrée en jeu +1, jaune −1, rouge −3, 2 buts encaissés −1 ; note 'Le capitaine rapporte ses points doublés.'

## ✅ Objectif

Afficher le barème à jour issu de la configuration serveur.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-14` — Barème des points
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-14_bareme-des-points__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-14_bareme-des-points__phone_light.webp?raw=true' width='230' alt='H-14 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-14_bareme-des-points__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-14_bareme-des-points__phone_dark.webp?raw=true' width='230' alt='H-14 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-14_bareme-des-points__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-14_bareme-des-points__tablet_light.webp?raw=true' width='330' alt='H-14 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-14_bareme-des-points__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-14_bareme-des-points__tablet_dark.webp?raw=true' width='330' alt='H-14 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Mon équipe » · « Classement » · « Règles » · « Barème de référence » · « Configurable » · « But (attaquant / milieu) » · « +5 / +6 » · « But (défenseur / gardien) » · « +8 » · « Passe décisive » · « +3 » · « Clean sheet (déf. / gardien) » · « +4 » · « Titularisation ≥ 60 min » · « +2 » · « Entrée en jeu » · « +1 » · « Carton jaune » · « −1 » · « Carton rouge » · « −3 » · « 2 buts encaissés (déf. / G) » · « Le » · « capitaine » · « rapporte ses points doublés. »

**Composants repérés** : `avatar`, `card`

</details>

**Issues liées sur ce même écran :** [API-FANT-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-08%5D%22) · [API-FANT-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-10%5D%22) · [MOB-H-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-04%5D%22) · [MOB-H-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-H-07%5D%22)

## 📐 Règles de gestion

- Valeurs lues dans scoring_rules (GET règles) et non codées en dur : le barème peut évoluer sans redéploiement (CDC Backend §3.12.2).
- Positifs en vert précédés de '+', négatifs en rouge avec le vrai signe moins (−).
- Pastille 'Configurable' indiquant que les valeurs peuvent changer ; date de dernière mise à jour si fournie.
- Valeurs de repli embarquées (celles du CDC) si cache vide et réseau KO.

## 🔄 Comportement et états

- Cache 24 h ; à l'ouverture, rafraîchissement silencieux.

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/presentation/pages/fantasy_rules_view.dart.
- [ ] Créer ScoringRuleRow et CaptainNote.
- [ ] Use case GetScoringRules + endpoint (à confirmer côté API, sinon inclus dans /fantasy/team).
- [ ] Embarquer assets/fantasy/scoring_fallback.json.
- [ ] Clés ARB pour chaque libellé.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné une config serveur différente alors l'écran affiche les nouvelles valeurs.
- [ ] Étant donné un réseau KO et cache vide alors le barème de repli s'affiche.
- [ ] Étant donné le capitaine alors la note x2 est visible.
- [ ] Étant donné un score négatif alors il est rouge avec signe −.

## 🧪 Tests à écrire

- [ ] valeurs depuis la config
- [ ] repli hors-ligne
- [ ] signe − typographique
- [ ] note capitaine

## ♿ Accessibilité et i18n

- Lecture 'plus 5 ou plus 6 points'

## 🔗 Dépendances

À réaliser après : `MOB-H-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §3.12.2
- CDC Global §2.7

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
