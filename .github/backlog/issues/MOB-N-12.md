> **MOB-N-12** · Fonctionnel · Priorité **P0** · Taille **L** · Phase 1 — MVP

## 🎯 Contexte

N-05 : à « Je m'ennuie, tu as une idée ? », la réponse propose 5 boutons : « Lancer le quiz du jour », « Ouvrir la fiche de Pedri », « Lancer le comparateur GOAT », « Générer un wallpaper », « Voir le prochain match ». Le CDC Flutter §7.10 : boutons d'action déclenchant une navigation go_router.

## ✅ Objectif

Transformer les actions structurées renvoyées par l'API en navigations sûres.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `N-05` — Réponse avec actions
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-05_reponse-avec-actions__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-05_reponse-avec-actions__phone_light.webp?raw=true' width='230' alt='N-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-05_reponse-avec-actions__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-05_reponse-avec-actions__phone_dark.webp?raw=true' width='230' alt='N-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-05_reponse-avec-actions__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-05_reponse-avec-actions__tablet_light.webp?raw=true' width='330' alt='N-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-05_reponse-avec-actions__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-05_reponse-avec-actions__tablet_dark.webp?raw=true' width='330' alt='N-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Je m’ennuie, tu as une idée ? » · « Pourquoi pas relever un défi ? Voici ce que je te propose : » · « Lancer le quiz du jour » · « Ouvrir la fiche de Pedri » · « Lancer le comparateur GOAT » · « Générer un wallpaper » · « Voir le prochain match » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-IA-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-02%5D%22) · [API-IA-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-09%5D%22) · [API-IA-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-14%5D%22) · [API-IA-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-15%5D%22) · [API-IA-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-17%5D%22) · [MOB-N-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-01%5D%22) · [MOB-N-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-24%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-30%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

## 📐 Règles de gestion

- Whitelist stricte (CDC Backend §5.3 prompt injection) : open_daily_quiz -> `/quiz/daily`, open_player{playerId} -> `/players/:id`, open_goat_comparator{playerAId?,playerBId?} -> `/goat/comparator`, generate_wallpaper -> `/wallpapers/new`, show_next_match -> `/calendar`, open_historic_match{matchId} -> `/history/match/:id`
- Aucune URL externe ni schéma arbitraire n'est jamais ouvert depuis une action
- Max 5 boutons par réponse ; le libellé vient de `action.label` (localisé serveur) avec repli ARB par type
- Action dont la route cible est désactivée (feature flag, module Phase 2/3 non livré) : bouton masqué
- Tap : ferme le sheet puis navigue ; analytics `assistant_action_tapped`

## 🔄 Comportement et états

- Le bouton déjà utilisé reste actif (idempotent)
- Paramètre invalide (id non conforme) : bouton masqué
- Hors-ligne : navigation autorisée si l'écran cible a un cache, sinon snackbar

## 🛠️ Tâches

- [ ] Créer `core/routing/assistant_action_router.dart` (`Either<Failure, Uri> resolve(AssistantAction)`)
- [ ] Créer `widgets/action_buttons.dart` (Wrap de `AppButton.secondary`)
- [ ] Valider les params avec `ObjectIdValidator`
- [ ] Brancher sur `GoRouter.go/push` en fermant le sheet (`Navigator.pop`)
- [ ] Table de disponibilité des modules (`FeatureAvailability`)
- [ ] Clés ARB par type (`assistantActionQuiz`, `assistantActionPlayer`, `assistantActionGoat`, `assistantActionWallpaper`, `assistantActionNextMatch`)
- [ ] Tests unitaires du routeur
- [ ] Golden N-05

## ✔️ Critères d'acceptation

- [ ] Étant donné une action open_player avec playerId valide alors le tap ouvre `/players/<id>` et ferme le sheet
- [ ] Étant donné une action de type inconnu alors aucun bouton n'est rendu
- [ ] Étant donné playerId = "../admin" alors le bouton est masqué
- [ ] Étant donné le module wallpapers désactivé alors « Générer un wallpaper » n'apparaît pas
- [ ] Étant donné 7 actions reçues alors 5 boutons sont affichés

## 🧪 Tests à écrire

- [ ] action_router_test : 6 types
- [ ] action_router_test : params invalides
- [ ] action_router_test : type inconnu
- [ ] action_buttons_test : max 5
- [ ] action_availability_test
- [ ] golden : actions_light / dark

## ♿ Accessibilité et i18n

- Boutons avec rôle « bouton » et libellé complet ; ordre de focus logique

## 🔗 Dépendances

À réaliser après : `MOB-N-09` · `MOB-N-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.10
- CDC Global §2.2
- CDC Backend §5.3, §11.5 (étape 7)

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
