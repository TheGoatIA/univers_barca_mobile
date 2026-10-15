> **MOB-L-21** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Si l'utilisateur refuse l'accès à l'agenda, l'application ne bloque pas : elle propose le .ics ou l'ouverture des réglages.

## ✅ Objectif

Implémenter la modale L-13 et la gestion du refus définitif.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `L-13` — Autorisation refusée — repli .ics
_Module : Calendrier et export agenda_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-13_autorisation-refusee-repli-ics__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-13_autorisation-refusee-repli-ics__phone_light.webp?raw=true' width='230' alt='L-13 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-13_autorisation-refusee-repli-ics__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-13_autorisation-refusee-repli-ics__phone_dark.webp?raw=true' width='230' alt='L-13 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-13_autorisation-refusee-repli-ics__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-13_autorisation-refusee-repli-ics__tablet_light.webp?raw=true' width='330' alt='L-13 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-13_autorisation-refusee-repli-ics__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/L/L-13_autorisation-refusee-repli-ics__tablet_dark.webp?raw=true' width='330' alt='L-13 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Ajouter à mon agenda » · « S’abonner » · « Mise à jour automatique » · « Recommandé » · « Ton agenda se met à jour tout seul en cas de report ou de changement d'horaire (sous 24 h). Lien webcal:// personnel. » · « S’abonner (mise à jour automatique) » · « Télécharger » · « Fichier .ics ponctuel » · « Un fichier téléchargé n'est pas mis à jour automatiquement. Préfère l'abonnement pour un suivi continu. » · « Télécharger ce calendrier » · « Accès à l’agenda refusé » · « Pas de souci : tu peux toujours télécharger un fichier .ics ou autoriser l'accès dans les réglages de ton téléphone. » · « Télécharger le fichier .ics » · « Ouvrir les réglages »

**Composants repérés** : `btn`, `card`, `modal`

</details>

**Issues liées sur ce même écran :** [API-CAL-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-CAL-12%5D%22) · [MOB-L-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-22%5D%22) · [MOB-L-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-25%5D%22) · [MOB-L-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-L-29%5D%22)

## 📐 Règles de gestion

- Modale : titre 'Accès à l'agenda refusé', texte 'Pas de souci : tu peux toujours télécharger un fichier .ics ou autoriser l'accès dans les réglages de ton téléphone.', boutons 'Télécharger le fichier .ics' et 'Ouvrir les réglages'.
- 'Ouvrir les réglages' → openAppSettings() ; au retour (resume) la permission est réévaluée et l'ajout reprend si accordée.
- Refus simple (première fois) : possibilité de redemander le dialogue ; refus définitif (iOS : denied ; Android : permanentlyDenied) : seul le chemin réglages.
- Aucune relance automatique de la demande (pas de harcèlement) ; la modale ne s'affiche qu'après une action explicite.
- Le reste de l'application (abonnement webcal, .ics) reste pleinement fonctionnel.

## 🛠️ Tâches

- [ ] Créer widgets/calendar_permission_denied_dialog.dart.
- [ ] Étendre CalendarPermissionService avec openSettings() et recheckOnResume.
- [ ] Observer WidgetsBindingObserver pour la reprise.
- [ ] Enchaîner vers DownloadIcs.
- [ ] ARB calendarPermDeniedTitle/Body, calendarOpenSettings.
- [ ] Golden tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné le refus alors la modale L-13 s'affiche avec deux boutons.
- [ ] Étant donné 'Ouvrir les réglages' puis permission accordée alors l'ajout reprend au retour.
- [ ] Étant donné 'Télécharger le fichier .ics' alors le flux L-10 démarre.
- [ ] Étant donné un refus définitif alors le bouton de redemande n'est pas proposé.

## 🧪 Tests à écrire

- [ ] Test cubit refus_affiche_modale
- [ ] Test cubit reprise_apres_reglages
- [ ] Test widget textes_modale
- [ ] Test cubit refus_definitif
- [ ] Golden test L-13

## ♿ Accessibilité et i18n

- Dialogue avec focus piégé ; boutons ≥ 48 dp.

## 🔗 Dépendances

À réaliser après : `MOB-L-20` · `MOB-L-19` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §6.4
- CDC Flutter §7.8

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
