> **MOB-Q-22** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Q-14 « Dernière confirmation 3/3 » : « Saisis SUPPRIMER et ton mot de passe pour confirmer. », champs « Confirmation » et « Mot de passe », boutons « Supprimer définitivement » et « Annuler ».

## ✅ Objectif

Implémenter la confirmation forte et l'appel `DELETE /users/me`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-14` — Suppression du compte — confirmation
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-14_suppression-du-compte-confirmation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-14_suppression-du-compte-confirmation__phone_light.webp?raw=true' width='230' alt='Q-14 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-14_suppression-du-compte-confirmation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-14_suppression-du-compte-confirmation__phone_dark.webp?raw=true' width='230' alt='Q-14 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-14_suppression-du-compte-confirmation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-14_suppression-du-compte-confirmation__tablet_light.webp?raw=true' width='330' alt='Q-14 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-14_suppression-du-compte-confirmation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-14_suppression-du-compte-confirmation__tablet_dark.webp?raw=true' width='330' alt='Q-14 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Supprimer le compte » · « 3/3 » · « Dernière confirmation » · « Saisis » · « SUPPRIMER » · « et ton mot de passe pour confirmer. » · « Confirmation » · « Mot de passe » · « •••••••• » · « Supprimer définitivement » · « Annuler »

**Composants repérés** : `btn`, `input`

</details>

**Issues liées sur ce même écran :** [API-AUTH-26](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-26%5D%22) · [API-AUTH-43](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-43%5D%22) · [MOB-Q-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-03%5D%22) · [MOB-Q-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-23%5D%22) · [MOB-Q-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-28%5D%22) · [MOB-Q-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-29%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Le bouton n'est actif que si la saisie vaut exactement `SUPPRIMER` (insensible à la casse selon la locale : EN « DELETE », ES « ELIMINAR » — mot de confirmation localisé, à valider) et le mot de passe est non vide.
- Compte social sans mot de passe : réauthentification via le fournisseur (Google/Apple) à la place du mot de passe.
- Erreurs : mot de passe invalide (401) sous le champ ; 429 message de patience ; échec réseau : conserver la saisie.

## 🛠️ Tâches

- [ ] Créer `delete_account_confirm_page.dart`.
- [ ] Créer `ConfirmWordField` avec validation exacte et `AutofillHints.password`.
- [ ] Appeler `DELETE /users/me {password}` via `DeleteAccountUseCase`.
- [ ] Désactiver la capture du presse-papiers pour le champ mot de passe (`enableSuggestions:false`).
- [ ] Pendant la requête : bouton en chargement, retour désactivé.
- [ ] Succès → `AccountWipeService.wipe()` puis `/account-deleted`.
- [ ] Golden test clair/sombre.
- [ ] Tests cubit/widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné « supprimer » en minuscules, quand le champ est évalué, alors le bouton est actif seulement si la règle de casse l'autorise (casse ignorée).
- [ ] Étant donné un mot de passe erroné, quand le serveur répond 401, alors l'erreur apparaît et le compte est intact.
- [ ] Étant donné un compte Google, quand l'écran s'affiche, alors le champ mot de passe est remplacé par la réauthentification Google.
- [ ] Étant donné un succès, quand la suppression est confirmée, alors l'app affiche Q-15.

## 🧪 Tests à écrire

- [ ] bloc_test : mot clé invalide.
- [ ] bloc_test : 401.
- [ ] bloc_test : succès → Q-15.
- [ ] Widget test : compte social.
- [ ] Golden test : Q-14.

## ♿ Accessibilité et i18n

- Clés ARB : `lastConfirmation`, `typeWordToConfirm` (placeholder), `confirmWord`, `deleteForever`.
- Le mot-clé est annoncé et épelé par le lecteur d'écran.

## 🔗 Dépendances

À réaliser après : `MOB-Q-21` · `MOB-Q-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §4.8
- CDC Backend §5.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
