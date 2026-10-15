> **MOB-B-11** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Variante de B-06 où deux champs sont en erreur (bordure rouge, icône d'alerte, message) et le mot de passe en cours de saisie est en focus bleu avec la jauge.

## ✅ Objectif

Rendre fidèlement les états d'erreur et de focus du formulaire d'inscription.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `B-07` — Inscription — erreurs de validation
_Module : Onboarding et authentification_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-07_inscription-erreurs-de-validation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-07_inscription-erreurs-de-validation__phone_light.webp?raw=true' width='230' alt='B-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-07_inscription-erreurs-de-validation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-07_inscription-erreurs-de-validation__phone_dark.webp?raw=true' width='230' alt='B-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-07_inscription-erreurs-de-validation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-07_inscription-erreurs-de-validation__tablet_light.webp?raw=true' width='330' alt='B-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-07_inscription-erreurs-de-validation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/B/B-07_inscription-erreurs-de-validation__tablet_dark.webp?raw=true' width='330' alt='B-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « 1/4 » · « Crée ton compte » · « Quelques secondes suffisent. » · « Pseudo » · « bo » · « 3 caractères minimum » · « E-mail » · « boris@exemple » · « Adresse e-mail invalide » · « Mot de passe » · « •••••• » · « Force : » · « moyenne » · « · ajoute un chiffre et un symbole » · « Continuer »

**Composants repérés** : `btn`, `input`

</details>

**Issues liées sur ce même écran :** [API-AUTH-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-05%5D%22) · [API-AUTH-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-06%5D%22) · [API-AUTH-44](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-44%5D%22) · [MOB-B-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-10%5D%22) · [MOB-B-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-28%5D%22) · [MOB-B-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-B-29%5D%22)

## 📐 Règles de gestion

- Champ erreur : bordure rouge `error` avec halo léger, icône triangle d'alerte et message en rouge sous le champ ; pas de décalage de mise en page agressif (animation 150 ms de la hauteur).
- Champ focus : bordure bleue `info` avec halo ; mot de passe affiché en points « •••••• » avec œil.
- Jauge sous le mot de passe : segments jaunes pour « moyenne », texte « Force : moyenne · ajoute un chiffre et un symbole » (mot « moyenne » en jaune gras).
- Bouton « Continuer » inchangé et actif.

## 🔄 Comportement et états

- Les erreurs ne s'affichent qu'après interaction ou soumission.
- Une erreur serveur globale (réseau, 5xx) est présentée en SnackBar, pas sous un champ.
- Hors-ligne : « Pas de connexion » en SnackBar à la soumission.

## 🛠️ Tâches

- [ ] Implémenter l'état `error` dans `auth_text_field.dart` (tokens `AppColors.error`, `AppColors.info`).
- [ ] Ajouter l'animation `AnimatedSize` des messages d'erreur.
- [ ] Créer un `FormErrorBanner` pour erreurs globales.
- [ ] Écrire les goldens `register_errors` (3 champs, 3 états).
- [ ] Vérifier le contraste du rouge d'erreur ≥ 4,5:1 sur fond clair et sombre.
- [ ] Ajouter les clés ARB d'erreur manquantes.
- [ ] Documenter les états dans le design system (`docs/`).

## ✔️ Critères d'acceptation

- [ ] Étant donné pseudo et e-mail invalides quand le formulaire est soumis alors les deux messages s'affichent avec icône.
- [ ] Étant donné un champ corrigé quand sa valeur devient valide alors son erreur disparaît.
- [ ] Étant donné le focus sur le mot de passe quand la saisie se poursuit alors la jauge se met à jour.
- [ ] Étant donné le thème sombre quand une erreur s'affiche alors le contraste reste ≥ 4,5:1.

## 🧪 Tests à écrire

- [ ] Golden `register_validation_errors` clair/sombre.
- [ ] Widget test : icône + message présents.
- [ ] Widget test : animation de hauteur.
- [ ] Test : erreur globale en SnackBar.

## ♿ Accessibilité et i18n

- Erreur = icône + texte, pas la couleur seule.

## 🔗 Dépendances

À réaliser après : `MOB-B-10` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §9.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
