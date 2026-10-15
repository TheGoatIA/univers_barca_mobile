> **MOB-O-23** · Fonctionnel · Priorité **P2** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

La cloche d'accès à l'inbox doit signaler les notifications non lues, et l'icône de l'application peut afficher un badge.

## ✅ Objectif

Exposer un compteur unique alimenté par l'API, le cache et les push.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `O-05` — Boîte de réception
_Module : Notifications_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__phone_light.webp?raw=true' width='230' alt='O-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__phone_dark.webp?raw=true' width='230' alt='O-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__tablet_light.webp?raw=true' width='330' alt='O-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/O/O-05_boite-de-reception__tablet_dark.webp?raw=true' width='330' alt='O-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Notifications » · « Toutes » · « Matchs » · « Tout lire » · « Match dans 1 h » · « Barça – Real Madrid · Liga » · « il y a 5 min » · « Ta série est en danger » · « Joue avant minuit » · « il y a 3 h » · « Nouveau message dans Culés Cameroun » · « Mamadou : « Qui est chaud pour… » » · « Hier » · « Anniversaire de Pedri » · « Il fête ses 23 ans aujourd’hui 🎂 » · « Badge débloqué » · « Série de 10 jours » · « 12 oct. »

**Composants repérés** : `btn`, `chip`

</details>

**Issues liées sur ce même écran :** [API-NOTIF-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-01%5D%22) · [API-NOTIF-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-12%5D%22) · [API-NOTIF-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-17%5D%22) · [API-NOTIF-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-19%5D%22) · [API-NOTIF-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-20%5D%22) · [API-NOTIF-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-21%5D%22) · [API-NOTIF-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-28%5D%22) · [API-NOTIF-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-29%5D%22) · [API-NOTIF-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-NOTIF-31%5D%22) · [MOB-O-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-01%5D%22) · [MOB-O-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-02%5D%22) · [MOB-O-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-03%5D%22) · [MOB-O-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-04%5D%22) · [MOB-O-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-05%5D%22) · [MOB-O-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-15%5D%22) · [MOB-O-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-16%5D%22) · [MOB-O-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-18%5D%22) · [MOB-O-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-26%5D%22) · [MOB-O-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-27%5D%22) · [MOB-O-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-O-28%5D%22)

## 📐 Règles de gestion

- Compteur = `GET /notifications/unread-count`, mis à jour à chaque push reçu, à chaque lecture et au retour au premier plan.
- Badge d'icône iOS (`setBadge`) = compteur ; remis à 0 à l'ouverture de l'inbox ou « Tout lire ».
- Affichage plafonné à « 9+ » sur la cloche.

## 🛠️ Tâches

- [ ] Créer `UnreadCountCubit` global (`@lazySingleton`) alimenté par `watchUnreadCount()`.
- [ ] Ajouter `NotificationBellButton` (cloche + pastille) pour l'en-tête du dashboard (groupe C).
- [ ] Intégrer `flutter_app_badger` / API iOS pour le badge d'icône (désactivable).
- [ ] Resync au `resumed` (throttle 60 s).
- [ ] Mettre à jour à la réception d'un `PushEvent`.
- [ ] Tests.
- [ ] Gérer le hors-ligne (dernière valeur).
- [ ] Documenter.

## ✔️ Critères d'acceptation

- [ ] Étant donné 12 non-lus, quand la cloche s'affiche, alors « 9+ » est visible.
- [ ] Étant donné « Tout lire », quand il est touché, alors le badge d'icône passe à 0.
- [ ] Étant donné un push reçu, quand il arrive, alors le compteur augmente de 1.
- [ ] Étant donné le hors-ligne, quand l'app s'ouvre, alors la dernière valeur connue est affichée.

## 🧪 Tests à écrire

- [ ] Test : plafond 9+.
- [ ] Test : push incrémente.
- [ ] Test : lecture décrémente.
- [ ] Test : resync resumed.

## 🔗 Dépendances

À réaliser après : `MOB-O-15` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.11

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
