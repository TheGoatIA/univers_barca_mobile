> **MOB-ZC-13** · Écran · Priorité **P1** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Bloc « Accès, restrictions et succès » : « Quiz du jour terminé — Reviens demain pour un nouveau défi. [Entraînement libre] », « Accès retiré — Compte banni pour non-respect de la charte. [Contacter le support] », « Bientôt disponible — Ce module sera activé prochainement. [Me prévenir] ».

## ✅ Objectif

Variantes `BarcaStatusState` basées sur BarcaEmptyState (succès, restriction, bientôt).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZC-03` — États vide, erreur et hors-ligne
_Module : Retours et états_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__desktop_light.webp?raw=true' width='330' alt='ZC-03 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__desktop_dark.webp?raw=true' width='330' alt='ZC-03 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__mobile_light.webp?raw=true' width='230' alt='ZC-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZC/ZC-03_etats-vide-erreur-et-hors-ligne__mobile_dark.webp?raw=true' width='230' alt='ZC-03 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Composants · 09 » · « États d’écran » · « BarcaEmptyState et BarcaErrorState : illustration légère, message contextualisé, action suggérée. Jamais de message technique brut ; distinction entre erreur réseau et erreur serveur. » · « États vides » · « Vide » · « Aucun groupe local ici » · « Pourquoi ne pas en créer un ? » · « Créer un groupe » · « Aucun wallpaper pour l’instant » · « Crée ton premier fond d’écran. » · « Créer un wallpaper » · « Rien de nouveau » · « Tes notifications apparaîtront ici. » · « Régler mes préférences » · « Erreurs et hors-ligne » · « Erreur » · « Pas de connexion » · « Le défi du jour nécessite une connexion. » · « Réessayer » · « Petit souci de notre côté » · « Notre équipe est déjà dessus. » · « Doucement, champion ! » · « Limite atteinte : réessaie dans 00:42. » · « Accès, restrictions et succès » · « Statut » · « Bientôt disponible » · « Ce module sera activé prochainement. » · « Me prévenir » · « Quiz du jour terminé » · « Reviens demain pour un nouveau défi. »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-20](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-20%5D%22) · [ADM-ADS-21](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-21%5D%22) · [MOB-ZC-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-10%5D%22) · [MOB-ZC-11](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-11%5D%22) · [MOB-ZC-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-12%5D%22) · [MOB-ZC-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZC-17%5D%22)

## 📐 Règles de gestion

- Succès/terminé : illustration trophée, couleur success, CTA secondaire.
- Accès retiré : illustration cadenas, ton neutre, CTA « Contacter le support » (mailto/support), pas de bouton de contournement ; lié aux sanctions de modération.
- Bientôt disponible : feature flag ; « Me prévenir » enregistre l'intérêt (aucune donnée personnelle supplémentaire) et affiche un toast de confirmation.
- Textes jamais accusateurs ni techniques.

## 🛠️ Tâches

- [ ] Créer `barca_status_state.dart` (`BarcaStatusKind { completed, restricted, comingSoon }`).
- [ ] Ajouter illustrations SVG.
- [ ] Intégrer au feature flag (`AppConfig` FND).
- [ ] ARB FR/EN/ES.
- [ ] Tests, goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné un compte banni, alors l'écran « Accès retiré » s'affiche avec « Contacter le support ».
- [ ] Étant donné « Me prévenir », quand on tape, alors un toast confirme et le bouton passe à « Tu seras prévenu ».
- [ ] Étant donné le quiz du jour terminé, alors « Entraînement libre » est proposé.

## 🧪 Tests à écrire

- [ ] Widget : 3 variantes.
- [ ] Widget : Me prévenir idempotent.
- [ ] Golden : 3 variantes.

## ♿ Accessibilité et i18n

- Titres `header`; ARB `statusQuizDoneTitle`, `statusAccessRevokedTitle`, `statusComingSoonTitle`.

## 🔗 Dépendances

À réaliser après : `MOB-ZC-10` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.5
- CDC Global modération

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
