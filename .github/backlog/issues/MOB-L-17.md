> **MOB-L-17** · Écran · Priorité **P0** · Taille **L** · Phase 1 — MVP

## 🎯 Contexte

Le choix 'S'abonner' récupère l'URL personnelle et propose l'application d'agenda cible avant d'ouvrir le lien webcal://.

## ✅ Objectif

Implémenter la feuille 'S'abonner au calendrier' et l'ouverture du lien.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `L-09` — Abonnement — confirmation
_Module : Calendrier et export agenda_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-09_abonnement-confirmation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-09_abonnement-confirmation__phone_light.webp?raw=true' width='230' alt='L-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-09_abonnement-confirmation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-09_abonnement-confirmation__phone_dark.webp?raw=true' width='230' alt='L-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-09_abonnement-confirmation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-09_abonnement-confirmation__tablet_light.webp?raw=true' width='330' alt='L-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-09_abonnement-confirmation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-09_abonnement-confirmation__tablet_dark.webp?raw=true' width='330' alt='L-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ajouter à mon agenda » · « S’abonner » · « Mise à jour automatique » · « Recommandé » · « Ton agenda se met à jour tout seul en cas de report ou de changement d'horaire (sous 24 h). Lien webcal:// personnel. » · « S’abonner (mise à jour automatique) » · « Télécharger » · « Fichier .ics ponctuel » · « Un fichier téléchargé n'est pas mis à jour automatiquement. Préfère l'abonnement pour un suivi continu. » · « Télécharger ce calendrier » · « S’abonner au calendrier » · « Choisis l'application d'agenda qui recevra les matchs du Barça. » · « Agenda de l’appareil » · « Google Agenda » · « Outlook » · « webcal://api.univers-barca.app/calendar/feed/••••••.ics » · « Ouvrir l’agenda »

**Composants repérés** : `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-CAL-11](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-11%5D%22) · [API-CAL-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-13%5D%22) · [API-CAL-14](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-14%5D%22) · [API-CAL-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-15%5D%22) · [API-CAL-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-17%5D%22) · [API-CAL-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-18%5D%22) · [API-CAL-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-20%5D%22) · [API-CAL-22](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-22%5D%22) · [API-CAL-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-23%5D%22) · [API-CAL-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-24%5D%22) · [MOB-L-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-02%5D%22) · [MOB-L-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-03%5D%22) · [MOB-L-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-25%5D%22) · [MOB-L-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-26%5D%22) · [MOB-L-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-29%5D%22)

## 📐 Règles de gestion

- Appel GET /calendar/subscription-url avec filtres ; spinner dans le bouton ; échec → snackbar 'Impossible de générer ton lien' + Réessayer.
- Feuille : icône sync, titre 'S'ABONNER AU CALENDRIER', texte 'Choisis l'application d'agenda qui recevra les matchs du Barça.', options radio : 'Agenda de l'appareil' (défaut), 'Google Agenda', 'Outlook'.
- Ligne lien masquée 'webcal://api.univers-barca.app/calendar/feed/••••••.ics' + bouton copier (copie l'URL complète, toast 'Lien copié', effacement du presse-papiers non automatique).
- 'Ouvrir l'agenda' : Agenda de l'appareil → launchUrl(webcal://…) ; Google → https://calendar.google.com/calendar/r?cid=<webcal encodé> ; Outlook → https://outlook.live.com/calendar/0/addfromweb?url=<https encodé>.
- Si l'ouverture échoue → écran L-11 (voir issue dédiée).
- Le jeton est secret : jamais loggé, jamais envoyé en analytics ; réutilisé à chaque abonnement (même URL).
- Mise à jour sous 24 h garantie (RG-CAL-03) mentionnée dans la carte parente.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `GET` | `/api/v1/calendar/subscription-url` | Génère/retourne l'URL webcal personnelle (jeton opaque unique, non devinable ; aucune donnée personnelle dans le flux). | Query : competitions=liga,ucl&team=first&reminders=PT1H,P-1D20H (proposition, à confirmer côté API) | {success:true,data:{url:'webcal://api.univers-barca.app/api/v1/calendar/feed/<token>.ics',httpsUrl:'https://…',matchCount:24}} |

## 🛠️ Tâches

- [ ] Créer widgets/subscribe_sheet.dart et CalendarSubscriptionCubit (idle, fetching, ready, opening, failed).
- [ ] Créer widgets/agenda_target_option.dart (radio) et masked_link_row.dart.
- [ ] Implémenter UrlLauncherService (LaunchMode.externalApplication) et la construction des URLs par cible.
- [ ] Copie via Clipboard.setData + toast.
- [ ] Mémoriser la cible choisie et 'abonné = true' localement (utilisé par L-06).
- [ ] Masquer le jeton dans le LoggingInterceptor (pattern /feed/<token>.ics).
- [ ] ARB calendarSubscribeTitle, calendarSubscribeBody, calendarTargetDevice/Google/Outlook, calendarOpenAgenda, calendarLinkCopied.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné 'S'abonner…' alors l'URL est demandée avec les filtres courants puis la feuille s'ouvre.
- [ ] Étant donné la cible Google alors l'URL ouverte est celle de calendar.google.com avec cid encodé.
- [ ] Étant donné le bouton copier alors le presse-papiers contient l'URL complète et le toast s'affiche.
- [ ] Étant donné l'URL affichée alors le jeton est remplacé par ••••••.
- [ ] Étant donné une erreur réseau alors snackbar avec Réessayer.

## 🧪 Tests à écrire

- [ ] Test unitaire construction_urls_google_outlook
- [ ] Test unitaire masquage_jeton
- [ ] Test cubit abonnement_succes
- [ ] Test cubit abonnement_echec
- [ ] Test widget copier_lien
- [ ] Golden test L-09 clair/sombre

## ♿ Accessibilité et i18n

- Radio group sémantique ; le lien masqué est lu 'lien d'abonnement personnel, masqué'.
- Bouton copier labellisé.

## 🔗 Dépendances

À réaliser après : `MOB-L-15` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.9
- CDC Global §2.16.1
- CDC Flutter §7.8
- CDC Backend §3.7

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
