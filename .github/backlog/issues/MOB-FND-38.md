> **MOB-FND-38** · Performance · Priorité **P1** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Photos de joueurs et wallpapers sont chargés via `cached_network_image` (CDC §12), avec placeholders et erreurs cohérents avec le design system.

## ✅ Objectif

Une couche `BarcaNetworkImage` unique avec cache borné.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZC-02` — Chargement et progression
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_light.webp?raw=true' width='330' alt='ZC-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_dark.webp?raw=true' width='330' alt='ZC-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_light.webp?raw=true' width='230' alt='ZC-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_dark.webp?raw=true' width='230' alt='ZC-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 08 » · « Chargement » · « Spinner pour les actions courtes, squelette « shimmer » pour les contenus, progression déterministe pour les opérations longues. Chaque écran gère chargement, contenu, vide et erreur. » · « Indicateurs de chargement » · « Spinner · petit » · « 18 · 28 · 44 px » · « Spinner sur fond de marque » · « Dans un bouton » · « Connexion… » · « Envoi… » · « Points (assistant) » · « Barça AI écrit… » · « Squelettes (shimmer) » · « Carte » · « Liste » · « Tableau admin » · « Progression » · « Barres » · « fine · standard · épaisse » · « Anneaux » · « Génération de wallpaper » · « En file d’attente » · « 64 % » · « cible » · « 15 s » · « Chargeur de marque » · « Préparation de ton compte » · « Tirer pour actualiser et chargement paginé » · « Pull-to-refresh » · « Mise à jour… »

**Composants repérés** : `btn`, `card`, `spinner`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-19](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-19%5D%22)

## 📐 Règles de gestion

- Cache disque 200 Mo max, 30 jours, 500 objets ; mémoire 100 images / 50 Mo (`ImageCache`).
- Placeholder : bloc shimmer (ZC-02) aux dimensions finales pour éviter le saut de mise en page ; fondu 180 ms à l'apparition.
- Erreur : icône `image` sur surface + « Réessayer » au tap ; jamais de message technique.
- `memCacheWidth/Height` = taille d'affichage × devicePixelRatio ; formats WebP.
- Purge du cache au logout uniquement pour les images privées (wallpapers générés).

## 🛠️ Tâches

- [ ] Créer `lib/core/widgets/barca_network_image.dart`.
- [ ] Créer `AppCacheManager` (`CacheManager` configuré).
- [ ] Configurer `PaintingBinding.instance.imageCache` au bootstrap.
- [ ] Écrire `ImageErrorPlaceholder`.
- [ ] Documenter les tailles d'images de l'API.

## ✔️ Critères d'acceptation

- [ ] Étant donné une image chargée alors elle est servie depuis le cache au 2e affichage sans requête.
- [ ] Étant donné une erreur réseau alors le placeholder d'erreur apparaît sans overflow.
- [ ] Étant donné 'reduce motion' alors pas de fondu.

## 🧪 Tests à écrire

- [ ] Test widget : placeholder → image (fake provider).
- [ ] Test widget : erreur.
- [ ] Test unitaire : configuration du cache manager.
- [ ] Golden : placeholder/erreur clair/sombre.

## ♿ Accessibilité et i18n

- Semantics `image` avec label fourni par l'appelant.

## 🔗 Dépendances

À réaliser après : `MOB-FND-36` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §12

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
