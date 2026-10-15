> **MOB-C-19** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

En C-08, la carte « Aujourd'hui dans l'histoire » est remplacée par « Impossible de charger l'histoire du jour — Le reste de l'écran fonctionne normalement. » avec bouton « Réessayer ». Les autres cartes sont intactes.

## ✅ Objectif

Implémenter un composant d'erreur de carte réutilisable pour toutes les cartes du dashboard.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `C-08` — Dashboard — erreur partielle d’une carte
_Module : Accueil dashboard_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-08_dashboard-erreur-partielle-d-une-carte__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-08_dashboard-erreur-partielle-d-une-carte__phone_light.webp?raw=true' width='230' alt='C-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-08_dashboard-erreur-partielle-d-une-carte__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-08_dashboard-erreur-partielle-d-une-carte__phone_dark.webp?raw=true' width='230' alt='C-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-08_dashboard-erreur-partielle-d-une-carte__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-08_dashboard-erreur-partielle-d-une-carte__tablet_light.webp?raw=true' width='330' alt='C-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-08_dashboard-erreur-partielle-d-une-carte__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-08_dashboard-erreur-partielle-d-une-carte__tablet_dark.webp?raw=true' width='330' alt='C-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Salut Boris 👋 » · « Liga · J11 » · « Prochain match » · « Barça » · « Sam. 24 oct. » · « Real Madrid » · « Coup d'envoi dans » · « min » · « À jouer » · « Guess the Player » · « 6 essais · 1 joueur mystère » · « Niveau 2 » · « Quiz du jour » · « 10 questions · Culé » · « Impossible de charger l'histoire du jour » · « Le reste de l'écran fonctionne normalement. » · « Réessayer » · « jours de suite » · « Record personnel : 27 jours » · « Ton XI Fantasy · J11 » · « 4-3-3 · 62 pts » · « Ferme dans 1 j 4 h » · « Modifier »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-19%5D%22) · [MOB-C-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-05%5D%22) · [MOB-C-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-06%5D%22) · [MOB-C-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-16%5D%22) · [MOB-C-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-25%5D%22) · [MOB-C-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-26%5D%22) · [MOB-C-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-27%5D%22)

## 📐 Règles de gestion

- Un échec n'affecte jamais les autres cartes (CDC Flutter §7.2).
- Message rassurant : « Le reste de l'écran fonctionne normalement. ».
- Relance manuelle uniquement, sans boucle.

## 🛠️ Tâches

- [ ] Créer `presentation/widgets/card_error.dart` (`CardErrorView{title, message, onRetry}`), basé sur le style de `AppErrorView` mais compact (carte `surface`, icône, bouton texte).
- [ ] Utiliser un titre spécifique par carte via ARB (`cardErrorHistoryTitle`, `cardErrorMatchTitle`…).
- [ ] Le bouton envoie `DashboardCardRetried(cardKey)` et affiche un indicateur de 24 dp pendant la relance (désactivé 1 s anti-spam).
- [ ] Remonter l'erreur à Sentry avec `traceId` en breadcrumb (sans PII).
- [ ] Ne jamais afficher de message technique brut ; mapper `Failure` → texte localisé.
- [ ] Si cache disponible : afficher le cache et non l'erreur (bandeau discret « Contenu non à jour »).

## ✔️ Critères d'acceptation

- [ ] Étant donné l'échec de la carte histoire, quand les autres chargent, alors seule cette carte affiche l'erreur.
- [ ] Étant donné un tap sur « Réessayer », quand l'appel réussit, alors la carte se met à jour sans toucher aux autres.
- [ ] Étant donné une erreur avec cache présent, alors le contenu en cache est affiché.
- [ ] Étant donné deux échecs consécutifs, alors le message reste affiché sans boucle de relance automatique.

## 🧪 Tests à écrire

- [ ] Test de widget : textes exacts de C-08.
- [ ] Test de bloc : retry d'une seule carte.
- [ ] Test de widget : anti-spam 1 s.
- [ ] Golden clair/sombre.
- [ ] Test unitaire : mapping Failure → message.

## ♿ Accessibilité et i18n

- Le bouton « Réessayer » a une zone ≥ 48 dp et un label sémantique contextualisé (« Réessayer de charger l'histoire du jour »).

## 🔗 Dépendances

À réaliser après : `MOB-C-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.3
- CDC Flutter §7.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
