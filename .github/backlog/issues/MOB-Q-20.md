> **MOB-Q-20** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Q-12 : « Ton archive est prête — Elle a été envoyée à boris@exemple.com. Le lien est valable 7 jours. » avec « Télécharger (4,2 Mo) » et « Renvoyer l'e-mail ».

## ✅ Objectif

Implémenter l'écran de fin d'export avec téléchargement sécurisé.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-12` — Export prêt
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-12_export-pret__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-12_export-pret__phone_light.webp?raw=true' width='230' alt='Q-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-12_export-pret__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-12_export-pret__phone_dark.webp?raw=true' width='230' alt='Q-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-12_export-pret__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-12_export-pret__tablet_light.webp?raw=true' width='330' alt='Q-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-12_export-pret__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-12_export-pret__tablet_dark.webp?raw=true' width='330' alt='Q-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Export des données » · « Ton archive est prête » · « Elle a été envoyée à boris@exemple.com. Le lien est valable 7 jours. » · « Télécharger (4,2 Mo) » · « Renvoyer l’e-mail »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-01%5D%22) · [API-AUTH-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-02%5D%22) · [API-AUTH-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-03%5D%22) · [API-AUTH-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-24%5D%22) · [API-AUTH-25](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-25%5D%22) · [MOB-Q-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-03%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Le lien expire après 7 jours (`expiresAt`) ; passé ce délai : état « Lien expiré — refaire une demande ».
- Téléchargement : fichier JSON enregistré via `path_provider` puis partage/ouverture (`share_plus`/`open_filex`) ; taille affichée en Mo (une décimale).
- « Renvoyer l'e-mail » limité à 3 envois par demande (à confirmer côté API) avec délai de 60 s.

## 🛠️ Tâches

- [ ] Créer `export_ready_page.dart` (variantes `ready` / `expired`).
- [ ] Implémenter `DownloadExportUseCase` (stream de progression, annulation).
- [ ] Formater la taille (`4,2 Mo`) selon la locale.
- [ ] Gérer le lien reçu par e-mail (deep link `univers-barca://export?...` ou page web).
- [ ] Afficher la date d'expiration relative (« expire dans 6 jours »).
- [ ] Gérer erreurs : réseau, stockage plein.
- [ ] Golden tests clair/sombre.
- [ ] Tests cubit/widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné un export prêt de 4 194 304 octets, quand Q-12 s'affiche, alors « Télécharger (4,2 Mo) » est affiché.
- [ ] Étant donné « Télécharger », quand il est touché, alors le fichier est enregistré et partageable.
- [ ] Étant donné un lien expiré, quand Q-12 s'affiche, alors l'état « expiré » propose une nouvelle demande.
- [ ] Étant donné « Renvoyer l'e-mail », quand il est touché deux fois en 10 s, alors le second appel est refusé avec un message.

## 🧪 Tests à écrire

- [ ] bloc_test : prêt → téléchargement.
- [ ] Test : formatage de taille.
- [ ] bloc_test : lien expiré.
- [ ] Widget test : limite de renvoi.
- [ ] Golden test : Q-12.

## ♿ Accessibilité et i18n

- Clés ARB : `exportReadyTitle`, `exportReadyBody` (placeholder e-mail), `linkValidDays`, `downloadWithSize`, `resendEmail`, `linkExpired`.

## 🔗 Dépendances

À réaliser après : `MOB-Q-19` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §10.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
