> **MOB-B-16** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Première étape optionnelle de personnalisation : pays et ville servent à proposer des groupes locaux et l'heure des matchs, sans GPS.

## ✅ Objectif

Implémenter `CountryCityPage` conforme à B-11 et enregistrer `countryCode` + `city`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-11` — Pays et ville
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-11_pays-et-ville__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-11_pays-et-ville__phone_light.webp?raw=true' width='230' alt='B-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-11_pays-et-ville__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-11_pays-et-ville__phone_dark.webp?raw=true' width='230' alt='B-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-11_pays-et-ville__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-11_pays-et-ville__tablet_light.webp?raw=true' width='330' alt='B-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-11_pays-et-ville__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-11_pays-et-ville__tablet_dark.webp?raw=true' width='330' alt='B-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « 1/3 » · « D’où supportes-tu ? » · « Optionnel · pour te proposer des groupes locaux et l’heure des matchs. Aucune position GPS n’est utilisée ici. » · « Pays » · « Cameroun » · « Ville » · « Yaoundé » · « Seule ta » · « ville » · « pourra apparaître sur la carte, jamais ta position exacte. » · « Continuer » · « Passer cette étape »

**Composants repérés** : `btn`, `card`, `input`

</details>

**Issues liées sur ce même écran :** [API-AUTH-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-29%5D%22) · [API-AUTH-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-30%5D%22) · [MOB-B-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-01%5D%22) · [MOB-B-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-13%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Textes : « D'OÙ SUPPORTES-TU ? », « Optionnel · pour te proposer des groupes locaux et l'heure des matchs. Aucune position GPS n'est utilisée ici. », champ « Pays » (valeur « Cameroun », sélecteur) et champ « Ville » (« Yaoundé »), carte d'information « Seule ta **ville** pourra apparaître sur la carte, jamais ta position exacte. », bouton « Continuer », lien « Passer cette étape ».
- Le champ Pays ouvre B-12 ; le champ Ville est un texte libre max 80 caractères (API `city`), désactivé tant que le pays est vide.
- Stockage : `countryCode` ISO 3166-1 alpha-2 majuscules (2 caractères) et `city` via `PATCH /users/me` ; fuseau `timezone` déduit du pays/appareil (`Europe/Madrid` par défaut côté serveur).
- Minimisation RGPD : jamais de position GPS, ville uniquement (CDC Global §10.2).

## 🔄 Comportement et états

- « Continuer » actif si pays rempli (la ville peut rester vide) ; « Passer cette étape » → B-13 sans appel.
- Échec réseau du PATCH : on poursuit le parcours et on remet la mise à jour en file ; message discret.
- Retour : conserve les valeurs.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `PATCH` | `/api/v1/users/me` | Mise à jour du profil (existant). | {countryCode:'CM',city:'Yaoundé'} | {success:true,data:{user}} |

## 🛠️ Tâches

- [ ] Créer `lib/features/auth/presentation/pages/country_city_page.dart` et `widgets/selector_field.dart`.
- [ ] Ajouter `UpdateProfileUseCase` (`PATCH /users/me`) utilisé par les étapes 1 à 3.
- [ ] Valider la ville : trim, 1–80 caractères, caractères Unicode lettres/espaces/tirets.
- [ ] Mémoriser les choix dans `OnboardingCubit`.
- [ ] Mettre en file `PendingActions` si hors-ligne.
- [ ] Clés ARB `countryCityTitle`, `countryCityHint`, `fieldCountry`, `fieldCity`, `cityPrivacyNote`, `skipStep`.
- [ ] Golden clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné pays « Cameroun » et ville « Yaoundé » quand on appuie « Continuer » alors `PATCH /users/me {countryCode:'CM',city:'Yaoundé'}` est envoyé et B-13 s'affiche.
- [ ] Étant donné aucun pays quand on appuie « Passer cette étape » alors B-13 s'affiche sans appel API.
- [ ] Étant donné une ville de 81 caractères quand on la saisit alors la saisie est bloquée à 80.
- [ ] Étant donné aucune connexion quand on appuie « Continuer » alors le parcours continue et la mise à jour est mise en file.

## 🧪 Tests à écrire

- [ ] Widget test : bouton selon pays.
- [ ] Test : payload PATCH.
- [ ] Test : ville > 80.
- [ ] Golden `country_city`.
- [ ] Test : mise en file hors-ligne.

## ♿ Accessibilité et i18n

- Champs avec label ; note de confidentialité lue avant le bouton.

## 🔗 Dépendances

À réaliser après : `MOB-B-01` · `MOB-B-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §10.2
- CDC Flutter §7.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
