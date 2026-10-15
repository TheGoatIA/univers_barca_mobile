> **MOB-N-06** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

La bulle (avatar étincelle bordeaux avec liseré doré) est affichée en overlay au niveau du MainShell sur tous les onglets (CDC Flutter §7.10). N-01 montre la bulle de découverte « Pose-moi une question sur le Barça ! 👋 » au-dessus du bouton.

## ✅ Objectif

Rendre l'assistant découvrable sans gêner : bulle persistante et infobulle affichée peu et jamais pendant un jeu.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `N-01` — Bulle flottante — découverte
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-01_bulle-flottante-decouverte__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-01_bulle-flottante-decouverte__phone_light.webp?raw=true' width='230' alt='N-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-01_bulle-flottante-decouverte__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-01_bulle-flottante-decouverte__phone_dark.webp?raw=true' width='230' alt='N-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-01_bulle-flottante-decouverte__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-01_bulle-flottante-decouverte__tablet_light.webp?raw=true' width='330' alt='N-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-01_bulle-flottante-decouverte__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-01_bulle-flottante-decouverte__tablet_dark.webp?raw=true' width='330' alt='N-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Pose-moi une question sur le Barça ! 👋 »

**Composants repérés** : `avatar`, `card`

</details>

**Issues liées sur ce même écran :** [API-IA-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-22%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

## 📐 Règles de gestion

- Bulle visible sur Accueil, Jeux (hors partie en cours), Historique, Communauté, Profil ; masquée dans les écrans de jeu en cours (CDC Global §2.2)
- Infobulle de découverte : affichée au plus 1 fois par installation après le 2e lancement, disparaît après 6 s ou au tap, mémorisée (SharedPreferences)
- Tap -> ouverture du bottom sheet de chat (N-02) avec animation de l'avatar vers le header
- Position : bas-droite, au-dessus de la barre de navigation, marge 16 dp + safe area ; ne recouvre pas les boutons principaux (déplacement automatique au-dessus d'un CTA fixe)
- « Réduire les animations » : pas de pulsation

## 🔄 Comportement et états

- Pulsation douce toutes les 8 s tant que le chat n'a jamais été ouvert
- Badge sans chiffre si une réponse arrive pendant que le sheet est fermé (réponse en streaming conclue en arrière-plan)
- Hors-ligne : la bulle reste, l'ouverture montre N-13

## 🛠️ Tâches

- [ ] Créer `presentation/widgets/assistant_fab.dart` et `discovery_bubble.dart`
- [ ] Intégrer au `MainShell` via `Stack`/`OverlayEntry` (une seule instance)
- [ ] Créer `AssistantFabVisibility` (ValueNotifier) pour masquer pendant les parties (les écrans de jeu l'appellent)
- [ ] Persister `assistant_discovery_seen` dans SharedPreferences
- [ ] Animation d'ouverture (`Hero`/`animations` ContainerTransform)
- [ ] Utiliser les tokens couleur (bordeaux, or) du design system
- [ ] Clés ARB `assistantDiscoveryBubble`, `assistantFabLabel`
- [ ] Tests widget + golden clair/sombre

## ✔️ Critères d'acceptation

- [ ] Étant donné le 2e lancement quand l'accueil s'affiche alors l'infobulle « Pose-moi une question sur le Barça ! 👋 » apparaît une fois
- [ ] Étant donné une partie de Guess the Player en cours alors la bulle est masquée
- [ ] Étant donné le tap sur la bulle alors le chat N-02 s'ouvre
- [ ] Étant donné l'infobulle déjà vue alors elle n'apparaît plus après redémarrage

## 🧪 Tests à écrire

- [ ] assistant_fab_test : visibilité par onglet
- [ ] discovery_bubble_test : une seule fois
- [ ] assistant_fab_test : masquée en jeu
- [ ] golden : fab_light / fab_dark
- [ ] assistant_fab_test : reduce motion

## ♿ Accessibilité et i18n

- Bulle : `Semantics(button:true, label:'Ouvrir l'assistant Barça AI')`, zone 56 dp
- L'infobulle n'est pas annoncée automatiquement si elle disparaît seule

## 🔗 Dépendances

À réaliser après : `MOB-N-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.2, §7.10
- CDC Global §2.2, §2.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
