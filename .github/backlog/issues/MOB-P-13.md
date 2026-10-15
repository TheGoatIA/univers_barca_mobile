> **MOB-P-13** · Écran · Priorité **P0** · Taille **L** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Formulaire 'Modifier le profil' : avatar (Changer l'avatar), Pseudo (Boris_Culé — '3 à 20 caractères · visible par les autres culés'), Pays (Cameroun), Ville (Yaoundé), Joueur préféré (Lamine Yamal), Supporter depuis (2018), bouton Enregistrer.

## ✅ Objectif

Permettre la modification du profil via PATCH /users/me.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `P-07` — Modifier le profil
_Module : Culé Passport_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-07_modifier-le-profil__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-07_modifier-le-profil__phone_light.webp?raw=true' width='230' alt='P-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-07_modifier-le-profil__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-07_modifier-le-profil__phone_dark.webp?raw=true' width='230' alt='P-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-07_modifier-le-profil__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-07_modifier-le-profil__tablet_light.webp?raw=true' width='330' alt='P-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-07_modifier-le-profil__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-07_modifier-le-profil__tablet_dark.webp?raw=true' width='330' alt='P-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Modifier le profil » · « Enregistrer » · « Changer l’avatar » · « Pseudo » · « Boris_Culé » · « 3 à 20 caractères · visible par les autres culés » · « Pays » · « Cameroun » · « Ville » · « Yaoundé » · « Joueur préféré » · « Lamine Yamal » · « Supporter depuis »

**Composants repérés** : `avatar`, `btn`, `input`

</details>

**Issues liées sur ce même écran :** [API-PASS-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-19%5D%22) · [API-PASS-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-20%5D%22) · [API-PASS-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-21%5D%22) · [API-PASS-29](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-29%5D%22) · [API-PASS-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-32%5D%22) · [API-PASS-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-PASS-33%5D%22) · [MOB-P-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-02%5D%22) · [MOB-P-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-03%5D%22) · [MOB-P-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-04%5D%22) · [MOB-P-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-19%5D%22) · [MOB-P-21](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-21%5D%22)

## 📐 Règles de gestion

- Pseudo 3 à 20 caractères ; pays (countryCode ISO-2) et ville optionnels ; joueur préféré via sélecteur (GET /players) ; année supporter >= 1899 et <= année courante.
- Enregistrer actif seulement si modifié et valide ; confirmation de sortie si modifications non enregistrées.
- La ville est le niveau de précision public ; aucun champ de géolocalisation ici.
- Succès : toast et retour au profil mis à jour.

## 🔄 Comportement et états

- Erreur réseau : conserve les champs.

## 🛠️ Tâches

- [ ] Créer lib/features/profile_passport/presentation/pages/edit_profile_screen.dart.
- [ ] Sélecteurs pays, joueur.
- [ ] Validations.
- [ ] Appel UpdateProfile.
- [ ] PopScope confirmation.
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné aucun changement alors Enregistrer est désactivé.
- [ ] Étant donné année 1850 alors erreur.
- [ ] Étant donné succès alors le profil est mis à jour.
- [ ] Étant donné sortie avec modifications alors confirmation.

## 🧪 Tests à écrire

- [ ] validation année
- [ ] bouton Enregistrer conditionnel
- [ ] PATCH envoyé
- [ ] PopScope

## ♿ Accessibilité et i18n

- Labels de champs, aide pseudo annoncée

## 🔗 Dépendances

À réaliser après : `MOB-P-04` · `MOB-P-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.12
- CDC Global §2.11
- CDC Backend §3.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
