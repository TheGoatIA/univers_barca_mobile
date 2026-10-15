> **MOB-F-21** · Écran · Priorité **P0** · Taille **L** · Phase 1 — MVP

## 🎯 Contexte

Fiche d'un joueur (ex. Lamine Yamal, n°10, ailier droit) avec chiffres clés, informations de profil, profil de jeu et actions rapides.

## ✅ Objectif

Implémenter F-11 : en-tête, 4 indicateurs, onglets, carte Profil, Profil de jeu et boutons d'action.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `F-11` — Fiche joueur — aperçu
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-11_fiche-joueur-apercu__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-11_fiche-joueur-apercu__phone_light.webp?raw=true' width='230' alt='F-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-11_fiche-joueur-apercu__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-11_fiche-joueur-apercu__phone_dark.webp?raw=true' width='230' alt='F-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-11_fiche-joueur-apercu__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-11_fiche-joueur-apercu__tablet_light.webp?raw=true' width='330' alt='F-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-11_fiche-joueur-apercu__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-11_fiche-joueur-apercu__tablet_dark.webp?raw=true' width='330' alt='F-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Fiche joueur » · « N°10 · Ailier droit » · « Lamine Yamal » · « 🇪🇸 Espagne · 19 ans · 1,80 m » · « Matchs » · « Buts » · « Passes D. » · « Trophées » · « Aperçu » · « Statistiques » · « Biographie » · « Profil » · « Poste » · « Ailier droit » · « Pied » · « Gauche » · « Né le » · « 13 juil. 2007 » · « Formé à » · « La Masia » · « Contrat » · « Profil de jeu » · « Comparer » · « Demander à Barça AI »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-01%5D%22) · [API-FOOT-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-11%5D%22) · [API-FOOT-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-12%5D%22) · [API-FOOT-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-30%5D%22) · [API-FOOT-50](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-50%5D%22) · [API-FOOT-53](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-53%5D%22) · [API-FOOT-54](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-54%5D%22) · [MOB-F-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-01%5D%22) · [MOB-F-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-02%5D%22) · [MOB-F-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-03%5D%22) · [MOB-F-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-04%5D%22) · [MOB-F-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-20%5D%22) · [MOB-F-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-24%5D%22) · [MOB-F-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-25%5D%22) · [MOB-F-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-26%5D%22) · [MOB-F-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-27%5D%22)

## 📐 Règles de gestion

- En-tête : avatar illustré (aucune photo sous droits), 'N°10 · Ailier droit', nom 'Lamine Yamal', ligne '🇪🇸 Espagne · 19 ans · 1,80 m'.
- 4 indicateurs : Matchs, Buts, Passes D., Trophées (totaux toutes compétitions).
- Onglets : Aperçu · Statistiques · Biographie.
- Carte 'Profil' : Poste Ailier droit, Pied Gauche, Né le 13 juil. 2007, Formé à La Masia, Contrat 2031 ; valeurs absentes affichées '—'.
- Section 'Profil de jeu' : radar 6 axes (Dribble, Vitesse, Vision, Passe, Finition, Défense) — réutilise le widget radar du comparateur (G-05) ; masquée si pas de données.
- Boutons : 'Comparer' (ouvre /goat avec ce joueur en slot A pré-rempli) et 'Demander à Barça AI' (ouvre l'overlay assistant avec une question pré-remplie ; l'overlay est livré par le module IA).

## 🛠️ Tâches

- [ ] Créer lib/features/players/presentation/pages/player_profile_page.dart (route /players/:id).
- [ ] Créer widgets/player_header.dart, key_stats_row.dart, player_tab_selector.dart, player_info_card.dart, player_radar_section.dart.
- [ ] Convertir le code pays ISO en drapeau emoji + nom localisé (intl/country util).
- [ ] Formater taille (1,80 m) et date (13 juil. 2007) selon la locale.
- [ ] Câbler 'Comparer' : context.push('/goat?a=<id>') ; 'Demander à Barça AI' : callback vers AssistantLauncher (interface exposée, no-op tant que le module IA n'existe pas).
- [ ] Ajouter ARB et golden tests clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné Lamine Yamal alors 'N°10 · Ailier droit' et '19 ans · 1,80 m' sont affichés.
- [ ] Étant donné contractUntil nul alors 'Contrat —'.
- [ ] Étant donné le tap sur 'Comparer' alors /goat est ouvert avec le joueur en slot A.
- [ ] Étant donné les données radar absentes alors la section Profil de jeu est masquée.

## 🧪 Tests à écrire

- [ ] Test widget PlayerHeader_infos
- [ ] Test widget KeyStatsRow_4_indicateurs
- [ ] Test widget info_card_valeurs_absentes
- [ ] Test widget bouton_comparer_navigue
- [ ] Golden test apercu clair/sombre

## ♿ Accessibilité et i18n

- Semantics header : 'Lamine Yamal, numéro 10, ailier droit, Espagne, 19 ans'.
- Les emoji drapeaux ont un label textuel (pays).

## 🔗 Dépendances

À réaliser après : `MOB-F-20` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.6
- CDC Flutter §7.5
- CDC Backend §3.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
