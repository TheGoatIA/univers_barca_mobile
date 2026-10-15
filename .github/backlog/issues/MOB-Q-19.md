> **MOB-Q-19** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Q-11 « Export des données » : « Reçois une archive de toutes les données associées à ton compte (RGPD). » avec le contenu listé (Profil et préférences ; Progression, badges, historique de jeu ; Conversations avec Barça AI ; Équipe Fantasy et La Masia ; Wallpapers générés) et « Demander mon export ».

## ✅ Objectif

Implémenter l'écran de demande d'export (droit à la portabilité).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-11` — Exporter mes données
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-11_exporter-mes-donnees__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-11_exporter-mes-donnees__phone_light.webp?raw=true' width='230' alt='Q-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-11_exporter-mes-donnees__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-11_exporter-mes-donnees__phone_dark.webp?raw=true' width='230' alt='Q-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-11_exporter-mes-donnees__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-11_exporter-mes-donnees__tablet_light.webp?raw=true' width='330' alt='Q-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-11_exporter-mes-donnees__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-11_exporter-mes-donnees__tablet_dark.webp?raw=true' width='330' alt='Q-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Export des données » · « Exporte tes données » · « Reçois une archive de toutes les données associées à ton compte (RGPD). » · « Profil et préférences » · « Progression, badges, historique de jeu » · « Conversations avec Barça AI » · « Équipe Fantasy et La Masia » · « Wallpapers générés » · « Demander mon export »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-AUTH-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-24%5D%22) · [API-AUTH-25](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-25%5D%22) · [API-AUTH-45](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-45%5D%22) · [MOB-Q-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-03%5D%22) · [MOB-Q-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-28%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- L'export est asynchrone : la demande déclenche un job serveur (`rgpd`), l'archive JSON est envoyée par e-mail avec un lien valable 7 jours (Q-12).
- Une seule demande active à la fois (`EXPORT_ALREADY_PENDING` → message et affichage du statut).
- Vérification d'identité : authentification récente (< 5 min) requise, sinon re-saisie du mot de passe.

## 🛠️ Tâches

- [ ] Créer `export_request_page.dart` + `ExportCubit` (`idle`, `requesting`, `pending`, `ready`, `failure`).
- [ ] Créer `ExportContentList` (5 lignes avec icône).
- [ ] Appeler `POST /users/me/export` (ou `GET /users/me/export` existant selon contrat final) via le repository.
- [ ] Gérer le `PasswordReauthDialog` si l'auth n'est pas récente.
- [ ] Écran/état « Demande en cours — tu recevras un e-mail ».
- [ ] Persister l'état `pending` localement (reprise).
- [ ] Golden test clair/sombre.
- [ ] Tests cubit/widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné « Demander mon export », quand il est touché, alors la demande est envoyée et l'état « en cours » s'affiche.
- [ ] Étant donné une demande déjà en cours, quand l'utilisateur redemande, alors un message indique qu'elle est en cours.
- [ ] Étant donné une authentification ancienne, quand la demande est lancée, alors le mot de passe est demandé.
- [ ] Étant donné le hors-ligne, quand le bouton est touché, alors un message de connexion nécessaire s'affiche.

## 🧪 Tests à écrire

- [ ] bloc_test : demande nominale.
- [ ] bloc_test : déjà en cours.
- [ ] Widget test : réauthentification.
- [ ] Widget test : liste du contenu.
- [ ] Golden test : Q-11.

## ♿ Accessibilité et i18n

- Clés ARB : `exportTitle`, `exportHeadline`, `exportIntro`, `exportItemProfile`, `exportItemProgress`, `exportItemChats`, `exportItemFantasy`, `exportItemWallpapers`, `requestExport`.

## 🔗 Dépendances

À réaliser après : `MOB-Q-14` · `MOB-Q-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.13, §10.2
- CDC Backend §3.1 (ExportUserData)

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
