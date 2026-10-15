> **MOB-K-05** · API · Priorité **P0** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Tout contenu communautaire est signalable. Le client envoie un signalement anonyme pour l'auteur du contenu, traité ensuite dans la file de modération du back-office.

## ✅ Objectif

Implémenter ReportContent avec motifs typés et gestion des doublons.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `K-04` — Options et signalement
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-04_options-et-signalement__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-04_options-et-signalement__phone_light.webp?raw=true' width='230' alt='K-04 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-04_options-et-signalement__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-04_options-et-signalement__phone_dark.webp?raw=true' width='230' alt='K-04 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-04_options-et-signalement__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-04_options-et-signalement__tablet_light.webp?raw=true' width='330' alt='K-04 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-04_options-et-signalement__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-04_options-et-signalement__tablet_dark.webp?raw=true' width='330' alt='K-04 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Groupe » · « Culés Cameroun » · « Yaoundé » · « 721 membres » · « Public » · « Le point de rendez-vous des supporters du Barça au Cameroun. Watch parties, discussions et bon esprit ! » · « Membre » · « Fil » · « Événements » · « Membres » · « Mamadou Diallo » · « Modérateur » · « il y a 12 min » · « Qui est chaud pour le Clásico samedi ? On se retrouve au Relais à 19h30 ! 🔵🔴 » · « Aïcha Ngono » · « il y a 1 h » · « Quelqu’un a vu la compo probable ? Yamal titulaire sans doute. » · « Kevin Mballa » · « il y a 3 h » · « Photo du dernier visionnage au Bastos, quelle ambiance ! » · « Écrire dans le groupe… » · « Photo du dernier visionnage… » · « Copier le texte » · « Enregistrer » · « Signaler ce message » · « Masquer cet utilisateur »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-COMM-26](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-26%5D%22) · [API-MODER-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-05%5D%22) · [API-MODER-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-32%5D%22) · [MOB-K-12](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-12%5D%22) · [MOB-K-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-15%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

#### `K-05` — Choix du motif de signalement
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-05_choix-du-motif-de-signalement__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-05_choix-du-motif-de-signalement__phone_light.webp?raw=true' width='230' alt='K-05 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-05_choix-du-motif-de-signalement__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-05_choix-du-motif-de-signalement__phone_dark.webp?raw=true' width='230' alt='K-05 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-05_choix-du-motif-de-signalement__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-05_choix-du-motif-de-signalement__tablet_light.webp?raw=true' width='330' alt='K-05 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-05_choix-du-motif-de-signalement__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-05_choix-du-motif-de-signalement__tablet_dark.webp?raw=true' width='330' alt='K-05 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Groupe » · « Culés Cameroun » · « Yaoundé » · « 721 membres » · « Public » · « Le point de rendez-vous des supporters du Barça au Cameroun. Watch parties, discussions et bon esprit ! » · « Membre » · « Fil » · « Événements » · « Membres » · « Mamadou Diallo » · « Modérateur » · « il y a 12 min » · « Qui est chaud pour le Clásico samedi ? On se retrouve au Relais à 19h30 ! 🔵🔴 » · « Aïcha Ngono » · « il y a 1 h » · « Quelqu’un a vu la compo probable ? Yamal titulaire sans doute. » · « Kevin Mballa » · « il y a 3 h » · « Photo du dernier visionnage au Bastos, quelle ambiance ! » · « Écrire dans le groupe… » · « Signaler ce message » · « Ton signalement est anonyme. Il sera examiné par un modérateur. » · « Propos haineux ou discriminatoires » · « Harcèlement ou menaces » · « Spam ou publicité » · « Contenu inapproprié » · « Autre » · « Envoyer le signalement »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-MODER-01](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-01%5D%22) · [API-MODER-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-05%5D%22) · [API-MODER-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-30%5D%22) · [API-MODER-31](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-31%5D%22) · [API-MODER-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-32%5D%22) · [MOB-K-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-13%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

#### `K-06` — Signalement envoyé
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-06_signalement-envoye__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-06_signalement-envoye__phone_light.webp?raw=true' width='230' alt='K-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-06_signalement-envoye__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-06_signalement-envoye__phone_dark.webp?raw=true' width='230' alt='K-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-06_signalement-envoye__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-06_signalement-envoye__tablet_light.webp?raw=true' width='330' alt='K-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-06_signalement-envoye__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-06_signalement-envoye__tablet_dark.webp?raw=true' width='330' alt='K-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Groupe » · « Culés Cameroun » · « Yaoundé » · « 721 membres » · « Public » · « Le point de rendez-vous des supporters du Barça au Cameroun. Watch parties, discussions et bon esprit ! » · « Membre » · « Fil » · « Événements » · « Membres » · « Mamadou Diallo » · « Modérateur » · « il y a 12 min » · « Qui est chaud pour le Clásico samedi ? On se retrouve au Relais à 19h30 ! 🔵🔴 » · « Aïcha Ngono » · « il y a 1 h » · « Quelqu’un a vu la compo probable ? Yamal titulaire sans doute. » · « Kevin Mballa » · « il y a 3 h » · « Photo du dernier visionnage au Bastos, quelle ambiance ! » · « Écrire dans le groupe… » · « Merci ! » · « Ton signalement a été transmis à l’équipe de modération. Tu seras informé(e) de la suite donnée. » · « Fermer » · « Masquer cet utilisateur »

**Composants repérés** : `avatar`, `btn`, `card`, `modal`

</details>

**Issues liées sur ce même écran :** [API-COMM-26](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-26%5D%22) · [API-MODER-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-05%5D%22) · [API-MODER-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-30%5D%22) · [API-MODER-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-32%5D%22) · [MOB-K-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-14%5D%22) · [MOB-K-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-15%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

## 📐 Règles de gestion

- Corps : { targetType: 'post'|'user'|'group'|'event', targetId, reason: 'hate'|'harassment'|'spam'|'inappropriate'|'other', details? (<= 500 car., obligatoire si reason=other) }.
- Libellés motifs : « Propos haineux ou discriminatoires », « Harcèlement ou menaces », « Spam ou publicité », « Contenu inapproprié », « Autre ».
- Le signalement est anonyme pour l'auteur ; le client ne montre jamais l'identité d'un signaleur.
- Un même contenu ne peut être signalé qu'une fois par utilisateur : 409 -> message « Tu as déjà signalé ce contenu » traité comme un succès doux.
- Limite de débit : 429 -> message de patience ; aucune donnée en file locale (pas de rejeu automatique).

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `POST` | `/api/v1/community/reports` | Signaler un contenu ou un utilisateur | {targetType:'post',targetId:'…',reason:'spam'} | {success:true,data:{reportId,status:'open'}} |

## 🗄️ Données

- moderation_reports (targetType, targetId, reporterId, reason, status, createdAt)

## 🛠️ Tâches

- [ ] Créer data/datasources/report_remote_datasource.dart (@Post('/community/reports')).
- [ ] Créer domain/entities/report_reason.dart (enum + toApi).
- [ ] Créer domain/usecases/report_content.dart (params ReportParams).
- [ ] Créer ReportFailure (AlreadyReported, RateLimited, Invalid).
- [ ] Créer le modèle ReportRequestModel.
- [ ] Mapper 409/422/429.
- [ ] Fixtures et tests.
- [ ] Documenter les valeurs de reason avec le dépôt API.

## ✔️ Critères d'acceptation

- [ ] Étant donné reason=other sans détails, quand ReportContent est appelé, alors ValidationFailure.
- [ ] Étant donné un premier signalement valide, quand l'API répond 201, alors Right(unit).
- [ ] Étant donné un 409, quand le signalement est renvoyé, alors Left(AlreadyReported).
- [ ] Étant donné un 429, quand il est envoyé, alors Left(RateLimited).
- [ ] Étant donné la requête, quand elle part, alors elle ne contient pas de données de l'auteur du signalement autres que le jeton d'auth.

## 🧪 Tests à écrire

- [ ] report_content_test.
- [ ] report_reason_test : toApi.
- [ ] report_failure_mapping_test.
- [ ] report_request_model_test.

## 🔗 Dépendances

À réaliser après : `MOB-K-01` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §11
- CDC Backend §3.6

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
