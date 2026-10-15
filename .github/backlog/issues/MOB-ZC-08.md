> **MOB-ZC-08** · Écran · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Progression déterministe : barres fine/standard/épaisse, anneaux segmentés (garnet, marine, vert), « Génération de wallpaper — En file d'attente · 64 % · cible 15 s », et chargeur de marque « Préparation de ton compte » (anneau grenat autour de l'emblème).

## ✅ Objectif

`BarcaProgressRing`, `BarcaTaskProgress`, `BarcaBrandLoader`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZC-02` — Chargement et progression
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_light.webp?raw=true' width='330' alt='ZC-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_dark.webp?raw=true' width='330' alt='ZC-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_light.webp?raw=true' width='230' alt='ZC-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_dark.webp?raw=true' width='230' alt='ZC-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 08 » · « Chargement » · « Spinner pour les actions courtes, squelette « shimmer » pour les contenus, progression déterministe pour les opérations longues. Chaque écran gère chargement, contenu, vide et erreur. » · « Indicateurs de chargement » · « Spinner · petit » · « 18 · 28 · 44 px » · « Spinner sur fond de marque » · « Dans un bouton » · « Connexion… » · « Envoi… » · « Points (assistant) » · « Barça AI écrit… » · « Squelettes (shimmer) » · « Carte » · « Liste » · « Tableau admin » · « Progression » · « Barres » · « fine · standard · épaisse » · « Anneaux » · « Génération de wallpaper » · « En file d’attente » · « 64 % » · « cible » · « 15 s » · « Chargeur de marque » · « Préparation de ton compte » · « Tirer pour actualiser et chargement paginé » · « Pull-to-refresh » · « Mise à jour… »

**Composants repérés** : `btn`, `card`, `spinner`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-19](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-19%5D%22) · [MOB-FND-38](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-38%5D%22) · [MOB-ZB-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-02%5D%22) · [MOB-ZC-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-06%5D%22) · [MOB-ZC-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-07%5D%22) · [MOB-ZC-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-09%5D%22) · [MOB-ZC-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-12%5D%22) · [MOB-ZC-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-17%5D%22)

## 📐 Règles de gestion

- Anneau : diamètre 24/44/96, stroke 4/6/10, animé 280 ms ; segments multiples avec gap 4°.
- Génération IA : barre + libellé d'état (« En file d'attente », « Génération… ») + pourcentage tabulaire « 64 % » + « cible 15 s » ; message de dépassement au-delà de 15 s (« Ça prend un peu plus de temps… ») sans erreur.
- Chargeur de marque : emblème 64 px centré dans anneau 96 grenat, texte sous l'anneau ; utilisé au bootstrap compte (FND `bootstrap-demarrage`).
- Annulation possible pour tâches longues.

## 🛠️ Tâches

- [ ] Créer `barca_progress_ring.dart` (CustomPainter).
- [ ] Créer `barca_task_progress.dart` (état + pourcentage + durée cible).
- [ ] Créer `barca_brand_loader.dart` réutilisant `BarcaLogo.emblem`.
- [ ] Interpolation `TweenAnimationBuilder` 280 ms.
- [ ] Gérer progression indéterminée si pourcentage inconnu.
- [ ] Tests, goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné 64 %, alors l'anneau couvre 230,4°.
- [ ] Étant donné une tâche dépassant 15 s, alors le message de patience apparaît.
- [ ] Étant donné pourcentage absent, alors l'anneau devient indéterminé.

## 🧪 Tests à écrire

- [ ] Unitaire : angles.
- [ ] Widget : message de patience (fakeAsync 16 s).
- [ ] Widget : indéterminé.
- [ ] Golden : anneaux et chargeur de marque.

## ♿ Accessibilité et i18n

- `Semantics(value: '64 %')`; annonce périodique tous les 25 %.

## 🔗 Dépendances

À réaliser après : `MOB-ZC-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
