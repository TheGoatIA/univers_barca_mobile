> **MOB-K-21** · Écran · Priorité **P1** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Depuis le menu du groupe, « Quitter le groupe ? » avertit : « Tu ne recevras plus les notifications de « Culés Cameroun ». Tu pourras le rejoindre à nouveau. », avec « Quitter le groupe » et « Rester ».

## ✅ Objectif

Permettre de quitter proprement un groupe avec confirmation.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `K-12` — Paramètres du groupe — quitter
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-12_parametres-du-groupe-quitter__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-12_parametres-du-groupe-quitter__phone_light.webp?raw=true' width='230' alt='K-12 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-12_parametres-du-groupe-quitter__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-12_parametres-du-groupe-quitter__phone_dark.webp?raw=true' width='230' alt='K-12 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-12_parametres-du-groupe-quitter__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-12_parametres-du-groupe-quitter__tablet_light.webp?raw=true' width='330' alt='K-12 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-12_parametres-du-groupe-quitter__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-12_parametres-du-groupe-quitter__tablet_dark.webp?raw=true' width='330' alt='K-12 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Groupe » · « Culés Cameroun » · « Yaoundé » · « 721 membres » · « Public » · « Le point de rendez-vous des supporters du Barça au Cameroun. Watch parties, discussions et bon esprit ! » · « Membre » · « Fil » · « Événements » · « Membres » · « Mamadou Diallo » · « Modérateur » · « il y a 12 min » · « Qui est chaud pour le Clásico samedi ? On se retrouve au Relais à 19h30 ! 🔵🔴 » · « Aïcha Ngono » · « il y a 1 h » · « Quelqu’un a vu la compo probable ? Yamal titulaire sans doute. » · « Kevin Mballa » · « il y a 3 h » · « Photo du dernier visionnage au Bastos, quelle ambiance ! » · « Écrire dans le groupe… » · « Quitter le groupe ? » · « Tu ne recevras plus les notifications de « Culés Cameroun ». Tu pourras le rejoindre à nouveau. » · « Quitter le groupe » · « Rester »

**Composants repérés** : `avatar`, `btn`, `card`, `modal`

</details>

**Issues liées sur ce même écran :** [API-COMM-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-20%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-K-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-02%5D%22) · [MOB-K-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-06%5D%22) · [MOB-K-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-29%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

## 📐 Règles de gestion

- Confirmation obligatoire ; « Rester » ferme la modale sans effet.
- Après sortie : désabonnement des notifications du groupe (topic FCM ou préférence serveur), retour à la fiche non-membre ; membersCount -1.
- Un modérateur unique du groupe ne peut pas quitter sans transférer le rôle : erreur « Désigne un autre modérateur avant de partir » (règle à confirmer avec l'API).
- Les messages publiés restent dans le groupe (anonymisation uniquement à la suppression du compte, CDC Backend §4.7).
- Action impossible hors-ligne : bouton désactivé avec explication.

## 🛠️ Tâches

- [ ] Créer widgets/leave_group_dialog.dart.
- [ ] Ajouter l'entrée « Quitter le groupe » au menu ⋯ de la fiche.
- [ ] Brancher LeaveGroup et GroupLeaveConfirmed.
- [ ] Se désabonner des notifications du groupe via NotificationTopicService.
- [ ] Gérer l'erreur dernier modérateur.
- [ ] Ajouter ARB et goldens.
- [ ] Tests widget/bloc.
- [ ] Analytics group_left.

## ✔️ Critères d'acceptation

- [ ] Étant donné la confirmation, quand l'utilisateur tape « Quitter le groupe », alors il redevient non-membre et les notifications du groupe sont arrêtées.
- [ ] Étant donné « Rester », quand il est tapé, alors rien ne change.
- [ ] Étant donné le dernier modérateur, quand il tente de quitter, alors le message d'explication s'affiche.
- [ ] Étant donné aucun réseau, quand le menu s'ouvre, alors « Quitter » est désactivé.

## 🧪 Tests à écrire

- [ ] leave_group_dialog_test.
- [ ] group_detail_bloc_test : leave.
- [ ] unsubscribe_topic_test.
- [ ] golden_leave_group_light_dark.

## ♿ Accessibilité et i18n

- ARB : leaveGroupTitle « Quitter le groupe ? », leaveGroupBody « Tu ne recevras plus les notifications de « {name} ». Tu pourras le rejoindre à nouveau. », leaveGroupConfirm, leaveGroupStay « Rester »

## 🔗 Dépendances

À réaliser après : `MOB-K-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.8

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
