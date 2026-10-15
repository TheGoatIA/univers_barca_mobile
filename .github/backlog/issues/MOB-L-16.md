> **MOB-L-16** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

RG-CAL-05 : l'utilisateur filtre l'export par compétition avant génération du flux ou du fichier.

## ✅ Objectif

Implémenter la feuille de L-08 avec compteur dynamique.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `L-08` — Export — filtres par compétition
_Module : Calendrier et export agenda_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-08_export-filtres-par-competition__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-08_export-filtres-par-competition__phone_light.webp?raw=true' width='230' alt='L-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-08_export-filtres-par-competition__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-08_export-filtres-par-competition__phone_dark.webp?raw=true' width='230' alt='L-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-08_export-filtres-par-competition__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-08_export-filtres-par-competition__tablet_light.webp?raw=true' width='330' alt='L-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-08_export-filtres-par-competition__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-08_export-filtres-par-competition__tablet_dark.webp?raw=true' width='330' alt='L-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ajouter à mon agenda » · « S’abonner » · « Mise à jour automatique » · « Recommandé » · « Ton agenda se met à jour tout seul en cas de report ou de changement d'horaire (sous 24 h). Lien webcal:// personnel. » · « S’abonner (mise à jour automatique) » · « Télécharger » · « Fichier .ics ponctuel » · « Un fichier téléchargé n'est pas mis à jour automatiquement. Préfère l'abonnement pour un suivi continu. » · « Télécharger ce calendrier » · « Compétitions à exporter » · « Liga » · « Ligue des champions » · « Coupe du Roi » · « Supercoupe » · « Matchs amicaux » · « Équipe première uniquement » · « Inclure l’équipe féminine » · « Inclure Barça Atlètic » · « Appliquer · 24 matchs »

**Composants repérés** : `btn`, `card`, `sheet`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-CAL-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-01%5D%22) · [API-CAL-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-12%5D%22) · [API-CAL-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-16%5D%22) · [API-CAL-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-22%5D%22) · [MOB-L-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-01%5D%22) · [MOB-L-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-14%5D%22) · [MOB-L-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-28%5D%22) · [MOB-L-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-29%5D%22)

## 📐 Règles de gestion

- Titre 'COMPÉTITIONS À EXPORTER' ; interrupteurs : Liga (on), Ligue des champions (on), Coupe du Roi, Supercoupe, Matchs amicaux.
- Cases à cocher : 'Équipe première uniquement' (cochée), 'Inclure l'équipe féminine', 'Inclure Barça Atlètic' ; règles d'exclusivité de la persistance.
- Bouton 'Appliquer · 24 matchs' : le nombre se met à jour en direct à chaque changement ; 'Appliquer · 0 match' désactivé.
- Fermer sans appliquer annule les modifications.
- Équipes féminine/réserve 'selon disponibilité des données' : si l'API n'expose pas ces équipes, les cases sont désactivées avec légende 'Bientôt disponible'.
- Au moins une compétition obligatoire.

## 🛠️ Tâches

- [ ] Créer widgets/export_filters_sheet.dart (bottom sheet) avec brouillon local de ExportPreferences.
- [ ] Créer widgets/competition_switch_tile.dart, scope_checkbox_tile.dart.
- [ ] Utiliser CountMatchesForPreferences pour le compteur.
- [ ] Appliquer → ExportPreferencesCubit.save + fermeture.
- [ ] Gérer la disponibilité des équipes (flag du backend).
- [ ] ARB calendarExportCompetitions, calendarFirstTeamOnly, calendarIncludeWomen, calendarIncludeAtletic, calendarApplyCount='{count, plural, =0{Aucun match} one{Appliquer · # match} other{Appliquer · # matchs}}'.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné Liga+LDC alors 'Appliquer · 24 matchs' (valeur issue des données).
- [ ] Étant donné Coupe du Roi activée alors le compteur augmente.
- [ ] Étant donné 'Inclure l'équipe féminine' alors 'Équipe première uniquement' est décoché.
- [ ] Étant donné fermeture sans appliquer alors les préférences ne changent pas.
- [ ] Étant donné la dernière compétition désactivée alors un message l'empêche.

## 🧪 Tests à écrire

- [ ] Test widget FiltersSheet_etat_initial
- [ ] Test widget compteur_dynamique
- [ ] Test widget exclusivite_scope
- [ ] Test widget annulation
- [ ] Test widget equipes_indisponibles_desactivees
- [ ] Golden test L-08 clair/sombre

## ♿ Accessibilité et i18n

- Interrupteurs : label + état annoncé.
- Compteur annoncé via liveRegion.

## 🔗 Dépendances

À réaliser après : `MOB-L-15` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.9
- CDC Global §2.16.1
- CDC Flutter §7.8

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
