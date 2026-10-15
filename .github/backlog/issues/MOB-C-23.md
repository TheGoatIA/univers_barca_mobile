> **MOB-C-23** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

C-12 : titre « Dans l'histoire », date « 15 octobre · 2011 », titre « Un 4-0 qui entre dans la légende », chips « Ligue des champions » et « Camp Nou », texte de l'anecdote (rédigée par l'équipe éditoriale), puis boutons « Pose une question à Barça AI sur ce match », « Voir la fiche du match » et « Partager ».

## ✅ Objectif

Afficher l'anecdote complète et relier aux modules IA, Historique et partage.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `C-12` — Détail — Aujourd’hui dans l’histoire
_Module : Accueil dashboard_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-12_detail-aujourd-hui-dans-l-histoire__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-12_detail-aujourd-hui-dans-l-histoire__phone_light.webp?raw=true' width='230' alt='C-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-12_detail-aujourd-hui-dans-l-histoire__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-12_detail-aujourd-hui-dans-l-histoire__phone_dark.webp?raw=true' width='230' alt='C-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-12_detail-aujourd-hui-dans-l-histoire__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-12_detail-aujourd-hui-dans-l-histoire__tablet_light.webp?raw=true' width='330' alt='C-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-12_detail-aujourd-hui-dans-l-histoire__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/C/C-12_detail-aujourd-hui-dans-l-histoire__tablet_dark.webp?raw=true' width='330' alt='C-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Dans l’histoire » · « 15 octobre · 2011 » · « Un 4-0 qui entre dans la légende » · « Ligue des champions » · « Camp Nou » · « Ce soir-là, le jeu de position atteint un sommet : possession, pressing haut et une circulation de balle qui laisse l'adversaire sans solution. Une anecdote rédigée par l'équipe éditoriale. » · « Pose une question à Barça AI sur ce match » · « Voir la fiche du match » · « Partager »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-04%5D%22) · [API-FOOT-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-08%5D%22) · [API-FOOT-10](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-10%5D%22) · [API-FOOT-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-18%5D%22) · [API-FOOT-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-19%5D%22) · [MOB-C-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-25%5D%22) · [MOB-C-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-26%5D%22) · [MOB-C-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-C-27%5D%22)

## 📐 Règles de gestion

- Contenu éditorial, jamais généré à la volée par le client.
- Actions conditionnelles : IA, fiche du match, partage.
- Partage sans lien inventé : texte seul.

## 🛠️ Tâches

- [ ] Créer `presentation/pages/today_in_history_detail_page.dart` + `TodayInHistoryDetailBloc` (`GET` de l'anecdote par id, cache).
- [ ] Mise en page : `AppBar` « Dans l'histoire » (retour), date `overline` secondaire, titre h1 Barlow Condensed, `Wrap` de 2 `Chip` (compétition, stade), corps `body` 16 sp interligne 1,5, sélectionnable.
- [ ] Bouton « Pose une question à Barça AI sur ce match » → ouvre l'assistant avec message pré-rempli (`/assistant?prompt=...`), module IA ; masqué si l'assistant est indisponible.
- [ ] Bouton « Voir la fiche du match » → `/history/match/:matchId` (module Historique) ; masqué si `matchId` nul.
- [ ] Bouton « Partager » : `share_plus` avec texte « {titre} — {année} · Univers Barça » (pas de lien inventé).
- [ ] Mention « Anecdote rédigée par l'équipe éditoriale » en caption ; contenu reçu déjà localisé (Accept-Language).
- [ ] Squelette, erreur, cache offline.

## ✔️ Critères d'acceptation

- [ ] Étant donné l'anecdote 2011, quand l'écran s'ouvre, alors le titre « Un 4-0 qui entre dans la légende » et les chips sont affichés.
- [ ] Étant donné un `matchId` nul, quand l'écran s'affiche, alors « Voir la fiche du match » est masqué.
- [ ] Étant donné un tap sur « Partager », quand la feuille s'ouvre, alors le texte contient le titre et l'année.
- [ ] Étant donné un tap sur « Pose une question… », quand l'assistant s'ouvre, alors le prompt est pré-rempli.
- [ ] Étant donné hors-ligne avec cache, alors l'anecdote reste lisible.

## 🧪 Tests à écrire

- [ ] Test de widget : textes C-12.
- [ ] Test de widget : boutons conditionnels.
- [ ] Test de bloc : succès/erreur.
- [ ] Golden clair/sombre.
- [ ] Test unitaire : texte de partage.

## ♿ Accessibilité et i18n

- Texte redimensionnable (textScale jusqu'à 200 %), ARB : `historyDetailTitle`, `askBarcaAiAboutMatch`, `seeMatchSheet`, `share`, `editorialNote`.

## 🔗 Dépendances

À réaliser après : `MOB-C-13` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.3
- CDC Flutter §7.2
- CDC Global §2.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
