> **MOB-Q-25** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Q-16 : sur Paramètres, une bottom sheet « Se déconnecter ? — Tu pourras te reconnecter à tout moment. » avec « Se déconnecter » et « Annuler ».

## ✅ Objectif

Implémenter la confirmation et la déconnexion propre.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-16` — Confirmation de déconnexion
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-16_confirmation-de-deconnexion__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-16_confirmation-de-deconnexion__phone_light.webp?raw=true' width='230' alt='Q-16 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-16_confirmation-de-deconnexion__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-16_confirmation-de-deconnexion__phone_dark.webp?raw=true' width='230' alt='Q-16 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-16_confirmation-de-deconnexion__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-16_confirmation-de-deconnexion__tablet_light.webp?raw=true' width='330' alt='Q-16 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-16_confirmation-de-deconnexion__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-16_confirmation-de-deconnexion__tablet_dark.webp?raw=true' width='330' alt='Q-16 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Paramètres » · « Langue » · « Français » · « Thème » · « Automatique » · « Se déconnecter ? » · « Tu pourras te reconnecter à tout moment. » · « Se déconnecter » · « Annuler »

**Composants repérés** : `btn`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-AUTH-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-16%5D%22) · [MOB-Q-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-23%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Déconnexion = `POST /auth/logout` (révocation du refresh token courant), suppression du jeton FCM, effacement local (sans réglages d'appareil).
- Si le réseau est indisponible : déconnexion locale quand même (le refresh token expirera / sera révoqué ultérieurement) avec file d'un appel de révocation.
- Après succès : navigation vers `/login` et réinitialisation de la pile.

## 🛠️ Tâches

- [ ] Créer `LogoutSheet` (`showModalBottomSheet`) avec boutons danger/neutre.
- [ ] Créer `LogoutUseCase` (API + `AccountWipeService.wipe(includeDeviceSettings:false)` + `AuthBloc.add(LoggedOut)`).
- [ ] Mettre en file la révocation si hors-ligne (`PendingActions` type `logout_revoke`).
- [ ] Désactiver les boutons pendant l'opération.
- [ ] Golden test clair/sombre.
- [ ] Tests unitaires/widget.
- [ ] Analytics `logout`.
- [ ] Gérer l'échec de désinscription FCM sans bloquer.

## ✔️ Critères d'acceptation

- [ ] Étant donné « Se déconnecter » dans la feuille, quand il est touché, alors l'utilisateur est redirigé vers `/login`.
- [ ] Étant donné le hors-ligne, quand la déconnexion est confirmée, alors la session locale est supprimée et la révocation est mise en file.
- [ ] Étant donné « Annuler », quand il est touché, alors la feuille se ferme sans effet.
- [ ] Étant donné la déconnexion, quand elle se termine, alors le thème et la langue de l'appareil sont conservés.

## 🧪 Tests à écrire

- [ ] Test : déconnexion nominale.
- [ ] Test : hors-ligne avec file.
- [ ] Widget test : annulation.
- [ ] Golden test : Q-16.
- [ ] Test : conservation des réglages d'appareil.

## ♿ Accessibilité et i18n

- Clés ARB : `signOutQuestion`, `signOutBody`, `signOut`, `cancel`.

## 🔗 Dépendances

À réaliser après : `MOB-Q-23` · `MOB-Q-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §3.1 (POST /auth/logout)

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
