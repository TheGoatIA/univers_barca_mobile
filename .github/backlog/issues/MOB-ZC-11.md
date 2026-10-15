> **MOB-ZC-11** · Écran · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

États d'erreur de la planche : « Pas de connexion — Le défi du jour nécessite une connexion. [Réessayer] », « Petit souci de notre côté — Notre équipe est déjà dessus. », « Doucement, champion ! — Limite atteinte : réessaie dans 00:42. ». Jamais de message technique brut ; distinction réseau/serveur (CDC Flutter §9.5).

## ✅ Objectif

`BarcaErrorState` avec 4 types et décompte de réessai.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZC-03` — États vide, erreur et hors-ligne
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__desktop_light.webp?raw=true' width='330' alt='ZC-03 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__desktop_dark.webp?raw=true' width='330' alt='ZC-03 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__mobile_light.webp?raw=true' width='230' alt='ZC-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__mobile_dark.webp?raw=true' width='230' alt='ZC-03 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 09 » · « États d’écran » · « BarcaEmptyState et BarcaErrorState : illustration légère, message contextualisé, action suggérée. Jamais de message technique brut ; distinction entre erreur réseau et erreur serveur. » · « États vides » · « Vide » · « Aucun groupe local ici » · « Pourquoi ne pas en créer un ? » · « Créer un groupe » · « Aucun wallpaper pour l’instant » · « Crée ton premier fond d’écran. » · « Créer un wallpaper » · « Rien de nouveau » · « Tes notifications apparaîtront ici. » · « Régler mes préférences » · « Erreurs et hors-ligne » · « Erreur » · « Pas de connexion » · « Le défi du jour nécessite une connexion. » · « Réessayer » · « Petit souci de notre côté » · « Notre équipe est déjà dessus. » · « Doucement, champion ! » · « Limite atteinte : réessaie dans 00:42. » · « Accès, restrictions et succès » · « Statut » · « Bientôt disponible » · « Ce module sera activé prochainement. » · « Me prévenir » · « Quiz du jour terminé » · « Reviens demain pour un nouveau défi. »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-20](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-20%5D%22) · [ADM-ADS-21](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-21%5D%22) · [MOB-ZC-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-10%5D%22) · [MOB-ZC-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-12%5D%22) · [MOB-ZC-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-13%5D%22) · [MOB-ZC-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-17%5D%22)

## 📐 Règles de gestion

- Types : `offline` (icône wifi-off), `server` (icône nuage/outil), `rateLimited` (chrono), `generic`.
- Rate limit (HTTP 429) : décompte `Retry-After` en mm:ss (« 00:42 »), bouton « Réessayer » désactivé jusqu'à 00:00.
- Bouton « Réessayer » (primaire) appelle `onRetry` ; un second bouton optionnel « Signaler » masqué par défaut.
- Affiche le `traceId` (copiable, petit texte) uniquement en flavor dev/staging.

## 🛠️ Tâches

- [ ] Créer `barca_error_state.dart` + `BarcaErrorKind`.
- [ ] Créer `RetryCountdown` (Ticker 1 s).
- [ ] Illustrations SVG par type.
- [ ] Déprécier `AppErrorView`.
- [ ] ARB FR/EN/ES.
- [ ] Tests, goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné `offline`, alors « Pas de connexion » et un bouton « Réessayer » s'affichent.
- [ ] Étant donné `rateLimited(42 s)`, alors « 00:42 » décroît chaque seconde et le bouton est désactivé jusqu'à 0.
- [ ] Étant donné prod, alors aucun traceId n'est affiché.
- [ ] Étant donné une exception brute, alors aucun texte technique n'apparaît.

## 🧪 Tests à écrire

- [ ] Widget : 4 types.
- [ ] Widget : décompte (fakeAsync).
- [ ] Widget : traceId selon flavor.
- [ ] Golden : types clair/sombre.

## ♿ Accessibilité et i18n

- `liveRegion` à l'apparition ; décompte annoncé toutes les 10 s seulement.

## 📚 Références

- CDC Flutter §9.5
- CDC Backend rate limiting

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
