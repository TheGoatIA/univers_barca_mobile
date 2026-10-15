> **MOB-ZC-10** · Écran · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

États vides de la planche : « Aucun groupe local ici — Pourquoi ne pas en créer un ? [Créer un groupe] », « Aucun wallpaper pour l'instant — Crée ton premier fond d'écran. [Créer un wallpaper] », « Rien de nouveau — Tes notifications apparaîtront ici. [Régler mes préférences] ». Défini par CDC Flutter §9.5.

## ✅ Objectif

`BarcaEmptyState` configurable (illustration, titre, message, action).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZC-03` — États vide, erreur et hors-ligne
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__desktop_light.webp?raw=true' width='330' alt='ZC-03 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__desktop_dark.webp?raw=true' width='330' alt='ZC-03 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__mobile_light.webp?raw=true' width='230' alt='ZC-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__mobile_dark.webp?raw=true' width='230' alt='ZC-03 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 09 » · « États d’écran » · « BarcaEmptyState et BarcaErrorState : illustration légère, message contextualisé, action suggérée. Jamais de message technique brut ; distinction entre erreur réseau et erreur serveur. » · « États vides » · « Vide » · « Aucun groupe local ici » · « Pourquoi ne pas en créer un ? » · « Créer un groupe » · « Aucun wallpaper pour l’instant » · « Crée ton premier fond d’écran. » · « Créer un wallpaper » · « Rien de nouveau » · « Tes notifications apparaîtront ici. » · « Régler mes préférences » · « Erreurs et hors-ligne » · « Erreur » · « Pas de connexion » · « Le défi du jour nécessite une connexion. » · « Réessayer » · « Petit souci de notre côté » · « Notre équipe est déjà dessus. » · « Doucement, champion ! » · « Limite atteinte : réessaie dans 00:42. » · « Accès, restrictions et succès » · « Statut » · « Bientôt disponible » · « Ce module sera activé prochainement. » · « Me prévenir » · « Quiz du jour terminé » · « Reviens demain pour un nouveau défi. »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-20](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-20%5D%22) · [ADM-ADS-21](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-21%5D%22) · [MOB-ZC-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-11%5D%22) · [MOB-ZC-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-12%5D%22) · [MOB-ZC-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-13%5D%22) · [MOB-ZC-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-17%5D%22)

## 📐 Règles de gestion

- Layout centré : illustration 120 px (vectorielle, légère, sans logo officiel), titre h3, message body secondaire, bouton action optionnel (tonal ou primaire).
- Variantes d'illustration : `groups`, `wallpapers`, `notifications`, `search`, `generic`, `favorites`.
- Message contextualisé ; ton chaleureux ; jamais technique.
- Fonctionne dans `SliverFillRemaining` et en plein écran ; pull-to-refresh reste actif.

## 🛠️ Tâches

- [ ] Créer `barca_empty_state.dart` + `EmptyIllustration` enum.
- [ ] Ajouter les 6 SVG légers (< 4 Ko) dans `assets/illustrations/empty/`.
- [ ] Support `action: BarcaEmptyAction(label, onPressed)`.
- [ ] ARB FR/EN/ES pour tous les textes de la planche.
- [ ] Intégrer au gabarit FND `etats-ecran-pattern`.
- [ ] Tests, widgetbook, goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné une liste vide, alors l'état vide s'affiche avec message et bouton « Créer un groupe ».
- [ ] Étant donné un bouton d'action, quand on tape, alors le callback est appelé.
- [ ] Étant donné le thème sombre, alors l'illustration reste lisible (contraste ≥ 3:1).
- [ ] Étant donné texte 160 %, alors aucun débordement.

## 🧪 Tests à écrire

- [ ] Widget : action.
- [ ] Widget : sans action.
- [ ] Widget : défilable pour petits écrans.
- [ ] Golden : 3 états vides × clair/sombre.

## ♿ Accessibilité et i18n

- Illustration décorative `ExcludeSemantics` ; titre `header`; ARB `emptyGroupsTitle`, `emptyWallpapersTitle`, `emptyNotificationsTitle`…

## 📚 Références

- CDC Flutter §9.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
