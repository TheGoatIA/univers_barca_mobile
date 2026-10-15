> **MOB-K-25** · Écran · Priorité **P1** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

L'écran « Culés Bafoussam — Demande en cours d'examen » explique que le groupe sera visible sur la carte après validation par un modérateur et que l'utilisateur sera notifié, avec « Modifier ma demande » et « Annuler la demande ».

## ✅ Objectif

Informer sur l'état de la demande et permettre de la modifier ou de l'annuler.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `K-15` — Groupe en attente de validation
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-15_groupe-en-attente-de-validation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-15_groupe-en-attente-de-validation__phone_light.webp?raw=true' width='230' alt='K-15 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-15_groupe-en-attente-de-validation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-15_groupe-en-attente-de-validation__phone_dark.webp?raw=true' width='230' alt='K-15 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-15_groupe-en-attente-de-validation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-15_groupe-en-attente-de-validation__tablet_light.webp?raw=true' width='330' alt='K-15 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-15_groupe-en-attente-de-validation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-15_groupe-en-attente-de-validation__tablet_dark.webp?raw=true' width='330' alt='K-15 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Culés Bafoussam » · « Demande en cours d’examen » · « Ton groupe sera visible sur la carte dès sa validation par un modérateur. Tu seras notifié(e). » · « Modifier ma demande » · « Annuler la demande »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-COMM-15](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-15%5D%22) · [API-COMM-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-16%5D%22) · [API-COMM-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-17%5D%22) · [API-COMM-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-28%5D%22) · [MOB-K-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-24%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

## 📐 Règles de gestion

- Affichage tant que status=pending ; mise à jour automatique à la réception de la notification de validation (passage à la fiche K-01/K-02 en tant que modérateur).
- « Modifier ma demande » rouvre K-14 prérempli ; « Annuler la demande » demande confirmation puis supprime.
- Validation acceptée : toast « Ton groupe est en ligne » ; refusée : message avec motif fourni par l'API.
- Délai moyen annoncé 24 h ; pas de décompte précis.
- Accessible depuis K-14 après envoi et depuis le profil/paramètres tant que la demande existe.

## 🛠️ Tâches

- [ ] Créer presentation/pages/group_request_pending_page.dart (route /community/groups/pending).
- [ ] Créer GroupRequestCubit (pending, approved, rejected, cancelled).
- [ ] Écouter les notifications de type group_approved/group_rejected pour rafraîchir.
- [ ] Créer la confirmation d'annulation.
- [ ] Naviguer vers K-14 en mode édition.
- [ ] Ajouter ARB et goldens.
- [ ] Tests.
- [ ] Analytics group_request_cancelled.

## ✔️ Critères d'acceptation

- [ ] Étant donné une demande pending, quand l'écran s'affiche, alors « Demande en cours d'examen » et les deux boutons sont visibles.
- [ ] Étant donné une validation reçue, quand la notification arrive, alors le groupe devient accessible.
- [ ] Étant donné l'annulation confirmée, quand elle réussit, alors retour à la carte.
- [ ] Étant donné un refus, quand l'écran se rafraîchit, alors le motif est affiché.

## 🧪 Tests à écrire

- [ ] group_request_cubit_test.
- [ ] pending_page_test.
- [ ] cancel_confirm_test.
- [ ] golden_group_pending_light_dark.

## ♿ Accessibilité et i18n

- ARB : groupPendingTitle « Demande en cours d'examen », groupPendingBody, groupPendingEdit « Modifier ma demande », groupPendingCancel « Annuler la demande »

## 🔗 Dépendances

À réaliser après : `MOB-K-23` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.16.2 (RG-MAP-04, RG-MAP-05)

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
