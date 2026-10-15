> **MOB-M-04** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Le formulaire M-01 combine trois sélections (joueur ou thème, style, occasion) et un champ libre de 140 caractères. Son état doit survivre aux allers-retours entre M-01, M-02 (aperçu) et M-03 (refus).

## ✅ Objectif

Piloter le formulaire avec un `WallpaperFormCubit` immuable (Equatable) qui valide localement et orchestre la pré-vérification serveur.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `M-01` — Générateur — formulaire guidé
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__phone_light.webp?raw=true' width='230' alt='M-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__phone_dark.webp?raw=true' width='230' alt='M-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__tablet_light.webp?raw=true' width='330' alt='M-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-01_generateur-formulaire-guide__tablet_dark.webp?raw=true' width='330' alt='M-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Wallpapers IA » · « 1/3 » · « 3 générations gratuites par jour · » · « 2 restantes » · « 1. Joueur ou thème » · « Yamal » · « Pedri » · « Raphinha » · « Lewandowski » · « Autre » · « 2. Style visuel » · « Illustration » · « Néon » · « Aquarelle » · « Rétro » · « Minimal » · « 3. Occasion » · « Jour de match » · « Anniversaire » · « Trophée » · « Libre » · « Précision (optionnel) » · « 39 / 140 » · « Célébration de but sous les projecteurs, ambiance nocturne » · « Générer mon wallpaper »

**Composants repérés** : `btn`, `card`, `chip`

</details>

**Issues liées sur ce même écran :** [MOB-M-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-02%5D%22) · [MOB-M-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-05%5D%22) · [MOB-M-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-06%5D%22) · [MOB-M-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-22%5D%22) · [MOB-M-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-26%5D%22) · [MOB-M-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-29%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

#### `M-02` — Aperçu du prompt
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-02_apercu-du-prompt__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-02_apercu-du-prompt__phone_light.webp?raw=true' width='230' alt='M-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-02_apercu-du-prompt__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-02_apercu-du-prompt__phone_dark.webp?raw=true' width='230' alt='M-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-02_apercu-du-prompt__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-02_apercu-du-prompt__tablet_light.webp?raw=true' width='330' alt='M-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-02_apercu-du-prompt__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-02_apercu-du-prompt__tablet_dark.webp?raw=true' width='330' alt='M-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Wallpapers IA » · « 3/3 » · « Vérifie ta demande » · « Joueur » · « Lamine Yamal » · « Style » · « Illustration » · « Occasion » · « Jour de match » · « Précision » · « Célébration de but sous les projecteurs » · « Ta demande est vérifiée automatiquement. Les logos et visuels officiels protégés ne sont pas reproduits. » · « Lancer la génération »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-M-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-07%5D%22) · [MOB-M-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-28%5D%22) · [MOB-M-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-29%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

#### `M-03` — Prompt refusé par la modération
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-03_prompt-refuse-par-la-moderation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-03_prompt-refuse-par-la-moderation__phone_light.webp?raw=true' width='230' alt='M-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-03_prompt-refuse-par-la-moderation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-03_prompt-refuse-par-la-moderation__phone_dark.webp?raw=true' width='230' alt='M-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-03_prompt-refuse-par-la-moderation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-03_prompt-refuse-par-la-moderation__tablet_light.webp?raw=true' width='330' alt='M-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-03_prompt-refuse-par-la-moderation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-03_prompt-refuse-par-la-moderation__tablet_dark.webp?raw=true' width='330' alt='M-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Wallpapers IA » · « 1/3 » · « 3 générations gratuites par jour · » · « 2 restantes » · « 1. Joueur ou thème » · « Yamal » · « Pedri » · « Raphinha » · « Lewandowski » · « Autre » · « 2. Style visuel » · « Illustration » · « Néon » · « Aquarelle » · « Rétro » · « Minimal » · « 3. Occasion » · « Jour de match » · « Anniversaire » · « Trophée » · « Libre » · « Précision (optionnel) » · « 36 / 140 » · « Yamal avec le logo officiel du club… » · « Cette demande ne peut pas être traitée : reproduction de marque protégée. » · « Demande refusée » · « Reformule sans logo officiel, écusson ni contenu protégé. »

**Composants repérés** : `card`, `chip`

</details>

**Issues liées sur ce même écran :** [MOB-M-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-08%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

## 📐 Règles de gestion

- Joueur ou thème : obligatoire (un seul choix) ; par défaut aucun, la maquette montre « Yamal » présélectionné car dernier choix mémorisé dans le brouillon
- Style visuel : un seul parmi 5 (Illustration, Néon, Aquarelle, Rétro, Minimal) ; Occasion : une seule parmi 4 (Jour de match, Anniversaire, Trophée, Libre)
- Précision : optionnelle, 0 à 140 caractères, trim, retours à la ligne remplacés par une espace, caractères de contrôle supprimés
- Bouton « Générer mon wallpaper » désactivé si joueur/thème, style ou occasion manquent, si le quota est épuisé ou pendant la pré-vérification
- Étapes du stepper : 1/3 saisie, 2/3 pré-vérification automatique (état transitoire sans écran dédié), 3/3 aperçu M-02

## 🔄 Comportement et états

- États : `FormEditing`, `FormChecking` (étape 2/3), `FormReadyToConfirm` (étape 3/3), `FormRejected(reason)`, `FormQuotaExhausted`, `FormModuleDisabled`
- Événements : PlayerSelected, ThemeEntered, StyleSelected, OccasionSelected, DetailsChanged, SubmitPressed, ConfirmPressed, EditPressed, DraftRestored
- Au `SubmitPressed` : appel de `CheckWallpaperPromptUseCase` ; succès -> ReadyToConfirm ; 422 -> Rejected ; 429 -> QuotaExhausted ; 503 -> ModuleDisabled

## 🛠️ Tâches

- [ ] Créer `presentation/bloc/wallpaper_form_cubit.dart` et `wallpaper_form_state.dart`
- [ ] Implémenter la normalisation de `details` dans `core/utils/text_sanitizer.dart`
- [ ] Restaurer/sauvegarder le brouillon (debounce 400 ms) via `wallpapers_local_datasource`
- [ ] Exposer `canSubmit` calculé
- [ ] Gérer l'annulation de la pré-vérification si l'utilisateur modifie un champ pendant la requête (token d'annulation)
- [ ] Fournir le cubit via `BlocProvider` dans la route `/wallpapers/new`
- [ ] Journaliser l'événement analytics `wallpaper_form_submitted` (sans le texte libre)
- [ ] Écrire les tests avec `bloc_test`

## ✔️ Critères d'acceptation

- [ ] Étant donné aucun style choisi quand l'utilisateur observe le bouton alors « Générer mon wallpaper » est désactivé
- [ ] Étant donné une précision de 140 caractères quand il en tape un 141e alors le caractère est refusé et le compteur reste « 140 / 140 »
- [ ] Étant donné une réponse 422 à la pré-vérification quand le cubit la reçoit alors l'état est `FormRejected` et les sélections sont conservées
- [ ] Étant donné un quota à 0 quand le formulaire s'ouvre alors l'état est `FormQuotaExhausted`

## 🧪 Tests à écrire

- [ ] wallpaper_form_cubit_test : sélection joueur + style + occasion -> canSubmit
- [ ] wallpaper_form_cubit_test : refus modération conserve les champs
- [ ] wallpaper_form_cubit_test : debounce du brouillon
- [ ] text_sanitizer_test : retours à la ligne et caractères de contrôle
- [ ] wallpaper_form_cubit_test : annulation sur changement de champ

## 🔗 Dépendances

À réaliser après : `MOB-M-02` · `MOB-M-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.9
- CDC Global §2.10

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
