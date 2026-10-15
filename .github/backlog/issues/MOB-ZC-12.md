> **MOB-ZC-12** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Chaque écran réseau gère chargement, contenu, vide, erreur. FND fournit `etats-ecran-pattern` et `exceptions-failures-mapping` ; cette issue relie les `Failure` aux composants visuels ZC.

## ✅ Objectif

Widget `BarcaAsyncView<T>` qui rend automatiquement skeleton/contenu/vide/erreur selon l'état.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZC-03` — États vide, erreur et hors-ligne
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__desktop_light.webp?raw=true' width='330' alt='ZC-03 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__desktop_dark.webp?raw=true' width='330' alt='ZC-03 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__mobile_light.webp?raw=true' width='230' alt='ZC-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__mobile_dark.webp?raw=true' width='230' alt='ZC-03 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 09 » · « États d’écran » · « BarcaEmptyState et BarcaErrorState : illustration légère, message contextualisé, action suggérée. Jamais de message technique brut ; distinction entre erreur réseau et erreur serveur. » · « États vides » · « Vide » · « Aucun groupe local ici » · « Pourquoi ne pas en créer un ? » · « Créer un groupe » · « Aucun wallpaper pour l’instant » · « Crée ton premier fond d’écran. » · « Créer un wallpaper » · « Rien de nouveau » · « Tes notifications apparaîtront ici. » · « Régler mes préférences » · « Erreurs et hors-ligne » · « Erreur » · « Pas de connexion » · « Le défi du jour nécessite une connexion. » · « Réessayer » · « Petit souci de notre côté » · « Notre équipe est déjà dessus. » · « Doucement, champion ! » · « Limite atteinte : réessaie dans 00:42. » · « Accès, restrictions et succès » · « Statut » · « Bientôt disponible » · « Ce module sera activé prochainement. » · « Me prévenir » · « Quiz du jour terminé » · « Reviens demain pour un nouveau défi. »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-20](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-20%5D%22) · [ADM-ADS-21](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-21%5D%22) · [MOB-ZC-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-10%5D%22) · [MOB-ZC-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-11%5D%22) · [MOB-ZC-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-13%5D%22) · [MOB-ZC-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-17%5D%22)

#### `ZC-02` — Chargement et progression
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_light.webp?raw=true' width='330' alt='ZC-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_dark.webp?raw=true' width='330' alt='ZC-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_light.webp?raw=true' width='230' alt='ZC-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_dark.webp?raw=true' width='230' alt='ZC-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 08 » · « Chargement » · « Spinner pour les actions courtes, squelette « shimmer » pour les contenus, progression déterministe pour les opérations longues. Chaque écran gère chargement, contenu, vide et erreur. » · « Indicateurs de chargement » · « Spinner · petit » · « 18 · 28 · 44 px » · « Spinner sur fond de marque » · « Dans un bouton » · « Connexion… » · « Envoi… » · « Points (assistant) » · « Barça AI écrit… » · « Squelettes (shimmer) » · « Carte » · « Liste » · « Tableau admin » · « Progression » · « Barres » · « fine · standard · épaisse » · « Anneaux » · « Génération de wallpaper » · « En file d’attente » · « 64 % » · « cible » · « 15 s » · « Chargeur de marque » · « Préparation de ton compte » · « Tirer pour actualiser et chargement paginé » · « Pull-to-refresh » · « Mise à jour… »

**Composants repérés** : `btn`, `card`, `spinner`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-19](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-19%5D%22) · [MOB-FND-38](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-38%5D%22) · [MOB-ZB-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-02%5D%22) · [MOB-ZC-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-06%5D%22) · [MOB-ZC-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-07%5D%22) · [MOB-ZC-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-08%5D%22) · [MOB-ZC-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-09%5D%22) · [MOB-ZC-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-17%5D%22)

## 📐 Règles de gestion

- Mapping : NetworkFailure → `offline` ; ServerFailure (5xx) → `server` ; RateLimitFailure (429) → `rateLimited(retryAfter)` ; Unauthorized → déclenche le flux session (pas d'écran) ; autre → `generic`.
- Liste vide → `BarcaEmptyState` fourni par l'écran ; chargement initial → squelette ; rechargement → contenu conservé + indicateur discret.
- Si cache disponible hors-ligne : contenu affiché + bandeau hors-ligne plutôt qu'erreur plein écran.

## 🛠️ Tâches

- [ ] Créer `lib/core/widgets/barca_async_view.dart`.
- [ ] Créer `failure_presenter.dart` (`FailurePresentation presentFailure(Failure)`).
- [ ] Ajouter `ViewStatus { initial, loading, success, empty, failure }`.
- [ ] Appliquer au feature `players`.
- [ ] Documenter dans CONTRIBUTING (gabarit).
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné un NetworkFailure, alors `BarcaErrorState.offline` s'affiche.
- [ ] Étant donné un RateLimitFailure(42), alors le décompte 00:42 est affiché.
- [ ] Étant donné un cache valide et un NetworkFailure, alors le contenu en cache est affiché avec le bandeau hors-ligne.
- [ ] Étant donné une liste vide, alors l'état vide fourni est rendu.

## 🧪 Tests à écrire

- [ ] Unitaire : presentFailure (6 cas).
- [ ] Widget : 5 statuts.
- [ ] Widget : cache + offline.

## 🔗 Dépendances

À réaliser après : `MOB-ZC-10` · `MOB-ZC-11` · `MOB-ZC-07` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
