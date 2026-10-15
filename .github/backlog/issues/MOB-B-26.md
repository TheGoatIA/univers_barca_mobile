> **MOB-B-26** · Écran · Priorité **P0** · Taille **XS** · Phase 1 — MVP

## 🎯 Contexte

Confirmation de la réinitialisation : les autres appareils sont déconnectés par sécurité.

## ✅ Objectif

Implémenter `PasswordChangedPage` conforme à B-20.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-20` — Mot de passe modifié
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-20_mot-de-passe-modifie__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-20_mot-de-passe-modifie__phone_light.webp?raw=true' width='230' alt='B-20 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-20_mot-de-passe-modifie__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-20_mot-de-passe-modifie__phone_dark.webp?raw=true' width='230' alt='B-20 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-20_mot-de-passe-modifie__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-20_mot-de-passe-modifie__tablet_light.webp?raw=true' width='330' alt='B-20 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-20_mot-de-passe-modifie__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-20_mot-de-passe-modifie__tablet_dark.webp?raw=true' width='330' alt='B-20 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « Mot de passe mis à jour » · « Tu as été déconnecté(e) de tes autres appareils par sécurité. » · « Se connecter »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-18%5D%22) · [API-AUTH-43](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-43%5D%22) · [MOB-B-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-08%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Textes : « Mot de passe mis à jour », « Tu as été déconnecté(e) de tes autres appareils par sécurité. », bouton « Se connecter » → B-16.
- L'écran n'est pas une session : aucun jeton n'est conservé ; l'e-mail est pré-rempli si connu.
- Retour système → B-16 (jamais B-19).
- Animation : coche dessinée (500 ms), désactivée avec animations réduites.

## 🔄 Comportement et états

- Pas d'appel réseau.
- Affichage uniquement après succès de B-19.

## 🛠️ Tâches

- [ ] Créer `lib/features/auth/presentation/pages/password_changed_page.dart`.
- [ ] Réutiliser `AnimatedCheckmark`.
- [ ] Route `/reset-password/done` avec `PopScope` redirigeant vers `/login`.
- [ ] Clés ARB `passwordChangedTitle`, `passwordChangedBody`, `signInAction`.
- [ ] Purger les jetons locaux éventuels.
- [ ] Golden clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné B-19 réussi quand l'API répond alors B-20 s'affiche.
- [ ] Étant donné B-20 quand on appuie « Se connecter » alors B-16 s'affiche.
- [ ] Étant donné le retour Android quand on l'utilise alors B-16 s'affiche.
- [ ] Étant donné animations réduites quand B-20 s'affiche alors la coche est statique.

## 🧪 Tests à écrire

- [ ] Widget test : bouton et navigation.
- [ ] Test : PopScope → login.
- [ ] Golden `password_changed`.
- [ ] Test : jetons absents.

## ♿ Accessibilité et i18n

- Titre annoncé en premier.

## 🔗 Dépendances

À réaliser après : `MOB-B-25` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §5.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
