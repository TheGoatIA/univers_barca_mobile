> **MOB-M-23** · Écran · Priorité **P0** · Taille **S** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

M-12 : « Quota atteint pour aujourd'hui — Tu as utilisé tes 3 générations du jour. Elles se renouvellent dans : 11:24:08 » + bouton « Voir ma galerie ».

## ✅ Objectif

Expliquer la limite (maîtrise des coûts IA) et rediriger vers un contenu utile.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `M-12` — Quota quotidien atteint
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__phone_light.webp?raw=true' width='230' alt='M-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__phone_dark.webp?raw=true' width='230' alt='M-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__tablet_light.webp?raw=true' width='330' alt='M-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-12_quota-quotidien-atteint__tablet_dark.webp?raw=true' width='330' alt='M-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Wallpapers IA » · « Quota atteint pour aujourd’hui » · « Tu as utilisé tes 3 générations du jour. Elles se renouvellent dans : » · « 11:24:08 » · « Voir ma galerie »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [MOB-M-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-02%5D%22) · [MOB-M-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-09%5D%22) · [MOB-M-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-22%5D%22) · [MOB-M-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-29%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

## 📐 Règles de gestion

- Le nombre « 3 » provient de `quota.limit`
- Compte à rebours en police tabulaire (chiffres de largeur fixe)
- « Voir ma galerie » -> M-08 ; pas de CTA de contournement/achat (projet gratuit)

## 🔄 Comportement et états

- Affiché en remplacement du formulaire ou après un 429
- À l'échéance : l'écran propose « Créer un wallpaper »

## 🛠️ Tâches

- [ ] Créer `presentation/pages/wallpaper_quota_reached_page.dart`
- [ ] Utiliser `CountdownText` et `QuotaCubit`
- [ ] Illustration sablier SVG
- [ ] Clés ARB `wallpaperQuotaTitle`, `wallpaperQuotaBody` (placeholder {count}), `wallpaperQuotaRenews`
- [ ] Route `/wallpapers/quota`
- [ ] Test widget
- [ ] Golden
- [ ] Analytics `wallpaper_quota_reached`

## ✔️ Critères d'acceptation

- [ ] Étant donné limit=3 quand M-12 s'affiche alors « Tu as utilisé tes 3 générations du jour »
- [ ] Étant donné le tap sur « Voir ma galerie » alors M-08 s'ouvre
- [ ] Étant donné le reset atteint alors le bouton devient « Créer un wallpaper »

## 🧪 Tests à écrire

- [ ] quota_page_test : texte limite
- [ ] quota_page_test : bascule au reset
- [ ] golden : quota_light / quota_dark

## ♿ Accessibilité et i18n

- Texte du décompte avec `Semantics(label: 'Dans 11 heures 24 minutes')`

## 🔗 Dépendances

À réaliser après : `MOB-M-22` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §10.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
