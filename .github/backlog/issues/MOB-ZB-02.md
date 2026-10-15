> **MOB-ZB-02** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

La planche présente six états du bouton primaire : Repos, Pressé (plus foncé), Focus clavier (anneau marine), Désactivé (opacité réduite), Chargement (spinner + « Envoi… ») et Succès (fond vert, coche + « Envoyé »).

## ✅ Objectif

Machine d'états interne du bouton avec transitions animées de 100 ms et prévention du double-tap.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZB-01` — Boutons — variantes, tailles et formes
_Module : Composants de base_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_light.webp?raw=true' width='330' alt='ZB-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__desktop_dark.webp?raw=true' width='330' alt='ZB-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_light.webp?raw=true' width='230' alt='ZB-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZB/ZB-01_boutons-variantes-tailles-et-formes__mobile_dark.webp?raw=true' width='230' alt='ZB-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 01 » · « Boutons » · « Hauteurs 28 / 36 / 44 / 52 / 56 px, rayon 12 px. Toute zone interactive respecte une cible tactile d’au moins 44 × 44 points (la zone invisible est étendue pour les boutons XS et SM). » · « Variantes » · « Primaire » · « Valider » · « BarcaButton.primary » · « Secondaire (contour) » · « BarcaButton.secondary » · « Tonal » · « BarcaButton.tonal » · « Fantôme » · « BarcaButton.ghost » · « Texte » · « BarcaButton.text » · « Navy » · « BarcaButton.navy » · « Or » · « BarcaButton.gold » · « Danger » · « BarcaButton.danger » · « Tailles » · « Hauteur et typographie par taille — de XS (28 px) à Large (56 px). » · « Échelle » · « XS · 28 px » · « Continuer » · « SM · 36 px » · « MD · 44 px » · « Défaut · 52 px » · « LG · 56 px »

**Composants repérés** : `btn`, `spinner`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-06](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-06%5D%22) · [ADM-ADS-36](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-36%5D%22) · [ADM-ADS-37](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-37%5D%22) · [MOB-ZB-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-01%5D%22) · [MOB-ZB-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-03%5D%22) · [MOB-ZB-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZB-18%5D%22) · [MOB-ZD-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-12%5D%22)

#### `ZC-02` — Chargement et progression
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_light.webp?raw=true' width='330' alt='ZC-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__desktop_dark.webp?raw=true' width='330' alt='ZC-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_light.webp?raw=true' width='230' alt='ZC-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-02_chargement-et-progression__mobile_dark.webp?raw=true' width='230' alt='ZC-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 08 » · « Chargement » · « Spinner pour les actions courtes, squelette « shimmer » pour les contenus, progression déterministe pour les opérations longues. Chaque écran gère chargement, contenu, vide et erreur. » · « Indicateurs de chargement » · « Spinner · petit » · « 18 · 28 · 44 px » · « Spinner sur fond de marque » · « Dans un bouton » · « Connexion… » · « Envoi… » · « Points (assistant) » · « Barça AI écrit… » · « Squelettes (shimmer) » · « Carte » · « Liste » · « Tableau admin » · « Progression » · « Barres » · « fine · standard · épaisse » · « Anneaux » · « Génération de wallpaper » · « En file d’attente » · « 64 % » · « cible » · « 15 s » · « Chargeur de marque » · « Préparation de ton compte » · « Tirer pour actualiser et chargement paginé » · « Pull-to-refresh » · « Mise à jour… »

**Composants repérés** : `btn`, `card`, `spinner`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-19](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-19%5D%22) · [MOB-FND-38](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-38%5D%22) · [MOB-ZC-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-06%5D%22) · [MOB-ZC-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-07%5D%22) · [MOB-ZC-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-08%5D%22) · [MOB-ZC-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-09%5D%22) · [MOB-ZC-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-12%5D%22) · [MOB-ZC-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-17%5D%22)

## 📐 Règles de gestion

- Pressé : fond assombri de 12 % + échelle 0,98, retour 100 ms (durée « Instantané », `Curves.easeOut`).
- Focus clavier : anneau externe 3 px couleur secondary, décalage 2 px (cf. ZD-05), visible uniquement en navigation clavier/switch (FocusHighlightMode.traditional).
- Désactivé : fond et texte à 38 % d'opacité, aucun feedback, `Semantics(enabled: false)`.
- Chargement : spinner 16 px (stroke 2) à gauche du libellé de chargement (ex. « Connexion… », « Envoi… »), largeur conservée (pas de saut de mise en page), `onPressed` ignoré.
- Succès : fond success, icône `check` + libellé (« Envoyé ») pendant 1 500 ms puis retour au repos ; haptique léger.
- Haptique `HapticFeedback.selectionClick` à l'appui sur variantes primaire/danger.

## 🛠️ Tâches

- [ ] Ajouter `BarcaButtonState { idle, loading, success }` et paramètres `isLoading`, `loadingLabel`, `successLabel`, `enabled`.
- [ ] Animer fond/échelle/contenu avec `AnimatedContainer`/`AnimatedSwitcher` (durée `AppMotion.instant` 100 ms ; bascule contenu 180 ms).
- [ ] Mesurer la largeur max des libellés (repos/chargement/succès) pour figer la largeur (`IntrinsicWidth` avec le plus large).
- [ ] Gérer le focus avec `FocusableActionDetector` et l'anneau 3 px/2 px (`BarcaFocusRing`, réutilisable par champs et chips).
- [ ] Désactiver le double-tap : ignorer les appuis pendant `loading` et 300 ms après succès.
- [ ] Respecter `MediaQuery.disableAnimations` : transitions instantanées, haptique conservée (cf. ZE-01).
- [ ] Ajouter use cases widgetbook (6 états).

## ✔️ Critères d'acceptation

- [ ] Étant donné un bouton en chargement, quand l'utilisateur tape, alors `onPressed` n'est pas appelé.
- [ ] Étant donné le passage repos → chargement, quand le libellé change de « Valider » à « Envoi… », alors la largeur du bouton ne change pas.
- [ ] Étant donné la navigation clavier (Tab), quand le bouton reçoit le focus, alors un anneau de 3 px avec décalage 2 px apparaît.
- [ ] Étant donné `disableAnimations`, quand l'état passe à succès, alors le contenu change sans animation.
- [ ] Étant donné l'état succès, quand 1 500 ms s'écoulent, alors le bouton revient au repos.

## 🧪 Tests à écrire

- [ ] Widget : appui → échelle 0,98 puis retour.
- [ ] Widget : désactivé n'appelle pas le callback.
- [ ] Widget : chargement stable en largeur.
- [ ] Widget : succès puis retour au repos (fakeAsync 1,5 s).
- [ ] Widget : focus ring visible au clavier, absent au toucher.
- [ ] Golden : 6 états clair/sombre.

## ♿ Accessibilité et i18n

- `Semantics(liveRegion: true, label: 'Envoi en cours')` pendant le chargement, annonce « Envoyé » au succès.
- ARB : `buttonLoadingSending` « Envoi… », `buttonLoadingSigningIn` « Connexion… », `buttonSuccessSent` « Envoyé ».

## 🔗 Dépendances

À réaliser après : `MOB-ZB-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.3
- CDC Flutter §9.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
