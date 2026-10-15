> **MOB-I-17** · Écran · Priorité **P1** · Taille **S** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Même accueil que I-05 avec Forme 41 %, Fatigue 82 % et bandeau 'Fatigue élevée — Risque de blessure : prévois du repos cette semaine.'

## ✅ Objectif

Prévenir l'utilisateur et l'orienter vers le repos.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `I-11` — Alerte fatigue élevée
_Module : La Masia Academy_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-11_alerte-fatigue-elevee__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-11_alerte-fatigue-elevee__phone_light.webp?raw=true' width='230' alt='I-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-11_alerte-fatigue-elevee__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-11_alerte-fatigue-elevee__phone_dark.webp?raw=true' width='230' alt='I-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-11_alerte-fatigue-elevee__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-11_alerte-fatigue-elevee__tablet_light.webp?raw=true' width='330' alt='I-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-11_alerte-fatigue-elevee__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-11_alerte-fatigue-elevee__tablet_dark.webp?raw=true' width='330' alt='I-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « La Masia Academy » · « Cadet A · 15 ans » · « Samuel Mbarga » · « Milieu offensif · Pied gauche » · « Global » · « Forme » · « 41% » · « Fatigue » · « 82% » · « Fatigue élevée » · « Risque de blessure : prévois du repos cette semaine. » · « S4 » · « Semaine 4 · décision à prendre » · « Prochain match de l'académie samedi » · « Attributs » · « Technique » · « Physique » · « Intelligence » · « Vitesse » · « Mental » · « Finition » · « Prendre la décision de la semaine »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-FANT-26](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-26%5D%22) · [API-FANT-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-28%5D%22) · [API-FANT-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FANT-30%5D%22) · [MOB-I-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-04%5D%22)

## 📐 Règles de gestion

- Seuil d'alerte : fatigue >= 80 % (valeur de la maquette 82 %) ; confirmé par configuration serveur.
- Jauge de fatigue en rouge ; forme en orange sous 50 %.
- CTA inchangé, avec recommandation Repos dans I-06.
- Bandeau non bloquant, masquable jusqu'au prochain changement de semaine.

## 🔄 Comportement et états

- Animation légère (pulsation 1 fois).

## 🛠️ Tâches

- [ ] Créer lib/features/academy/presentation/widgets/fatigue_alert_banner.dart.
- [ ] Logique isFatigueCritical.
- [ ] Couleurs d'état via tokens.
- [ ] Clés ARB.
- [ ] Golden.

## ✔️ Critères d'acceptation

- [ ] Étant donné fatigue 82 % alors le bandeau s'affiche.
- [ ] Étant donné fatigue 79 % alors aucun bandeau.
- [ ] Étant donné le CTA alors I-06 recommande le repos.
- [ ] Étant donné reduce-motion alors pas de pulsation.

## 🧪 Tests à écrire

- [ ] seuil 80
- [ ] bandeau masquable
- [ ] recommandation repos
- [ ] golden

## ♿ Accessibilité et i18n

- Alerte annoncée (liveRegion)

## 🔗 Dépendances

À réaliser après : `MOB-I-11` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §3.12.3
- CDC Global §2.7

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
