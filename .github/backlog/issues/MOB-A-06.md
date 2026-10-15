> **MOB-A-06** · Écran · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Quand l'API répond 5xx, la page concernée (ici l'onglet Quiz) affiche un état d'erreur sympathique « Petit souci de notre côté » avec un code d'incident que l'utilisateur peut communiquer au support.

## ✅ Objectif

Implémenter la variante `server` de `BarcaErrorState` telle que dessinée dans A-04, réutilisable par tous les modules.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `A-04` — Erreur serveur 5xx
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-04_erreur-serveur-5xx__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-04_erreur-serveur-5xx__phone_light.webp?raw=true' width='230' alt='A-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-04_erreur-serveur-5xx__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-04_erreur-serveur-5xx__phone_dark.webp?raw=true' width='230' alt='A-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-04_erreur-serveur-5xx__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-04_erreur-serveur-5xx__tablet_light.webp?raw=true' width='330' alt='A-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-04_erreur-serveur-5xx__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-04_erreur-serveur-5xx__tablet_dark.webp?raw=true' width='330' alt='A-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Quiz » · « Petit souci de notre côté » · « Le service est momentanément indisponible. Notre équipe est déjà dessus. Réessaie dans quelques instants. » · « Réessayer » · « Code d'incident : UB-5C21-8F3A »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-44](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-44%5D%22) · [API-PLAT-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-05%5D%22) · [API-PLAT-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-07%5D%22) · [API-PLAT-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-24%5D%22) · [API-PLAT-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-33%5D%22) · [API-PLAT-34](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-34%5D%22) · [API-PLAT-40](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-40%5D%22) · [API-PLAT-41](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-41%5D%22) · [API-PLAT-55](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PLAT-55%5D%22) · [MOB-A-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-05%5D%22) · [MOB-A-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-17%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

## 📐 Règles de gestion

- Textes : titre « Petit souci de notre côté », message « Le service est momentanément indisponible. Notre équipe est déjà dessus. Réessaie dans quelques instants. », bouton « Réessayer », pied « Code d'incident : UB-5C21-8F3A ».
- Le code d'incident est dérivé du `traceId` renvoyé par l'API (format `UB-XXXX-XXXX`, 8 caractères hexadécimaux en majuscules) ; appui long = copie dans le presse-papiers + SnackBar « Code copié ».
- Distinction visuelle avec l'erreur hors-ligne (icône et teinte différentes, CDC Flutter §9.5).
- Le bouton « Réessayer » relance l'événement du BLoC d'origine ; anti-rebond 1 s ; après 3 échecs consécutifs le libellé reste identique mais un délai de 5 s est imposé.

## 🔄 Comportement et états

- Affiché dans la zone de contenu de l'onglet (barre d'onglets conservée, titre de page « Quiz »).
- Réessai : spinner dans le bouton, puis contenu ou nouvelle erreur.
- Erreur sur une carte du dashboard : version compacte inline sans plein écran (chaque carte gère son état, CDC Flutter §7.2).
- Remontée automatique à Sentry (tag `traceId`).

## 🛠️ Tâches

- [ ] Ajouter `BarcaErrorState.server({traceId, onRetry})` dans `lib/core/widgets/app_error_view.dart` (ou renommer en `barca_error_state.dart`).
- [ ] Créer `lib/core/utils/incident_code.dart` (formatage `UB-XXXX-XXXX`).
- [ ] Implémenter la copie presse-papiers avec `Clipboard.setData` et retour haptique léger.
- [ ] Ajouter les clés ARB `serverErrorTitle`, `serverErrorMessage`, `serverErrorIncident` (placeholder `{code}`), `codeCopied`.
- [ ] Intégrer dans la page Quiz placeholder pour démonstration (sans logique métier).
- [ ] Créer la variante compacte `BarcaErrorState.compact`.
- [ ] Golden phone clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné un 500 avec traceId quand la page se charge alors le code « UB-… » dérivé s'affiche.
- [ ] Étant donné l'écran d'erreur quand l'utilisateur appuie sur « Réessayer » alors la requête est rejouée une seule fois par appui.
- [ ] Étant donné un appui long sur le code quand il est copié alors un SnackBar le confirme.
- [ ] Étant donné une erreur 5xx sur une carte du dashboard quand les autres cartes sont valides alors elles restent affichées.

## 🧪 Tests à écrire

- [ ] Golden `error_state_server`.
- [ ] Widget test : formatage du code d'incident depuis un traceId.
- [ ] Widget test : anti-rebond du bouton Réessayer.
- [ ] Test : Sentry capture appelée avec traceId.

## ♿ Accessibilité et i18n

- Message lu par TalkBack/VoiceOver dans l'ordre titre, message, code.
- Bouton ≥ 48 dp.
- Aucune couleur seule pour indiquer l'erreur (icône + texte).

## 🔗 Dépendances

À réaliser après : `MOB-A-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.5
- CDC Flutter §13.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
