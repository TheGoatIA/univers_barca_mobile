> **MOB-L-18** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

CDC §7.8.1 : en cas d'échec d'ouverture (aucune application d'agenda configurée), un message explicite propose le téléchargement du fichier .ics.

## ✅ Objectif

Implémenter la modale d'échec de L-11.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `L-11` — Échec d’ouverture du lien webcal
_Module : Calendrier et export agenda_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-11_echec-d-ouverture-du-lien-webcal__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-11_echec-d-ouverture-du-lien-webcal__phone_light.webp?raw=true' width='230' alt='L-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-11_echec-d-ouverture-du-lien-webcal__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-11_echec-d-ouverture-du-lien-webcal__phone_dark.webp?raw=true' width='230' alt='L-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-11_echec-d-ouverture-du-lien-webcal__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-11_echec-d-ouverture-du-lien-webcal__tablet_light.webp?raw=true' width='330' alt='L-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-11_echec-d-ouverture-du-lien-webcal__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-11_echec-d-ouverture-du-lien-webcal__tablet_dark.webp?raw=true' width='330' alt='L-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ajouter à mon agenda » · « S’abonner » · « Mise à jour automatique » · « Recommandé » · « Ton agenda se met à jour tout seul en cas de report ou de changement d'horaire (sous 24 h). Lien webcal:// personnel. » · « S’abonner (mise à jour automatique) » · « Télécharger » · « Fichier .ics ponctuel » · « Un fichier téléchargé n'est pas mis à jour automatiquement. Préfère l'abonnement pour un suivi continu. » · « Télécharger ce calendrier » · « Agenda introuvable » · « Aucune application d'agenda n'a pu ouvrir le lien d'abonnement. Tu peux télécharger le fichier .ics à la place. » · « Télécharger le fichier .ics » · « Copier le lien d’abonnement »

**Composants repérés** : `btn`, `card`, `modal`

</details>

**Issues liées sur ce même écran :** [API-CAL-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-13%5D%22) · [API-CAL-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-15%5D%22) · [API-CAL-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-22%5D%22) · [API-CAL-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-24%5D%22) · [MOB-L-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-26%5D%22) · [MOB-L-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-29%5D%22)

## 📐 Règles de gestion

- Détection : canLaunchUrl(webcal) == false ou launchUrl retourne false/lève une exception.
- Modale : titre 'Agenda introuvable', texte 'Aucune application d'agenda n'a pu ouvrir le lien d'abonnement. Tu peux télécharger le fichier .ics à la place.', boutons 'Télécharger le fichier .ics' (primaire) et 'Copier le lien d'abonnement' (secondaire).
- 'Télécharger…' enchaîne sur le flux L-10 avec les mêmes filtres ; 'Copier' copie l'URL complète.
- Sur Android 11+ la résolution des intents nécessite <queries> ; sur iOS le schéma webcal est géré par l'app Calendrier.
- Aucune donnée d'erreur technique brute affichée.

## 🛠️ Tâches

- [ ] Créer widgets/webcal_failure_dialog.dart.
- [ ] Compléter UrlLauncherService.tryOpenWebcal() retournant un résultat typé.
- [ ] Brancher CalendarSubscriptionCubit.failed(openFailed).
- [ ] Enchaîner vers DownloadIcs.
- [ ] ARB calendarAgendaNotFoundTitle/Body, calendarDownloadIcsFile, calendarCopySubscriptionLink.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné canLaunchUrl=false alors la modale 'Agenda introuvable' s'affiche.
- [ ] Étant donné 'Télécharger le fichier .ics' alors le téléchargement démarre.
- [ ] Étant donné 'Copier le lien d'abonnement' alors le lien est copié.
- [ ] Étant donné launchUrl qui lève une exception alors la même modale s'affiche.

## 🧪 Tests à écrire

- [ ] Test unitaire tryOpenWebcal_echec
- [ ] Test widget dialogue_textes_boutons
- [ ] Test cubit enchainement_vers_telechargement
- [ ] Test widget copie_lien
- [ ] Golden test L-11

## ♿ Accessibilité et i18n

- Dialogue avec focus piégé ; boutons ≥ 48 dp.

## 🔗 Dépendances

À réaliser après : `MOB-L-17` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.8.1
- CDC Global §2.16.1
- CDC Global §2.16.1 (RG-CAL-04)

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
