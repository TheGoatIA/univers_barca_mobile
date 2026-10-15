> **MOB-O-11** · Fonctionnel · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Les heures calmes, l'heure du rappel de série et l'horaire « 20:00 WAT » d'une notification de match dépendent du fuseau de l'utilisateur. La minimisation RGPD impose de n'envoyer que le fuseau IANA de l'appareil, jamais une position.

## ✅ Objectif

Fournir au serveur le fuseau horaire et la langue et définir les exceptions de silence.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `O-04` — Heures calmes
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__phone_light.webp?raw=true' width='230' alt='O-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__phone_dark.webp?raw=true' width='230' alt='O-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__tablet_light.webp?raw=true' width='330' alt='O-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-04_heures-calmes__tablet_dark.webp?raw=true' width='330' alt='O-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Heures calmes » · « Activer les heures calmes » · « De » · « Jours » · « Les alertes de match en direct ne sont jamais silencieuses pour les rencontres que tu suis. »

**Composants repérés** : `card`, `chip`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-01%5D%22) · [API-NOTIF-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-04%5D%22) · [API-NOTIF-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-05%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [MOB-O-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-02%5D%22) · [MOB-O-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-06%5D%22) · [MOB-O-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-10%5D%22) · [MOB-O-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-24%5D%22) · [MOB-O-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-26%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22) · [MOB-O-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-28%5D%22)

#### `O-03` — Détail — série en danger
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__phone_light.webp?raw=true' width='230' alt='O-03 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__phone_dark.webp?raw=true' width='230' alt='O-03 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__tablet_light.webp?raw=true' width='330' alt='O-03 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-03_detail-serie-en-danger__tablet_dark.webp?raw=true' width='330' alt='O-03 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Série » · « Protège ta série de 12 jours » · « Une notification discrète t'avertit si le jeu du jour n'est pas joué. » · « Activer le rappel » · « Heure du rappel » · « Aperçu » · « Ta série est en danger 🔥 » · « Joue à Guess the Player avant minuit. »

**Composants repérés** : `card`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-04%5D%22) · [API-NOTIF-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-15%5D%22) · [API-NOTIF-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-16%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [MOB-O-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-02%5D%22) · [MOB-O-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-06%5D%22) · [MOB-O-09](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-09%5D%22) · [MOB-O-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-26%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22) · [MOB-O-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-28%5D%22)

#### `O-08` — Écran verrouillé — rappel de match
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__phone_light.webp?raw=true' width='230' alt='O-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__phone_dark.webp?raw=true' width='230' alt='O-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__tablet_light.webp?raw=true' width='330' alt='O-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-08_ecran-verrouille-rappel-de-match__tablet_dark.webp?raw=true' width='330' alt='O-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Jeudi 15 octobre » · « Match dans 1 h ⚽ » · « maintenant » · « FC Barcelone – Real Madrid · Liga · 20:00 WAT »

</details>

**Issues liées sur ce même écran :** [API-NOTIF-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-07%5D%22) · [API-NOTIF-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-08%5D%22) · [API-NOTIF-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-09%5D%22) · [API-NOTIF-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-12%5D%22) · [API-NOTIF-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-13%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [API-NOTIF-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-30%5D%22) · [MOB-O-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-18%5D%22) · [MOB-O-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-19%5D%22) · [MOB-O-20](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-20%5D%22) · [MOB-O-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-25%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22) · [MOB-O-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-28%5D%22)

## 📐 Règles de gestion

- Le mobile envoie `timezone` (IANA, ex. `Africa/Douala`) et `locale` à l'enregistrement du jeton et à chaque changement de fuseau détecté au démarrage.
- Les heures calmes sont évaluées par le serveur dans ce fuseau ; les alertes de match en direct des matchs suivis ne sont jamais retenues (encart O-04).
- Pendant les heures calmes, les autres notifications sont envoyées sans son ni vibration (ou différées à la fin de plage : décision serveur, à confirmer).

## 🛠️ Tâches

- [ ] Ajouter `flutter_timezone` à `pubspec.yaml` et créer `core/services/timezone_service.dart`.
- [ ] Envoyer `timezone` dans `RegisterDeviceToken` et `PATCH notification-preferences`.
- [ ] Détecter un changement de fuseau (`didChangeAppLifecycleState → resumed`) et re-enregistrer.
- [ ] Afficher dans O-04 l'abréviation de fuseau (« WAT ») via `intl`.
- [ ] Documenter la règle d'exception live dans `docs/notifications.md`.
- [ ] Tests avec fuseaux simulés.
- [ ] Gérer la plage traversant minuit dans un utilitaire `QuietWindow.contains(DateTime)` (test client pour l'aperçu).
- [ ] Revue RGPD : pas de ville ni coordonnées envoyées.

## ✔️ Critères d'acceptation

- [ ] Étant donné un appareil à Douala, quand le jeton est enregistré, alors `timezone:'Africa/Douala'` est envoyé.
- [ ] Étant donné un voyage vers Paris, quand l'app revient au premier plan, alors le fuseau est mis à jour.
- [ ] Étant donné la plage 23:00-07:00, quand l'heure testée est 02:00, alors `QuietWindow.contains` est vrai.
- [ ] Étant donné un match suivi en direct, quand c'est une heure calme, alors la règle d'exception est documentée comme active côté serveur.

## 🧪 Tests à écrire

- [ ] Test unitaire : `QuietWindow` traversant minuit.
- [ ] Test : envoi du fuseau.
- [ ] Test : détection de changement de fuseau.
- [ ] Test : abréviation WAT.

## 🔗 Dépendances

À réaliser après : `MOB-O-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.12
- CDC Global §10.2
- CDC Backend §3.10

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
