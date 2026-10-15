> **MOB-K-13** · Écran · Priorité **P0** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

La feuille « Signaler ce message » annonce « Ton signalement est anonyme. Il sera examiné par un modérateur. » et propose 5 motifs : propos haineux ou discriminatoires, harcèlement ou menaces, spam ou publicité, contenu inapproprié, autre.

## ✅ Objectif

Recueillir un motif et envoyer le signalement.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `K-05` — Choix du motif de signalement
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-05_choix-du-motif-de-signalement__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-05_choix-du-motif-de-signalement__phone_light.webp?raw=true' width='230' alt='K-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-05_choix-du-motif-de-signalement__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-05_choix-du-motif-de-signalement__phone_dark.webp?raw=true' width='230' alt='K-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-05_choix-du-motif-de-signalement__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-05_choix-du-motif-de-signalement__tablet_light.webp?raw=true' width='330' alt='K-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-05_choix-du-motif-de-signalement__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-05_choix-du-motif-de-signalement__tablet_dark.webp?raw=true' width='330' alt='K-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Groupe » · « Culés Cameroun » · « Yaoundé » · « 721 membres » · « Public » · « Le point de rendez-vous des supporters du Barça au Cameroun. Watch parties, discussions et bon esprit ! » · « Membre » · « Fil » · « Événements » · « Membres » · « Mamadou Diallo » · « Modérateur » · « il y a 12 min » · « Qui est chaud pour le Clásico samedi ? On se retrouve au Relais à 19h30 ! 🔵🔴 » · « Aïcha Ngono » · « il y a 1 h » · « Quelqu’un a vu la compo probable ? Yamal titulaire sans doute. » · « Kevin Mballa » · « il y a 3 h » · « Photo du dernier visionnage au Bastos, quelle ambiance ! » · « Écrire dans le groupe… » · « Signaler ce message » · « Ton signalement est anonyme. Il sera examiné par un modérateur. » · « Propos haineux ou discriminatoires » · « Harcèlement ou menaces » · « Spam ou publicité » · « Contenu inapproprié » · « Autre » · « Envoyer le signalement »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [MOB-K-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-05%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

## 📐 Règles de gestion

- Un seul motif sélectionnable ; le tap sur un motif envoie immédiatement (sauf « Autre », qui demande une précision de 500 caractères max).
- Pendant l'envoi : ligne sélectionnée avec spinner, autres lignes désactivées.
- Succès -> K-06 ; 409 déjà signalé -> K-06 avec message adapté ; erreur -> snackbar « Impossible d'envoyer ton signalement » et retour à la liste.
- Le message signalé n'est pas masqué automatiquement ; seul le modérateur décide.
- Aucune donnée d'identité du signaleur n'est affichée ni demandée.

## 🛠️ Tâches

- [ ] Créer widgets/report_reason_sheet.dart (liste radio, texte d'anonymat).
- [ ] Créer ReportCubit (idle, submitting, sent, alreadyReported, failure).
- [ ] Créer widgets/report_details_field.dart pour « Autre » (min 10, max 500).
- [ ] Brancher ReportContent.
- [ ] Navigation vers K-06 avec resultat.
- [ ] Ajouter ARB FR/EN/ES.
- [ ] Goldens et tests.
- [ ] Analytics report_submitted (reason, targetType).

## ✔️ Critères d'acceptation

- [ ] Étant donné la feuille, quand elle s'affiche, alors les 5 motifs et le texte d'anonymat sont visibles.
- [ ] Étant donné un tap sur « Spam ou publicité », quand l'API répond 201, alors K-06 s'affiche.
- [ ] Étant donné « Autre », quand l'utilisateur ne saisit aucun détail, alors l'envoi est impossible.
- [ ] Étant donné un 409, quand le signalement est renvoyé, alors K-06 indique que le signalement existe déjà.
- [ ] Étant donné une erreur réseau, quand l'envoi échoue, alors un message s'affiche et les motifs redeviennent actifs.

## 🧪 Tests à écrire

- [ ] report_cubit_test.
- [ ] report_reason_sheet_test.
- [ ] report_details_validation_test.
- [ ] golden_report_reason_light_dark.

## ♿ Accessibilité et i18n

- ARB : reportTitle « Signaler ce message », reportAnonymous, reportReasonHate, reportReasonHarassment, reportReasonSpam, reportReasonInappropriate, reportReasonOther

## 🔗 Dépendances

À réaliser après : `MOB-K-12` · `MOB-K-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §11
- CDC Global §2.15

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
