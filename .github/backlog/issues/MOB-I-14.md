> **MOB-I-14** · Écran · Priorité **P1** · Taille **M** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Écran 'Bilan · Semaine 3 — Semaine réussie' avec gain de points de global, évolution des attributs (Technique, Physique, Intelligence, Mental) et conseil de l'assistant ('il a besoin de repos avant le prochain match'), CTA 'Semaine suivante'.

## ✅ Objectif

Restituer les effets de la décision appliquée.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `I-08` — Bilan de la semaine
_Module : La Masia Academy_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-08_bilan-de-la-semaine__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-08_bilan-de-la-semaine__phone_light.webp?raw=true' width='230' alt='I-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-08_bilan-de-la-semaine__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-08_bilan-de-la-semaine__phone_dark.webp?raw=true' width='230' alt='I-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-08_bilan-de-la-semaine__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-08_bilan-de-la-semaine__tablet_light.webp?raw=true' width='330' alt='I-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-08_bilan-de-la-semaine__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-08_bilan-de-la-semaine__tablet_dark.webp?raw=true' width='330' alt='I-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Bilan · Semaine 3 » · « Semaine réussie » · « +3 » · « points de global » · « Évolution des attributs » · « Technique » · « +4 » · « Physique » · « +0 » · « Intelligence » · « +1 » · « Mental » · « −2 » · « Conseil de l'assistant : il a besoin de repos avant le prochain match. » · « Semaine suivante »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-I-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-01%5D%22) · [MOB-I-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-02%5D%22) · [MOB-I-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-04%5D%22) · [MOB-I-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-05%5D%22)

## 📐 Règles de gestion

- Affiché à l'ouverture de la nouvelle semaine tant que le bilan n'est pas acquitté.
- Deltas par attribut signés et colorés ; global = somme tendancielle fournie par le serveur.
- Conseil contextuel basé sur la fatigue (texte fourni par le serveur ou clé i18n).
- 'Semaine suivante' acquitte et revient à l'accueil.

## 🔄 Comportement et états

- Animation des barres de 0 à la valeur (500 ms).

## 🛠️ Tâches

- [ ] Créer lib/features/academy/presentation/pages/weekly_report_page.dart.
- [ ] Widget AttributeDeltaRow.
- [ ] ReportAcknowledged.
- [ ] Endpoint de lecture du bilan (inclus dans GET /academy/player ou dédié, à confirmer).
- [ ] Clés ARB.
- [ ] Golden.

## ✔️ Critères d'acceptation

- [ ] Étant donné un bilan non lu alors il s'affiche à l'ouverture.
- [ ] Étant donné 'Semaine suivante' alors il n'est plus affiché.
- [ ] Étant donné un delta négatif alors il est rouge avec signe.
- [ ] Étant donné reduce-motion alors pas d'animation.

## 🧪 Tests à écrire

- [ ] bilan affiché une fois
- [ ] delta signé
- [ ] acquittement
- [ ] golden

## ♿ Accessibilité et i18n

- Deltas annoncés avec signe

## 🔗 Dépendances

À réaliser après : `MOB-I-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.7
- CDC Backend §3.12.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
