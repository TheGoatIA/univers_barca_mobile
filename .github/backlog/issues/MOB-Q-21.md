> **MOB-Q-21** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Q-13 « Supprimer le compte 1/3 » : « Supprimer mon compte » ; liste des conséquences (progression, badges et série effacés ; équipe Fantasy et joueur La Masia supprimés ; messages de groupe conservés mais anonymisés ; action définitive) ; rappel « Pense à exporter tes données » avec bouton « Exporter » ; « Continuer la suppression » et « Annuler ».

## ✅ Objectif

Implémenter la première étape informative du flux de suppression.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-13` — Suppression du compte — conséquences
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-13_suppression-du-compte-consequences__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-13_suppression-du-compte-consequences__phone_light.webp?raw=true' width='230' alt='Q-13 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-13_suppression-du-compte-consequences__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-13_suppression-du-compte-consequences__phone_dark.webp?raw=true' width='230' alt='Q-13 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-13_suppression-du-compte-consequences__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-13_suppression-du-compte-consequences__tablet_light.webp?raw=true' width='330' alt='Q-13 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-13_suppression-du-compte-consequences__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-13_suppression-du-compte-consequences__tablet_dark.webp?raw=true' width='330' alt='Q-13 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Supprimer le compte » · « 1/3 » · « Supprimer mon compte » · « Ta progression, tes badges et ta série seront effacés » · « Ton équipe Fantasy et ton joueur La Masia seront supprimés » · « Tes messages de groupe resteront visibles, anonymisés » · « Cette action est définitive » · « Pense à exporter tes données avant de continuer. » · « Exporter » · « Continuer la suppression » · « Annuler »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-AUTH-26](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-26%5D%22) · [API-AUTH-27](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-27%5D%22) · [MOB-Q-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-28%5D%22) · [MOB-Q-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-29%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Conformité CDC Backend §4.8 : profil, historique de jeu supprimés définitivement ; contenus de groupe conservés avec auteur anonymisé (« Utilisateur supprimé ») ; journal de modération conservé sous identifiant dissocié.
- L'étape 2/3 (non maquettée) doit demander une raison optionnelle ou un récapitulatif : à valider avec le design ; en attendant, étape 2/3 = récapitulatif des éléments supprimés (écart maquettes signalé).
- « Exporter » ouvre Q-11 puis revient ; « Annuler » quitte le flux sans effet.

## 🛠️ Tâches

- [ ] Créer `delete_account_intro_page.dart` (indicateur de progression « 1/3 »).
- [ ] Créer `ConsequenceItem(icon, text)` ×4 et `ExportReminderCard(onExport)`.
- [ ] Créer `DeleteAccountFlowCubit` (`step: 1..3`, `understood`, `typedWord`, `password`).
- [ ] Créer la page d'étape 2/3 (récapitulatif) en s'appuyant sur une case à cocher « J'ai compris que cette action est définitive ».
- [ ] Brancher « Continuer la suppression » → étape 2/3, « Annuler » → Q-07.
- [ ] Désactiver le retour arrière système au milieu du flux (confirmation).
- [ ] Golden tests clair/sombre.
- [ ] Tests widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné Q-07, quand « Supprimer mon compte » est touché, alors l'étape 1/3 s'affiche.
- [ ] Étant donné « Exporter », quand il est touché, alors Q-11 s'ouvre et un retour ramène à l'étape 1/3.
- [ ] Étant donné « Annuler », quand il est touché, alors aucun appel réseau n'est émis et Q-07 s'affiche.
- [ ] Étant donné l'étape 2/3, quand la case n'est pas cochée, alors « Continuer » est désactivé.

## 🧪 Tests à écrire

- [ ] Golden test : Q-13.
- [ ] Widget test : navigation du flux.
- [ ] bloc_test : étapes 1 → 2 → 3.
- [ ] Widget test : annulation sans effet.
- [ ] Widget test : case obligatoire.

## ♿ Accessibilité et i18n

- Clés ARB : `deleteAccountTitle`, `stepOf` (placeholders), `consequenceProgress`, `consequenceFantasy`, `consequenceMessages`, `consequenceFinal`, `exportReminder`, `export`, `continueDeletion`.

## 🔗 Dépendances

À réaliser après : `MOB-Q-14` · `MOB-Q-19` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §4.8
- CDC Global §2.13, §10.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
