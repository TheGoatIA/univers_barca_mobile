> **MOB-B-02** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Premier écran du tunnel : trois cartes de langue (Français sélectionné avec coche, English, Español) sous l'écusson ; le choix s'applique immédiatement à l'interface.

## ✅ Objectif

Implémenter `LanguageSelectionPage` conforme à B-01 avec application instantanée de la langue.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-01` — Choix de la langue
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-01_choix-de-la-langue__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-01_choix-de-la-langue__phone_light.webp?raw=true' width='230' alt='B-01 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-01_choix-de-la-langue__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-01_choix-de-la-langue__phone_dark.webp?raw=true' width='230' alt='B-01 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-01_choix-de-la-langue__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-01_choix-de-la-langue__tablet_light.webp?raw=true' width='330' alt='B-01 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-01_choix-de-la-langue__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-01_choix-de-la-langue__tablet_dark.webp?raw=true' width='330' alt='B-01 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « Choisis ta langue » · « Tu pourras la modifier à tout moment dans les paramètres. » · « 🇫🇷 » · « Français » · « 🇬🇧 » · « English » · « 🇪🇸 » · « Español » · « Continuer »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-28%5D%22) · [MOB-B-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-01%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Titre « CHOISIS TA LANGUE », sous-titre « Tu pourras la modifier à tout moment dans les paramètres. », options « Français », « English », « Español » avec drapeau emoji, case cochée bordeaux et carte teintée sur l'option active, bouton « Continuer ».
- Pré-sélection = langue du système si parmi fr/en/es, sinon français (CDC Flutter §8.1).
- Un appui sur une carte change la locale de l'application sans attendre « Continuer » (les libellés de la page se traduisent en direct) ; « Continuer » valide `localeChosen=true`.
- La langue est ensuite envoyée à l'inscription (`locale`) et à toutes les requêtes via l'en-tête `Accept-Language` (LocaleInterceptor).

## 🔄 Comportement et états

- Sélection exclusive (radio) ; accessibilité clavier/lecteur.
- Bouton « Continuer » toujours actif (une valeur est toujours sélectionnée).
- Tablette : cartes centrées, largeur max 480 dp.

## 🛠️ Tâches

- [ ] Créer `lib/features/auth/presentation/pages/language_selection_page.dart` et `widgets/language_option_tile.dart`.
- [ ] Créer `lib/core/localization/locale_cubit.dart` (`LocaleCubit`, état `Locale`, persistance préférences) et l'injecter dans `MaterialApp.router(locale:)`.
- [ ] Implémenter `LocaleInterceptor` (déjà prévu CDC §4.2) pour `Accept-Language`.
- [ ] Détecter la langue système via `PlatformDispatcher.instance.locale`.
- [ ] Ajouter les clés ARB `languageTitle`, `languageSubtitle`, `languageFrench`, `languageEnglish`, `languageSpanish`, `commonContinue`.
- [ ] Persister `localeChosen`.
- [ ] Golden clair/sombre, 3 états sélectionnés.

## ✔️ Critères d'acceptation

- [ ] Étant donné un système en anglais quand B-01 s'affiche alors English est présélectionné et l'interface est en anglais.
- [ ] Étant donné une sélection d'Español quand l'utilisateur la touche alors les textes passent en espagnol immédiatement.
- [ ] Étant donné « Continuer » quand on l'appuie alors la langue est persistée et B-02 s'affiche.
- [ ] Étant donné une langue système japonaise quand B-01 s'affiche alors Français est présélectionné.

## 🧪 Tests à écrire

- [ ] Test LocaleCubit : persistance et restauration.
- [ ] Widget test : bascule en direct.
- [ ] Test : langue système non supportée → fr.
- [ ] Golden `language_selection` clair/sombre.
- [ ] Test : Accept-Language envoyé après changement.

## ♿ Accessibilité et i18n

- Chaque carte = `Semantics(inMutuallyExclusiveGroup:true, selected)` avec nom de langue dans sa propre langue.
- Emojis drapeaux exclus de la lecture (`excludeSemantics`).

## 🔗 Dépendances

À réaliser après : `MOB-B-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §8.1
- CDC Flutter §4.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
