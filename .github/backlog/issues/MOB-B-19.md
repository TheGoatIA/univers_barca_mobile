> **MOB-B-19** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Dernière étape : quatre niveaux de supporter (Je découvre le Barça, Depuis quelques années, Socio dans l'âme, Historien du club) pour adapter la difficulté initiale des quiz.

## ✅ Objectif

Implémenter `SupporterSeniorityPage` conforme à B-14.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-14` — Personnalisation — ancienneté
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-14_personnalisation-anciennete__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-14_personnalisation-anciennete__phone_light.webp?raw=true' width='230' alt='B-14 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-14_personnalisation-anciennete__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-14_personnalisation-anciennete__phone_dark.webp?raw=true' width='230' alt='B-14 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-14_personnalisation-anciennete__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-14_personnalisation-anciennete__tablet_light.webp?raw=true' width='330' alt='B-14 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-14_personnalisation-anciennete__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-14_personnalisation-anciennete__tablet_dark.webp?raw=true' width='330' alt='B-14 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « 3/3 » · « Depuis quand es-tu culé ? » · « Pour adapter le niveau de départ des quiz. » · « Je découvre le Barça » · « Niveau Supporter occasionnel » · « Depuis quelques années » · « Niveau Culé » · « Socio dans l’âme » · « Niveau Socio » · « Historien du club » · « Niveau Historien du Barça » · « Terminer »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-29%5D%22) · [MOB-B-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-01%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Titre « DEPUIS QUAND ES-TU CULÉ ? », sous-titre « Pour adapter le niveau de départ des quiz. », 4 cartes à sélection unique : « Je découvre le Barça — Niveau Supporter occasionnel », « Depuis quelques années — Niveau Culé », « Socio dans l'âme — Niveau Socio », « Historien du club — Niveau Historien du Barça » ; bouton « Terminer ».
- Mapping niveaux : `occasional`, `cule`, `socio`, `historian` (enum client) ; le niveau initialise la difficulté du quiz adaptatif.
- L'API accepte `supporterSince` (année ≥ 1899) mais pas de niveau : écart signalé ; en attendant, le niveau est stocké localement et envoyé dès que le champ `supporterLevel` existe.
- « Terminer » : enregistre le profil (`PATCH /users/me`), marque `profileSetupDone=true`, puis B-15.

## 🔄 Comportement et états

- Aucune carte présélectionnée ; « Terminer » désactivé tant qu'aucun choix (l'étape peut être sautée via retour/« Plus tard » depuis B-10 uniquement).
- Échec PATCH : poursuite + mise en file.
- Retour → B-13.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `PATCH` | `/api/v1/users/me` | Mise à jour du profil (existant ; `favoritePlayerId` et `supporterLevel` à ajouter côté API). | {favoritePlayerId,supporterLevel:'socio'} | {success:true,data:{user}} |

## 🛠️ Tâches

- [ ] Créer `lib/features/auth/presentation/pages/supporter_seniority_page.dart` et `widgets/seniority_option_card.dart`.
- [ ] Créer l'enum `SupporterLevel` dans `lib/features/auth/domain/entities/`.
- [ ] Étendre `OnboardingCubit` avec `supporterLevel` et `complete()`.
- [ ] Brancher `UpdateProfileUseCase` pour envoyer `favoritePlayerId`, `supporterLevel`, pays, ville en une requête groupée.
- [ ] Persister localement le niveau (Drift préférences) pour le quiz.
- [ ] Clés ARB `seniorityTitle`, `seniorityHint`, 4 paires `seniorityOptionN`/`seniorityLevelN`, `finish`.
- [ ] Golden clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné B-14 quand aucune carte n'est choisie alors « Terminer » est désactivé.
- [ ] Étant donné « Socio dans l'âme » choisi quand on appuie « Terminer » alors le niveau `socio` est enregistré et B-15 s'affiche.
- [ ] Étant donné un PATCH en échec quand « Terminer » est appuyé alors le parcours continue et la mise à jour est mise en file.
- [ ] Étant donné le retour quand on l'utilise alors B-13 s'affiche avec sa sélection.

## 🧪 Tests à écrire

- [ ] Test cubit : `complete()` envoie un seul PATCH.
- [ ] Widget test : bouton selon sélection.
- [ ] Test : mapping 4 niveaux.
- [ ] Golden `seniority`.
- [ ] Test : mise en file hors-ligne.

## ♿ Accessibilité et i18n

- Cartes en groupe radio ; description du niveau lue.

## 🔗 Dépendances

À réaliser après : `MOB-B-18` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.1
- CDC Global §2.13

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
