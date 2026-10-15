> **MOB-ZC-04** · Écran · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Toasts sombres arrondis : succès « Équipe enregistrée · J11 » (coche verte), erreur « Composition déjà verrouillée » (triangle), information « Ta série de 12 jours est en danger » (flamme), toast admin avec croix de fermeture.

## ✅ Objectif

`BarcaToast` + `ToastService` global (GetIt) pour retours non bloquants.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZC-01` — Surfaces flottantes — sheets, modales, toasts
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_light.webp?raw=true' width='330' alt='ZC-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__desktop_dark.webp?raw=true' width='330' alt='ZC-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_light.webp?raw=true' width='230' alt='ZC-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-01_surfaces-flottantes-sheets-modales-toasts__mobile_dark.webp?raw=true' width='230' alt='ZC-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 07 » · « Surfaces flottantes » · « Bottom sheets (24 px de rayon), modales centrées, toasts et infobulles. Sur tablette, les sheets deviennent des panneaux centrés de 600 px maximum. » · « Bottom sheet et modale » · « Bottom sheet » · « Formation » · « 4-3-3 » · « 4-2-3-1 » · « Appliquer » · « Modale de confirmation » · « Désactiver la localisation ? » · « Tu n’apparaîtras plus dans les compteurs. » · « Désactiver » · « Annuler » · « Modale de célébration » · « Nouveau badge ! » · « GOAT voter » · « Super ! » · « Toasts, snackbars et infobulles » · « Toast succès » · « Équipe enregistrée · J11 » · « Toast erreur » · « Composition déjà verrouillée » · « Toast information » · « Ta série de 12 jours est en danger » · « Infobulle » · « Pose-moi une question sur le Barça ! 👋 » · « Toast admin » · « Fiche publiée » · « Notification push »

**Composants repérés** : `btn`, `modal`, `sheet`, `toast`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-16](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-16%5D%22) · [ADM-ADS-17](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-17%5D%22) · [ADM-ADS-18](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-18%5D%22) · [ADM-ADS-37](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-37%5D%22) · [MOB-FND-32](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-FND-32%5D%22) · [MOB-ZC-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-01%5D%22) · [MOB-ZC-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-02%5D%22) · [MOB-ZC-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-03%5D%22) · [MOB-ZC-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-05%5D%22) · [MOB-ZC-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-17%5D%22)

## 📐 Règles de gestion

- Fond #1A1A2E (sombre : surface élevée), texte blanc 14 px, rayon 12, hauteur 48, icône 20 colorée selon le type, ombre `overlay`.
- Position : en bas au-dessus de la barre d'onglets (marge 16 + safe area), jamais sous le clavier ; tablette : largeur max 420 centré.
- Durée d'affichage 4 s (erreur 6 s, avec action 8 s) ; entrée/sortie 180 ms (glissement + fondu) ; une file FIFO, max 1 visible, doublons (même message < 2 s) fusionnés.
- Action optionnelle (« Annuler », « Réessayer ») ; fermeture par balayage latéral ou croix.
- Haptique : succès léger, erreur `notificationError`.

## 🛠️ Tâches

- [ ] Créer `lib/core/widgets/barca_toast/barca_toast.dart`, `toast_service.dart` (`show(ToastData)`), `toast_host.dart` (Overlay, inséré dans le builder du MaterialApp).
- [ ] Enum `ToastKind { success, error, info }` avec icône et couleur.
- [ ] Injecter `ToastService` via Injectable (lazySingleton).
- [ ] Gestion de la file, timers annulables, pause pendant appui long.
- [ ] Remplacer tous les `ScaffoldMessenger.showSnackBar`.
- [ ] ARB pour messages génériques.
- [ ] Tests et widgetbook.

## ✔️ Critères d'acceptation

- [ ] Étant donné `show(success)`, alors le toast s'affiche 4 s puis disparaît avec animation de 180 ms.
- [ ] Étant donné deux toasts consécutifs différents, alors le second attend la fin du premier.
- [ ] Étant donné le clavier ouvert, alors le toast reste visible au-dessus du clavier.
- [ ] Étant donné une action « Annuler », quand on tape, alors le callback est appelé et le toast se ferme.

## 🧪 Tests à écrire

- [ ] Unitaire : file et fusion de doublons.
- [ ] Widget : durée 4 s (fakeAsync).
- [ ] Widget : swipe ferme.
- [ ] Widget : position avec clavier.
- [ ] Golden : 4 types clair/sombre.

## ♿ Accessibilité et i18n

- `liveRegion` : annonce vocale au moment de l'apparition ; durée prolongée si lecteur d'écran actif (×2).

## 📚 Références

- CDC Flutter §9.3
- CDC Global §3.4

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
