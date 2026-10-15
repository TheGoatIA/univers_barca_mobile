> **MOB-ZE-06** · Écran · Priorité **P2** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Dans la chorégraphie d'accueil, le compte à rebours pulse de 700 à 1200 ms (barre hachurée jaune sur la planche = animation répétable).

## ✅ Objectif

`PulseEffect` réutilisable appliqué au compte à rebours.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZE-02` — Chorégraphie des écrans clés
_Module : Animations et micro-interactions_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__desktop_light.webp?raw=true' width='330' alt='ZE-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__desktop_dark.webp?raw=true' width='330' alt='ZE-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__mobile_light.webp?raw=true' width='230' alt='ZE-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZE/ZE-02_choregraphie-des-ecrans-cles__mobile_dark.webp?raw=true' width='230' alt='ZE-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Mouvement · 02 » · « Chorégraphies d’écran » · « Au-delà des composants, chaque écran clé a une séquence orchestrée : qui entre, quand, comment. Les chronologies ci-dessous sont les spécifications transmises au développement Flutter (AnimationController + Interval). » · « Univers Barça · Design System v1.1 » · « Mouvement & ergonomie » · « iOS · Android · Tablette » · « Chronologies » · « Accueil · première ouverture » · « 1900 ms » · « En-tête » · « 0–400 » · « Carte prochain match » · « 60–700 » · « Compte à rebours (pulsation) » · « 700–1200 » · « Cartes jeux » · « 180–700 » · « Histoire du jour » · « 260–700 » · « Streak + flamme » · « 340–900 » · « Fantasy » · « 420–700 » · « Bulle IA : apparition + respiration » · « 900–1900 » · « Victoire à Guess the Player » · « 2600 ms » · « Dernière rangée : retournement des cellules » · « 0–500 » · « Flash vert + vibration »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-32](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-32%5D%22) · [MOB-FND-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-27%5D%22) · [MOB-ZE-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-01%5D%22) · [MOB-ZE-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-03%5D%22) · [MOB-ZE-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-04%5D%22) · [MOB-ZE-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-05%5D%22) · [MOB-ZE-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-07%5D%22) · [MOB-ZE-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-08%5D%22) · [MOB-ZE-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-09%5D%22) · [MOB-ZE-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-10%5D%22) · [MOB-ZE-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-17%5D%22) · [MOB-ZE-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZE-18%5D%22)

## 📐 Règles de gestion

- Pulsation : échelle 1 → 1,04 → 1 sur 500 ms, 1 fois à l'entrée puis toutes les 30 s si < 1 h avant le match.
- Seul transform animé ; pas de reconstruction du texte.
- Mouvement réduit : aucune pulsation.

## 🛠️ Tâches

- [ ] Créer `lib/core/motion/pulse_effect.dart`.
- [ ] Appliquer au widget du compte à rebours de l'accueil.
- [ ] Programmer l'impulsion périodique avec `Timer`.
- [ ] Annuler en `dispose` et en arrière-plan.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné < 1 h avant le match, alors une pulsation est émise toutes les 30 s.
- [ ] Étant donné l'app en arrière-plan, alors aucun timer ne tourne.
- [ ] Étant donné mouvement réduit, alors aucune pulsation.

## 🧪 Tests à écrire

- [ ] Widget : échelle max 1,04.
- [ ] Widget : périodicité (fakeAsync).
- [ ] Widget : annulation dispose.

## 🔗 Dépendances

À réaliser après : `MOB-ZE-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter accueil

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
