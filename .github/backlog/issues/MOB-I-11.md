> **MOB-I-11** · Écran · Priorité **P0** · Taille **L** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Carte dégradée 'Cadet A · 15 ans', Samuel Mbarga, Global 62, barres Forme 78 % (verte) et Fatigue 34 % (jaune), bloc 'Semaine 4 · décision à prendre — Prochain match de l'académie samedi', liste d'attributs et CTA 'Prendre la décision de la semaine'.

## ✅ Objectif

Tableau de bord du joueur, point d'entrée récurrent hebdomadaire.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `I-05` — Accueil du joueur
_Module : La Masia Academy_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-05_accueil-du-joueur__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-05_accueil-du-joueur__phone_light.webp?raw=true' width='230' alt='I-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-05_accueil-du-joueur__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-05_accueil-du-joueur__phone_dark.webp?raw=true' width='230' alt='I-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-05_accueil-du-joueur__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-05_accueil-du-joueur__tablet_light.webp?raw=true' width='330' alt='I-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-05_accueil-du-joueur__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/I/I-05_accueil-du-joueur__tablet_dark.webp?raw=true' width='330' alt='I-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « La Masia Academy » · « Cadet A · 15 ans » · « Samuel Mbarga » · « Milieu offensif · Pied gauche » · « Global » · « Forme » · « 78% » · « Fatigue » · « 34% » · « S4 » · « Semaine 4 · décision à prendre » · « Prochain match de l'académie samedi » · « Attributs » · « Technique » · « Physique » · « Intelligence » · « Vitesse » · « Mental » · « Finition » · « Prendre la décision de la semaine »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-I-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-01%5D%22) · [MOB-I-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-02%5D%22) · [MOB-I-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-04%5D%22) · [MOB-I-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-21%5D%22) · [MOB-I-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-I-22%5D%22)

## 📐 Règles de gestion

- Six attributs avec barres (Technique 64, Physique 58 en bleu, Intelligence 61, Vitesse 66, Mental 59, Finition 52).
- Anneau 'S4' = progression de la semaine ; carte bordée de grenat si décision à prendre.
- Icône historique en haut à droite -> I-10 ; flèche retour.
- Si décision déjà prise : CTA remplacé par 'Décision enregistrée' et date d'application.

## 🔄 Comportement et états

- Chargement squelette ; hors-ligne : dernier état en cache ; pull-to-refresh.

## 🛠️ Tâches

- [ ] Créer lib/features/academy/presentation/pages/academy_home_page.dart.
- [ ] Widgets PlayerHeroCard, VitalBar, WeekCard, AttributesCard.
- [ ] Couleurs de jauge via tokens (vert/jaune/rouge selon seuil).
- [ ] Navigation décision/historique.
- [ ] Clés ARB.
- [ ] Golden.

## ✔️ Critères d'acceptation

- [ ] Étant donné un joueur S4 alors Global 62, Forme 78 %, Fatigue 34 % sont affichés.
- [ ] Étant donné décision à prendre alors le CTA est actif.
- [ ] Étant donné décision prise alors le CTA est remplacé.
- [ ] Étant donné le réseau KO alors le cache s'affiche.

## 🧪 Tests à écrire

- [ ] widget valeurs
- [ ] CTA conditionnel
- [ ] pull-to-refresh
- [ ] golden clair/sombre

## ♿ Accessibilité et i18n

- Barres avec Semantics 'Technique 64 sur 100'

## 🔗 Dépendances

À réaliser après : `MOB-I-04` · `MOB-I-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.6
- CDC Global §2.7

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
