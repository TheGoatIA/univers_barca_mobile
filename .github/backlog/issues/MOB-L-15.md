> **MOB-L-15** · Écran · Priorité **P0** · Taille **L** · Phase 1 — MVP

## 🎯 Contexte

CalendarExportScreen propose deux actions distinctes et clairement libellées (CDC §7.8.1) pour éviter toute confusion sur le comportement attendu.

## ✅ Objectif

Implémenter L-07.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `L-07` — Export — choix du mode
_Module : Calendrier et export agenda_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-07_export-choix-du-mode__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-07_export-choix-du-mode__phone_light.webp?raw=true' width='230' alt='L-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-07_export-choix-du-mode__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-07_export-choix-du-mode__phone_dark.webp?raw=true' width='230' alt='L-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-07_export-choix-du-mode__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-07_export-choix-du-mode__tablet_light.webp?raw=true' width='330' alt='L-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-07_export-choix-du-mode__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-07_export-choix-du-mode__tablet_dark.webp?raw=true' width='330' alt='L-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ajouter à mon agenda » · « S’abonner » · « Mise à jour automatique » · « Recommandé » · « Ton agenda se met à jour tout seul en cas de report ou de changement d'horaire (sous 24 h). Lien webcal:// personnel. » · « S’abonner (mise à jour automatique) » · « Télécharger » · « Fichier .ics ponctuel » · « Un fichier téléchargé n'est pas mis à jour automatiquement. Préfère l'abonnement pour un suivi continu. » · « Télécharger ce calendrier » · « Compétitions incluses » · « Liga · Ligue des champions » · « Modifier »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-CAL-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-08%5D%22) · [API-CAL-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-11%5D%22) · [API-CAL-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-13%5D%22) · [API-CAL-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-16%5D%22) · [API-CAL-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-17%5D%22) · [API-CAL-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-22%5D%22) · [API-CAL-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-24%5D%22) · [MOB-L-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-01%5D%22) · [MOB-L-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-02%5D%22) · [MOB-L-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-03%5D%22) · [MOB-L-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-14%5D%22) · [MOB-L-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-28%5D%22) · [MOB-L-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-29%5D%22)

## 📐 Règles de gestion

- Titre 'AJOUTER À MON AGENDA'.
- Carte recommandée 'S'abonner' : puce 'Mise à jour automatique', badge 'Recommandé', texte 'Ton agenda se met à jour tout seul en cas de report ou de changement d'horaire (sous 24 h). Lien webcal:// personnel.', bouton principal 'S'abonner (mise à jour automatique)'.
- Carte 'Télécharger' : 'Fichier .ics ponctuel', texte 'Un fichier téléchargé n'est pas mis à jour automatiquement. Préfère l'abonnement pour un suivi continu.', bouton secondaire 'Télécharger ce calendrier' (RG-CAL-04).
- Ligne 'Compétitions incluses — Liga · Ligue des champions' avec action 'Modifier' (ouvre L-08).
- Les deux actions utilisent les préférences courantes ; boutons désactivés pendant un chargement (spinner dans le bouton).
- Hors-ligne : boutons désactivés avec message 'Connexion requise pour générer le calendrier'.

## 🛠️ Tâches

- [ ] Créer presentation/pages/calendar_export_page.dart (route /calendar/export) et CalendarExportCubit (états idle/loading/subscribed/downloaded/error).
- [ ] Créer widgets/export_mode_card.dart (variants recommended/secondary), included_competitions_row.dart.
- [ ] Libellés exacts du CDC et de la maquette via ARB (calendarSubscribeAuto, calendarDownloadCalendar…).
- [ ] Brancher 'Modifier' sur la feuille L-08.
- [ ] Brancher 'S'abonner' sur le flux L-09 et 'Télécharger' sur L-10.
- [ ] Désactivation hors-ligne via ConnectivityCubit.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné l'écran ouvert alors les deux cartes et leurs libellés exacts sont visibles.
- [ ] Étant donné Liga+LDC alors 'Liga · Ligue des champions' est affiché dans 'Compétitions incluses'.
- [ ] Étant donné le tap sur 'Modifier' alors la feuille de filtres s'ouvre.
- [ ] Étant donné hors-ligne alors les deux boutons sont désactivés avec message.
- [ ] Étant donné le tap sur 'S'abonner…' alors le flux d'abonnement démarre.

## 🧪 Tests à écrire

- [ ] Test widget ExportPage_deux_actions
- [ ] Test widget competitions_incluses_resume
- [ ] Test widget hors_ligne_boutons_desactives
- [ ] Test cubit transitions
- [ ] Golden test L-07 clair/sombre

## ♿ Accessibilité et i18n

- Les deux boutons ont des libellés distincts et explicites ; le badge 'Recommandé' est lu avec la carte.
- Zones ≥ 48 dp.

## 🔗 Dépendances

À réaliser après : `MOB-L-14` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.9
- CDC Global §2.16.1
- CDC Flutter §7.8
- CDC Flutter §7.8.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
