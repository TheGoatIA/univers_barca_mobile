> **MOB-Q-28** · Sécurité · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Changement de mot de passe/e-mail, export et suppression sont des opérations à fort impact : elles doivent résister à un téléphone déverrouillé, au vol de session et à la force brute (CDC Backend §5.1, §5.3, rate limiting §10.2).

## ✅ Objectif

Imposer réauthentification récente, limitation d'essais et confirmation sur toutes ces actions.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-08` — Changer le mot de passe
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__phone_light.webp?raw=true' width='230' alt='Q-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__phone_dark.webp?raw=true' width='230' alt='Q-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__tablet_light.webp?raw=true' width='330' alt='Q-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-08_changer-le-mot-de-passe__tablet_dark.webp?raw=true' width='330' alt='Q-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Mot de passe » · « Mot de passe actuel » · « •••••••• » · « Nouveau mot de passe » · « •••••••••• » · « Mot de passe solide » · « Confirmation » · « Les mots de passe ne correspondent pas » · « Mettre à jour »

**Composants repérés** : `btn`, `input`

</details>

**Issues liées sur ce même écran :** [API-AUTH-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-06%5D%22) · [API-AUTH-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-12%5D%22) · [API-AUTH-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-19%5D%22) · [MOB-Q-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-03%5D%22) · [MOB-Q-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-15%5D%22) · [MOB-Q-16](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-16%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

#### `Q-09` — Changer l’e-mail
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-09_changer-l-e-mail__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-09_changer-l-e-mail__phone_light.webp?raw=true' width='230' alt='Q-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-09_changer-l-e-mail__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-09_changer-l-e-mail__phone_dark.webp?raw=true' width='230' alt='Q-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-09_changer-l-e-mail__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-09_changer-l-e-mail__tablet_light.webp?raw=true' width='330' alt='Q-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-09_changer-l-e-mail__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-09_changer-l-e-mail__tablet_dark.webp?raw=true' width='330' alt='Q-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Adresse e-mail » · « Un code de vérification sera envoyé à ta nouvelle adresse. » · « E-mail actuel » · « boris@exemple.com » · « Nouvel e-mail » · « boris.t@exemple.com » · « Mot de passe » · « •••••••• » · « Envoyer le code »

**Composants repérés** : `btn`, `input`

</details>

**Issues liées sur ce même écran :** [API-AUTH-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-20%5D%22) · [MOB-Q-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-03%5D%22) · [MOB-Q-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-17%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

#### `Q-10` — Appareils connectés
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-10_appareils-connectes__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-10_appareils-connectes__phone_light.webp?raw=true' width='230' alt='Q-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-10_appareils-connectes__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-10_appareils-connectes__phone_dark.webp?raw=true' width='230' alt='Q-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-10_appareils-connectes__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-10_appareils-connectes__tablet_light.webp?raw=true' width='330' alt='Q-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-10_appareils-connectes__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-10_appareils-connectes__tablet_dark.webp?raw=true' width='330' alt='Q-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Appareils » · « Tu es connecté(e) sur ces appareils. Déconnecte ceux que tu ne reconnais pas. » · « iPhone 15 · Yaoundé » · « Cet appareil · actif maintenant » · « Actuel » · « iPad Air · Yaoundé » · « Dernière activité il y a 2 j » · « Retirer » · « Pixel 8 · Paris » · « Dernière activité il y a 3 sem. » · « Se déconnecter de tous les appareils »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-15%5D%22) · [API-AUTH-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-16%5D%22) · [API-AUTH-43](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-43%5D%22) · [API-AUTH-45](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-45%5D%22) · [MOB-Q-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-02%5D%22) · [MOB-Q-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-03%5D%22) · [MOB-Q-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-18%5D%22) · [MOB-Q-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-23%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

#### `Q-11` — Exporter mes données
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-11_exporter-mes-donnees__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-11_exporter-mes-donnees__phone_light.webp?raw=true' width='230' alt='Q-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-11_exporter-mes-donnees__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-11_exporter-mes-donnees__phone_dark.webp?raw=true' width='230' alt='Q-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-11_exporter-mes-donnees__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-11_exporter-mes-donnees__tablet_light.webp?raw=true' width='330' alt='Q-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-11_exporter-mes-donnees__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-11_exporter-mes-donnees__tablet_dark.webp?raw=true' width='330' alt='Q-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Export des données » · « Exporte tes données » · « Reçois une archive de toutes les données associées à ton compte (RGPD). » · « Profil et préférences » · « Progression, badges, historique de jeu » · « Conversations avec Barça AI » · « Équipe Fantasy et La Masia » · « Wallpapers générés » · « Demander mon export »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-AUTH-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-24%5D%22) · [API-AUTH-25](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-25%5D%22) · [API-AUTH-45](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-45%5D%22) · [MOB-Q-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-03%5D%22) · [MOB-Q-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-19%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

#### `Q-13` — Suppression du compte — conséquences
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-13_suppression-du-compte-consequences__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-13_suppression-du-compte-consequences__phone_light.webp?raw=true' width='230' alt='Q-13 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-13_suppression-du-compte-consequences__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-13_suppression-du-compte-consequences__phone_dark.webp?raw=true' width='230' alt='Q-13 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-13_suppression-du-compte-consequences__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-13_suppression-du-compte-consequences__tablet_light.webp?raw=true' width='330' alt='Q-13 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-13_suppression-du-compte-consequences__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-13_suppression-du-compte-consequences__tablet_dark.webp?raw=true' width='330' alt='Q-13 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Supprimer le compte » · « 1/3 » · « Supprimer mon compte » · « Ta progression, tes badges et ta série seront effacés » · « Ton équipe Fantasy et ton joueur La Masia seront supprimés » · « Tes messages de groupe resteront visibles, anonymisés » · « Cette action est définitive » · « Pense à exporter tes données avant de continuer. » · « Exporter » · « Continuer la suppression » · « Annuler »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-AUTH-26](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-26%5D%22) · [API-AUTH-27](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-27%5D%22) · [MOB-Q-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-21%5D%22) · [MOB-Q-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-29%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

#### `Q-14` — Suppression du compte — confirmation
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-14_suppression-du-compte-confirmation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-14_suppression-du-compte-confirmation__phone_light.webp?raw=true' width='230' alt='Q-14 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-14_suppression-du-compte-confirmation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-14_suppression-du-compte-confirmation__phone_dark.webp?raw=true' width='230' alt='Q-14 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-14_suppression-du-compte-confirmation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-14_suppression-du-compte-confirmation__tablet_light.webp?raw=true' width='330' alt='Q-14 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-14_suppression-du-compte-confirmation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-14_suppression-du-compte-confirmation__tablet_dark.webp?raw=true' width='330' alt='Q-14 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Supprimer le compte » · « 3/3 » · « Dernière confirmation » · « Saisis » · « SUPPRIMER » · « et ton mot de passe pour confirmer. » · « Confirmation » · « Mot de passe » · « •••••••• » · « Supprimer définitivement » · « Annuler »

**Composants repérés** : `btn`, `input`

</details>

**Issues liées sur ce même écran :** [API-AUTH-26](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-26%5D%22) · [API-AUTH-43](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-43%5D%22) · [MOB-Q-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-03%5D%22) · [MOB-Q-22](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-22%5D%22) · [MOB-Q-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-23%5D%22) · [MOB-Q-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-29%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Réauthentification (mot de passe ou fournisseur social) si la dernière authentification a plus de 5 minutes pour : changer mot de passe/e-mail, exporter, supprimer.
- Limiteur « sensible » côté API : le client gère le 429 avec `Retry-After` et verrouille le bouton pendant ce délai.
- Aucune saisie sensible dans les logs, captures d'état (`flutter_bloc` observer) ni analytics ; `FLAG_SECURE`/masquage de l'aperçu multitâche sur Q-08, Q-09, Q-14 (à valider).

## 🛠️ Tâches

- [ ] Créer `ReauthenticationService` (`needsReauth()`, `reauthenticate(password|provider)`).
- [ ] Créer `PasswordReauthDialog` réutilisable.
- [ ] Ajouter l'horodatage `lastAuthAt` en mémoire (non persisté).
- [ ] Gérer `Retry-After` : bouton désactivé avec compte à rebours.
- [ ] Masquer le contenu dans le sélecteur d'applications (Android `FLAG_SECURE` via `flutter_windowmanager`, iOS overlay au `inactive`) sur les écrans sensibles.
- [ ] Configurer l'observer de blocs pour masquer les champs `password`, `code`.
- [ ] Tests unitaires et d'intégration.
- [ ] Documenter dans `docs/SECURITY.md`.

## ✔️ Critères d'acceptation

- [ ] Étant donné une authentification vieille de 10 minutes, quand l'utilisateur lance l'export, alors le mot de passe est redemandé.
- [ ] Étant donné un 429 avec `Retry-After:60`, quand il est reçu, alors le bouton est désactivé 60 s.
- [ ] Étant donné Q-14 en multitâche, quand l'app passe en arrière-plan, alors l'aperçu est masqué.
- [ ] Étant donné l'observer de blocs, quand un état contient `password`, alors la valeur est masquée dans les logs.

## 🧪 Tests à écrire

- [ ] Test unitaire : `needsReauth`.
- [ ] Test : `Retry-After`.
- [ ] Test : masquage observer.
- [ ] Test d'intégration : réauth avant export.
- [ ] Test : aperçu multitâche masqué.

## 🔗 Dépendances

À réaliser après : `MOB-Q-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §5.1, §5.3, §10.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
