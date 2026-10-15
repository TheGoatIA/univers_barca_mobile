> **MOB-K-19** · Écran · Priorité **P1** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Le formulaire « Nouvelle watch party » : Titre (Clásico au Relais), Match (FCB Barça – Real Madrid), Date (Sam. 24 oct.), Heure (19:30), Lieu (nom public : Le Relais), Ville (Yaoundé), mention « Ne partage qu'un lieu public. Les événements sont modérés. », bouton « Publier l'événement ».

## ✅ Objectif

Permettre à un membre de déclarer un événement valide et modéré.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `K-10` — Créer une watch party
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-10_creer-une-watch-party__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-10_creer-une-watch-party__phone_light.webp?raw=true' width='230' alt='K-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-10_creer-une-watch-party__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-10_creer-une-watch-party__phone_dark.webp?raw=true' width='230' alt='K-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-10_creer-une-watch-party__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-10_creer-une-watch-party__tablet_light.webp?raw=true' width='330' alt='K-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-10_creer-une-watch-party__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-10_creer-une-watch-party__tablet_dark.webp?raw=true' width='330' alt='K-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Nouvelle watch party » · « Titre » · « Clásico au Relais » · « Match » · « Barça – Real Madrid » · « Date » · « Sam. 24 oct. » · « Heure » · « Lieu (nom public) » · « Le Relais » · « Ville » · « Yaoundé » · « Ne partage qu'un lieu public. Les événements sont modérés. » · « Publier l’événement »

**Composants repérés** : `btn`, `card`, `input`

</details>

**Issues liées sur ce même écran :** [API-COMM-24](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-24%5D%22) · [API-COMM-27](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-27%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-K-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-04%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

## 📐 Règles de gestion

- Validations : titre 3-80 car., match obligatoire (parmi les prochains matchs du calendrier), date/heure strictement futures et avant le coup d'envoi + 3 h, lieu 3-80 car., ville préremplie avec la ville du groupe.
- Mise en garde permanente : lieu public uniquement, aucune adresse domicile ; détection basique d'un numéro de rue/téléphone et avertissement.
- Après publication : retour à K-08 avec toast « Événement publié » ; l'événement est soumis à modération (RG-MAP-05).
- Annulation avec brouillon : confirmation.
- Date/heure via showDatePicker/showTimePicker localisés.

## 🔄 Comportement et états

- Bouton occupé pendant l'envoi ; erreurs 422 affichées sous chaque champ ; hors-ligne : publication désactivée avec explication.

## 🛠️ Tâches

- [ ] Créer presentation/pages/create_event_page.dart (route /community/groups/:id/events/new) et CreateEventCubit.
- [ ] Créer widgets/match_picker_field.dart (liste des prochains matchs via le feature matches).
- [ ] Créer le validateur EventFormValidator.
- [ ] Créer widgets/date_time_fields.dart.
- [ ] Créer PublicPlaceHint (détection chiffres/téléphone).
- [ ] Brancher CreateGroupEvent.
- [ ] Ajouter ARB et goldens.
- [ ] Tests cubit/validateur.

## ✔️ Critères d'acceptation

- [ ] Étant donné tous les champs valides, quand l'utilisateur tape « Publier l'événement », alors l'événement est créé et K-08 l'affiche.
- [ ] Étant donné une date passée, quand la validation s'exécute, alors le champ date est en erreur.
- [ ] Étant donné un lieu contenant un numéro de téléphone, quand la validation s'exécute, alors un avertissement s'affiche.
- [ ] Étant donné aucun match sélectionné, quand le formulaire est soumis, alors l'erreur est indiquée sous Match.
- [ ] Étant donné aucun réseau, quand le formulaire s'affiche, alors le bouton est désactivé avec explication.

## 🧪 Tests à écrire

- [ ] event_form_validator_test.
- [ ] create_event_cubit_test.
- [ ] public_place_hint_test.
- [ ] create_event_page_test.
- [ ] golden_create_event.

## ♿ Accessibilité et i18n

- ARB : createEventTitle « Nouvelle watch party », createEventPublicPlaceHint « Ne partage qu'un lieu public. Les événements sont modérés. », createEventPublish « Publier l'événement »

## 🔗 Dépendances

À réaliser après : `MOB-K-17` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.8
- CDC Global §2.16.2 (RG-MAP-04, RG-MAP-05)

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
