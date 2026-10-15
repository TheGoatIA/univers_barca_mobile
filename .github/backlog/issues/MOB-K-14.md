> **MOB-K-14** · Écran · Priorité **P1** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Une fenêtre « Merci ! » explique : « Ton signalement a été transmis à l'équipe de modération. Tu seras informé(e) de la suite donnée. » avec les boutons Fermer et Masquer cet utilisateur.

## ✅ Objectif

Confirmer la prise en compte et proposer un masquage immédiat de l'auteur.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `K-06` — Signalement envoyé
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-06_signalement-envoye__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-06_signalement-envoye__phone_light.webp?raw=true' width='230' alt='K-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-06_signalement-envoye__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-06_signalement-envoye__phone_dark.webp?raw=true' width='230' alt='K-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-06_signalement-envoye__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-06_signalement-envoye__tablet_light.webp?raw=true' width='330' alt='K-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-06_signalement-envoye__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-06_signalement-envoye__tablet_dark.webp?raw=true' width='330' alt='K-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Groupe » · « Culés Cameroun » · « Yaoundé » · « 721 membres » · « Public » · « Le point de rendez-vous des supporters du Barça au Cameroun. Watch parties, discussions et bon esprit ! » · « Membre » · « Fil » · « Événements » · « Membres » · « Mamadou Diallo » · « Modérateur » · « il y a 12 min » · « Qui est chaud pour le Clásico samedi ? On se retrouve au Relais à 19h30 ! 🔵🔴 » · « Aïcha Ngono » · « il y a 1 h » · « Quelqu’un a vu la compo probable ? Yamal titulaire sans doute. » · « Kevin Mballa » · « il y a 3 h » · « Photo du dernier visionnage au Bastos, quelle ambiance ! » · « Écrire dans le groupe… » · « Merci ! » · « Ton signalement a été transmis à l’équipe de modération. Tu seras informé(e) de la suite donnée. » · « Fermer » · « Masquer cet utilisateur »

**Composants repérés** : `avatar`, `btn`, `card`, `modal`

</details>

**Issues liées sur ce même écran :** [API-COMM-26](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-26%5D%22) · [API-MODER-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-05%5D%22) · [API-MODER-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-30%5D%22) · [API-MODER-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-32%5D%22) · [MOB-K-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-05%5D%22) · [MOB-K-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-15%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

## 📐 Règles de gestion

- Modale centrée, icône de succès, animation douce (scale + fade 200 ms, supprimée en reduce motion).
- « Fermer » ferme la modale et revient au fil ; « Masquer cet utilisateur » déclenche le masquage local (voir k-masquage-utilisateur) puis ferme.
- Le suivi du signalement est notifié via la catégorie communauté (groupe O) ; aucune donnée de statut n'est affichée ici.
- Fermeture automatique non prévue : action explicite requise.
- Variante « déjà signalé » : titre « Déjà signalé », même mise en page.

## 🛠️ Tâches

- [ ] Créer widgets/report_sent_dialog.dart (AlertDialog personnalisé).
- [ ] Brancher le résultat sent/alreadyReported du ReportCubit.
- [ ] Appeler HideUser depuis le bouton secondaire.
- [ ] Ajouter animation et prise en compte de reduce motion.
- [ ] Ajouter ARB et Semantics (rôle dialogue).
- [ ] Goldens.
- [ ] Tests widget.
- [ ] Mettre le focus sur le titre à l'ouverture (a11y).

## ✔️ Critères d'acceptation

- [ ] Étant donné un signalement envoyé, quand la modale s'affiche, alors « Merci ! » et les deux boutons sont visibles.
- [ ] Étant donné un tap sur « Masquer cet utilisateur », quand il est pressé, alors les messages de l'auteur disparaissent du fil.
- [ ] Étant donné un tap sur « Fermer », quand il est pressé, alors la modale se ferme et le fil reste affiché.
- [ ] Étant donné reduce motion, quand la modale apparaît, alors aucune animation.

## 🧪 Tests à écrire

- [ ] report_sent_dialog_test.
- [ ] hide_user_from_dialog_test.
- [ ] golden_report_sent.
- [ ] a11y_focus_test.

## ♿ Accessibilité et i18n

- ARB : reportThanks « Merci ! », reportSentBody, close « Fermer »

## 🔗 Dépendances

À réaliser après : `MOB-K-13` · `MOB-K-15` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §11

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
