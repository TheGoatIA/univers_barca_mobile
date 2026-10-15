> **MOB-J-22** · Écran · Priorité **P1** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Quand les compteurs ne se chargent pas, une carte d'erreur explique « Carte indisponible — Impossible de charger les compteurs de supporters. Vérifie ta connexion. » avec le bouton « Réessayer ».

## ✅ Objectif

Gérer proprement l'erreur sans perdre le contexte (zone, filtre) et sans écran blanc.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `J-11` — Carte — erreur réseau
_Module : Carte communautaire_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-11_carte-erreur-reseau__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-11_carte-erreur-reseau__phone_light.webp?raw=true' width='230' alt='J-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-11_carte-erreur-reseau__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-11_carte-erreur-reseau__phone_dark.webp?raw=true' width='230' alt='J-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-11_carte-erreur-reseau__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-11_carte-erreur-reseau__tablet_light.webp?raw=true' width='330' alt='J-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-11_carte-erreur-reseau__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/J/J-11_carte-erreur-reseau__tablet_dark.webp?raw=true' width='330' alt='J-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « 12 480 culés dans 96 pays » · « Rechercher un pays ou une ville » · « Tous » · « Groupes » · « Watch parties » · « Près de moi » · « Carte indisponible » · « Impossible de charger les compteurs de supporters. Vérifie ta connexion. » · « Réessayer »

**Composants repérés** : `avatar`, `btn`, `chip`, `map`

</details>

**Issues liées sur ce même écran :** [API-COMM-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-09%5D%22) · [MOB-J-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-02%5D%22) · [MOB-J-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-04%5D%22) · [MOB-J-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-05%5D%22) · [MOB-J-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-J-26%5D%22)

## 📐 Règles de gestion

- Message distinct selon la cause : réseau (NetworkFailure), serveur (5xx : « Service temporairement indisponible »), limitation (429 : « Trop de requêtes, réessaie dans un instant »).
- « Réessayer » relance MapRetryPressed ; backoff exponentiel 1 s, 2 s, 4 s pour les relances automatiques (3 max) au retour du réseau.
- La carte et la recherche restent affichées ; seule la feuille est remplacée.
- Si un cache existe, affichage du cache avec bandeau plutôt que l'erreur.

## 🛠️ Tâches

- [ ] Créer widgets/map_error_sheet.dart basé sur AppErrorView avec variantes de message.
- [ ] Mapper Failure -> clé ARB dans core/error/failure_messages.dart.
- [ ] Implémenter le backoff dans le BLoC (Timer annulable).
- [ ] Écouter connectivity_plus pour relancer automatiquement.
- [ ] Journaliser l'erreur dans Crashlytics/Sentry sans donnée personnelle.
- [ ] Ajouter ARB FR/EN/ES.
- [ ] Golden clair/sombre.
- [ ] Tests unitaires du mapping.

## ✔️ Critères d'acceptation

- [ ] Étant donné une coupure réseau, quand la requête échoue sans cache, alors « Carte indisponible » s'affiche.
- [ ] Étant donné un tap sur « Réessayer », quand le réseau est rétabli, alors la zone se charge.
- [ ] Étant donné un 429, quand l'erreur survient, alors le message de limitation est affiché.
- [ ] Étant donné un cache valide, quand l'erreur survient, alors le bandeau hors-ligne remplace la carte d'erreur.

## 🧪 Tests à écrire

- [ ] failure_messages_test : mapping.
- [ ] map_error_sheet_test : bouton Réessayer.
- [ ] bloc_test : backoff 1-2-4 s.
- [ ] golden_map_error.

## ♿ Accessibilité et i18n

- ARB : communityMapUnavailable « Carte indisponible », communityMapUnavailableBody, retry « Réessayer ».

## 🔗 Dépendances

À réaliser après : `MOB-J-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.7.1
- CDC Flutter §5.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
