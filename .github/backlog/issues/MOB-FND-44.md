> **MOB-FND-44** · Documentation · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

CDC §14.2 : fiches FR/EN/ES, politique de confidentialité, formulaires App Privacy / Data safety cohérents avec les données réellement collectées, « Se connecter avec Apple » si connexion sociale, suppression de compte dans l'app, tests sur appareil physique.

## ✅ Objectif

Un dossier de soumission prêt avant la première release.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZA-01` — Identité et logo
_Module : Fondations_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__desktop_light.webp?raw=true' width='330' alt='ZA-01 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__desktop_dark.webp?raw=true' width='330' alt='ZA-01 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__mobile_light.webp?raw=true' width='230' alt='ZA-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZA/ZA-01_identite-et-logo__mobile_dark.webp?raw=true' width='230' alt='ZA-01 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fondations · 01 » · « Identité visuelle » · « Univers Barça développe une identité propre et originale, clairement « fan-made » : aucun logo officiel, écusson ni maillot protégé. L'emblème s'inspire des rayures blaugrana de façon libre et stylisée. » · « Emblème et wordmark » · « Univers » · « Barça » · « Version principale » · « Version monochrome sur fond de marque » · « Emblème seul » · « Icône d'application » · « Univers Barça » · « flavor : prod » · « Dev » · « flavor : dev » · « Staging » · « flavor : staging » · « Tailles minimales » · « 24 px » · « 32 px » · « 48 px » · « 64 px » · « Zone de protection et usages » · « Marge de protection = hauteur de la lettre « U » du wordmark, sur les 4 côtés. » · « Toujours : utiliser l’emblème original sur fond uni ou dégradé de marque. » · « Toujours : contraste AA entre emblème et fond. » · « Jamais : reproduire le logo, l’écusson ou les maillots officiels du club. » · « Jamais : déformer, recolorer ou ajouter d’effets à l’emblème. »

</details>

**Issues liées sur ce même écran :** [ADM-ADS-04](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-04%5D%22)

## 📐 Règles de gestion

- Fiches stores en 3 langues : description, mots-clés, captures par taille d'appareil (téléphone 6,7" / 6,1" / tablette).
- Données déclarées : identifiants de compte, e-mail, contenus utilisateur, géolocalisation approximative (opt-in), jetons de notification, diagnostics (Crashlytics), analytics (consentement).
- Suppression de compte accessible depuis l'app (`DELETE /users/me`) ; export (`GET /users/me/export`).
- Sign in with Apple obligatoire sur iOS dès que Google est proposé.
- Test release sur ≥ 1 appareil physique par plateforme.

## 🛠️ Tâches

- [ ] Rédiger `docs/STORE_CHECKLIST.md` (cases à cocher).
- [ ] Préparer `fastlane/metadata/{fr-FR,en-US,es-ES}/`.
- [ ] Créer la matrice « donnée → finalité → base légale → déclaration store ».
- [ ] Valider les icônes et splash par taille (ZA-01).
- [ ] Lier la politique de confidentialité depuis les paramètres.

## ✔️ Critères d'acceptation

- [ ] Étant donné la checklist alors chaque ligne a un responsable et une date.
- [ ] Étant donné la matrice alors aucune donnée collectée n'est absente des formulaires.
- [ ] Étant donné un build release alors la suppression de compte est testée de bout en bout.

## 🧪 Tests à écrire

- [ ] Revue croisée de la matrice vs code (grep des SDK).
- [ ] Test manuel : parcours suppression de compte.
- [ ] Test manuel : Sign in with Apple.
- [ ] Test manuel : build release sur appareil.

## 🔗 Dépendances

À réaliser après : `MOB-FND-43` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §14.2
- CDC Global §10.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
