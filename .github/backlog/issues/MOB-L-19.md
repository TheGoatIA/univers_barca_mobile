> **MOB-L-19** · Écran · Priorité **P0** · Taille **L** · Phase 1 — MVP

## 🎯 Contexte

Export ponctuel : téléchargement d'un fichier .ics puis modale rappelant qu'il ne se met pas à jour (RG-CAL-04).

## ✅ Objectif

Implémenter le téléchargement, l'enregistrement et la modale de L-10.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `L-10` — Fichier .ics téléchargé
_Module : Calendrier et export agenda_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-10_fichier-ics-telecharge__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-10_fichier-ics-telecharge__phone_light.webp?raw=true' width='230' alt='L-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-10_fichier-ics-telecharge__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-10_fichier-ics-telecharge__phone_dark.webp?raw=true' width='230' alt='L-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-10_fichier-ics-telecharge__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-10_fichier-ics-telecharge__tablet_light.webp?raw=true' width='330' alt='L-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-10_fichier-ics-telecharge__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-10_fichier-ics-telecharge__tablet_dark.webp?raw=true' width='330' alt='L-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ajouter à mon agenda » · « S’abonner » · « Mise à jour automatique » · « Recommandé » · « Ton agenda se met à jour tout seul en cas de report ou de changement d'horaire (sous 24 h). Lien webcal:// personnel. » · « S’abonner (mise à jour automatique) » · « Télécharger » · « Fichier .ics ponctuel » · « Un fichier téléchargé n'est pas mis à jour automatiquement. Préfère l'abonnement pour un suivi continu. » · « Télécharger ce calendrier » · « Calendrier téléchargé » · « univers-barca-2026-27.ics · 24 matchs » · « Ce fichier ne se met pas à jour automatiquement. Utilise l'abonnement pour suivre les reports. » · « Ouvrir dans l’agenda » · « S’abonner plutôt »

**Composants repérés** : `btn`, `card`, `modal`

</details>

**Issues liées sur ce même écran :** [API-CAL-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-08%5D%22) · [API-CAL-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-12%5D%22) · [API-CAL-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-21%5D%22) · [API-CAL-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-22%5D%22) · [MOB-L-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-02%5D%22) · [MOB-L-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-03%5D%22) · [MOB-L-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-25%5D%22) · [MOB-L-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-29%5D%22)

## 📐 Règles de gestion

- Appel GET /calendar/export.ics avec filtres ; barre de progression indéterminée ; timeout 30 s.
- Fichier enregistré dans le répertoire temporaire/documents (path_provider) sous 'univers-barca-2026-27.ics' ; nom saison calculé (août→juillet).
- Modale 'Calendrier téléchargé' : 'univers-barca-2026-27.ics · 24 matchs', texte 'Ce fichier ne se met pas à jour automatiquement. Utilise l'abonnement pour suivre les reports.', boutons 'Ouvrir dans l'agenda' (primaire) et 'S'abonner plutôt' (secondaire).
- 'Ouvrir dans l'agenda' : feuille de partage/ouverture système (Android : intent VIEW text/calendar via FileProvider ; iOS : UIActivityViewController/QuickLook).
- 'S'abonner plutôt' bascule vers L-09.
- Le nombre de matchs vient de l'en-tête X-Match-Count ou du comptage local ; validation minimale du contenu (commence par BEGIN:VCALENDAR).
- Erreur de stockage ou fichier invalide → snackbar 'Échec du téléchargement' + Réessayer.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `GET` | `/api/v1/calendar/export.ics` | Téléchargement ponctuel d'un fichier .ics filtré (RFC 5545). | Query : competitions, team, reminders ; Accept: text/calendar | 200 Content-Type: text/calendar; charset=utf-8 ; Content-Disposition: attachment; filename="univers-barca-2026-27.ics" |

## 🛠️ Tâches

- [ ] Créer CalendarExportCubit.download() et IcsFileService (path_provider, open_filex ou share_plus).
- [ ] Créer widgets/ics_downloaded_dialog.dart.
- [ ] Calculer le nom de fichier saison (SeasonNamer).
- [ ] Configurer FileProvider Android (android/app/src/main/res/xml/file_paths.xml) et le type MIME text/calendar.
- [ ] Valider l'en-tête BEGIN:VCALENDAR.
- [ ] ARB calendarDownloaded, calendarFileNotAutoUpdated, calendarOpenInAgenda, calendarSubscribeInstead.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné un export réussi alors la modale affiche le nom du fichier et '24 matchs'.
- [ ] Étant donné 'S'abonner plutôt' alors la feuille d'abonnement s'ouvre.
- [ ] Étant donné un contenu invalide alors 'Échec du téléchargement'.
- [ ] Étant donné septembre 2026 alors le nom est 'univers-barca-2026-27.ics'.

## 🧪 Tests à écrire

- [ ] Test unitaire SeasonNamer
- [ ] Test unitaire validation_ics
- [ ] Test cubit download_succes
- [ ] Test cubit download_echec
- [ ] Test widget dialogue_textes
- [ ] Golden test L-10

## ♿ Accessibilité et i18n

- Modale annoncée ; boutons ≥ 48 dp.

## 🔗 Dépendances

À réaliser après : `MOB-L-15` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.9
- CDC Global §2.16.1
- CDC Flutter §7.8
- CDC Global §2.16.1 (RG-CAL-04)

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
