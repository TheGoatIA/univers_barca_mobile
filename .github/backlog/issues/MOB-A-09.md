> **MOB-A-09** · Écran · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Pendant une maintenance, l'application affiche un écran informatif avec l'heure de retour prévue et propose de suivre le statut.

## ✅ Objectif

Implémenter `MaintenancePage` conforme à A-06 avec heure de retour localisée et vérification automatique de fin de maintenance.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `A-06` — Maintenance planifiée
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-06_maintenance-planifiee__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-06_maintenance-planifiee__phone_light.webp?raw=true' width='230' alt='A-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-06_maintenance-planifiee__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-06_maintenance-planifiee__phone_dark.webp?raw=true' width='230' alt='A-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-06_maintenance-planifiee__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-06_maintenance-planifiee__tablet_light.webp?raw=true' width='330' alt='A-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-06_maintenance-planifiee__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-06_maintenance-planifiee__tablet_dark.webp?raw=true' width='330' alt='A-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Maintenance en cours » · « Univers Barça fait une petite révision pour revenir plus fort. Retour prévu aujourd'hui vers » · « Active les notifications pour être prévenu(e) du retour. » · « Suivre le statut »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-A-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-01%5D%22) · [MOB-A-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-08%5D%22) · [MOB-A-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-17%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

## 📐 Règles de gestion

- Textes : titre « Maintenance en cours », « Univers Barça fait une petite révision pour revenir plus fort. Retour prévu aujourd'hui vers » + heure en grand « 23:30 », « Active les notifications pour être prévenu(e) du retour. », bouton « Suivre le statut ».
- L'heure est `maintenance.until` converti dans le fuseau local (format 24 h en fr/es, 12 h en en-US) ; si la date n'est pas aujourd'hui : « Retour prévu le 16 octobre vers 08:00 » ; si `until` absent : « Retour dès que possible ».
- « Suivre le statut » ouvre la page de statut publique (URL de configuration) dans le navigateur externe ; sans URL, le bouton relance la vérification.
- Aucune navigation possible hors de cet écran (retour système désactivé via `PopScope(canPop:false)`).

## 🔄 Comportement et états

- Poll de la config toutes les 60 s ; fin de maintenance → fondu vers la destination initiale.
- Carte d'invitation aux notifications : si permission déjà accordée, texte remplacé par « Tu seras prévenu(e) du retour. » ; sinon l'appui déclenche la pré-permission (B-15).
- Hors-ligne : bannière A-03 prioritaire.

## 🛠️ Tâches

- [ ] Créer `lib/features/system/presentation/pages/maintenance_page.dart` et `maintenance_cubit.dart` (poll avec `Timer.periodic`).
- [ ] Formater l'heure avec `DateFormat.Hm` selon la locale.
- [ ] Ajouter `url_launcher` pour le bouton statut (mode `externalApplication`).
- [ ] Intercepter le bouton retour Android avec `PopScope`.
- [ ] Clés ARB `maintenanceTitle`, `maintenanceMessage`, `maintenanceBackAt`, `maintenanceNotifyHint`, `maintenanceFollowStatus`.
- [ ] Abonner l'appareil à un topic FCM `maintenance` seulement avec permission déjà accordée.
- [ ] Golden clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné until=23:30 locale quand la page s'affiche alors « 23:30 » est visible.
- [ ] Étant donné la fin de maintenance quand le poll le détecte alors l'utilisateur est redirigé sans action.
- [ ] Étant donné Android quand l'utilisateur appuie retour alors l'application ne quitte pas l'écran.
- [ ] Étant donné until absent quand la page s'affiche alors « Retour dès que possible » s'affiche.

## 🧪 Tests à écrire

- [ ] Widget test : formatage heure en fr/en/es.
- [ ] Test cubit : fin de maintenance → état `resolved`.
- [ ] Test : PopScope bloque le retour.
- [ ] Golden `maintenance` clair/sombre.
- [ ] Test : URL absente → relance de la config.

## ♿ Accessibilité et i18n

- Heure lue « vingt-trois heures trente » via Semantics.
- Bouton ≥ 48 dp.
- Pas d'animation en mode réduit.

## 🔗 Dépendances

À réaliser après : `MOB-A-08` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §6
- CDC Flutter §6.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
