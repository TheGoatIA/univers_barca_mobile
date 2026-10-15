> **MOB-B-17** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Sélecteur plein écran de pays avec champ de recherche (« Cam » → Cameroun, Canada, Cambodge, Cap-Vert, Chili) et bouton Confirmer.

## ✅ Objectif

Implémenter `CountrySearchPage` conforme à B-12 avec recherche instantanée insensible aux accents.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-12` — Recherche du pays
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-12_recherche-du-pays__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-12_recherche-du-pays__phone_light.webp?raw=true' width='230' alt='B-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-12_recherche-du-pays__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-12_recherche-du-pays__phone_dark.webp?raw=true' width='230' alt='B-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-12_recherche-du-pays__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-12_recherche-du-pays__tablet_light.webp?raw=true' width='330' alt='B-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-12_recherche-du-pays__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-12_recherche-du-pays__tablet_dark.webp?raw=true' width='330' alt='B-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « 1/3 » · « Choisis ton pays » · « Cam » · « 🇨🇲 » · « Cameroun » · « 🇨🇦 » · « Canada » · « 🇰🇭 » · « Cambodge » · « 🇨🇻 » · « Cap-Vert » · « 🇨🇱 » · « Chili » · « Confirmer »

**Composants repérés** : `btn`, `search`

</details>

**Issues liées sur ce même écran :** [API-AUTH-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-29%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Titre « CHOISIS TON PAYS », champ de recherche avec loupe (valeur « Cam »), liste de résultats, case de sélection, bouton « Confirmer » désactivé tant qu'aucun pays n'est choisi.
- Source : liste embarquée ISO 3166-1 (≈ 249 pays) localisée fr/en/es, tri alphabétique selon la locale ; filtrage insensible casse et diacritiques (« cote » trouve « Côte d'Ivoire »), sur préfixe de mot ; mise en évidence de la partie saisie.
- Anti-rebond 150 ms ; aucun appel réseau.
- Résultat vide : « Aucun pays trouvé » avec suggestion d'effacer la recherche.

## 🔄 Comportement et états

- Sélection : ligne teintée + coche ; « Confirmer » renvoie le code ISO à B-11 (`pop(result)`).
- Pays déjà sélectionné : défilé automatiquement visible.
- Clavier ouvert : la liste reste défilable.

## 🛠️ Tâches

- [ ] Créer `lib/features/auth/presentation/pages/country_search_page.dart`.
- [ ] Créer `lib/core/data/countries.dart` (code, noms fr/en/es) ou utiliser `country_codes` + overrides.
- [ ] Créer `lib/core/utils/text_normalizer.dart` (suppression des diacritiques).
- [ ] Créer `CountrySearchCubit` (query, résultats, sélection).
- [ ] Intégrer `SearchField` du design system.
- [ ] Clés ARB `countrySearchTitle`, `countrySearchHint`, `confirm`, `noCountryFound`.
- [ ] Test de performance filtrage < 16 ms.
- [ ] Golden clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné « cam » quand on tape alors les pays commençant par « Cam… » s'affichent (dont Cameroun).
- [ ] Étant donné « cote » quand on tape alors « Côte d'Ivoire » est affiché.
- [ ] Étant donné aucun résultat quand la liste est vide alors « Aucun pays trouvé » s'affiche.
- [ ] Étant donné « Cameroun » sélectionné quand on appuie « Confirmer » alors B-11 affiche Cameroun.

## 🧪 Tests à écrire

- [ ] Test normalisation des accents.
- [ ] Test cubit : filtrage et sélection.
- [ ] Widget test : état vide.
- [ ] Golden `country_search`.
- [ ] Test : 249 pays ×3 langues sans doublon.

## ♿ Accessibilité et i18n

- Chaque ligne annoncée « Cameroun, sélectionné » ; champ de recherche étiqueté.

## 🔗 Dépendances

À réaliser après : `MOB-B-16` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
