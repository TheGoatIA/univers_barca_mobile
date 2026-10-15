> **MOB-Q-24** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Q-15 : écran de marque (« Univers Barça — Ton compagnon culé, au quotidien. Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. Application communautaire non officielle · fan-made ») avec « Compte supprimé — Tes données ont été effacées. Merci d'avoir fait partie de la communauté. À bientôt, culé ! » et « Retour à l'accueil ».

## ✅ Objectif

Implémenter l'écran de confirmation post-suppression, hors session.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-15` — Compte supprimé
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-15_compte-supprime__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-15_compte-supprime__phone_light.webp?raw=true' width='230' alt='Q-15 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-15_compte-supprime__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-15_compte-supprime__phone_dark.webp?raw=true' width='230' alt='Q-15 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-15_compte-supprime__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-15_compte-supprime__tablet_light.webp?raw=true' width='330' alt='Q-15 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-15_compte-supprime__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-15_compte-supprime__tablet_dark.webp?raw=true' width='330' alt='Q-15 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Univers » · « Barça » · « Ton compagnon » · « culé, au quotidien. » · « Assistant IA, jeux quotidiens, histoire du club et communauté de supporters, au même endroit. » · « Application communautaire non officielle · fan-made » · « Compte supprimé » · « Tes données ont été effacées. Merci d'avoir fait partie de la communauté. À bientôt, culé ! » · « Retour à l’accueil »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-26](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-26%5D%22) · [API-AUTH-27](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-27%5D%22) · [MOB-Q-23](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-23%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Écran affiché sans session : aucune requête authentifiée ; bouton « Retour à l'accueil » mène à l'écran de bienvenue (groupe auth), pas au dashboard.
- Le retour arrière système est désactivé (on ne revient pas dans l'app authentifiée).
- Rappel légal : « Application communautaire non officielle » (CDC Global §10.1).

## 🛠️ Tâches

- [ ] Créer `account_deleted_page.dart` (route `/account-deleted`, hors guard).
- [ ] Réutiliser les widgets de marque du splash/bienvenue (`BrandLockup`).
- [ ] `PopScope(canPop:false)` ; bouton → `context.go(RouteConstants.onboarding)`.
- [ ] Éviter toute dépendance DI nécessitant un utilisateur (services authentifiés).
- [ ] Golden test clair/sombre.
- [ ] Test widget navigation.
- [ ] Analytics anonymes (si consentement résiduel inexistant : aucune).
- [ ] Clés ARB.

## ✔️ Critères d'acceptation

- [ ] Étant donné la suppression réussie, quand Q-15 s'affiche, alors aucune donnée utilisateur n'est visible.
- [ ] Étant donné « Retour à l'accueil », quand il est touché, alors l'écran de bienvenue s'affiche.
- [ ] Étant donné le bouton retour système, quand il est utilisé, alors rien ne se passe.
- [ ] Étant donné une relance de l'app, quand elle démarre, alors l'utilisateur est non authentifié.

## 🧪 Tests à écrire

- [ ] Golden test : Q-15.
- [ ] Widget test : PopScope.
- [ ] Widget test : navigation vers l'accueil.
- [ ] Test : relance non authentifiée.

## ♿ Accessibilité et i18n

- Clés ARB : `accountDeletedTitle`, `accountDeletedBody`, `backToHome`, `brandTagline`, `brandDescription`, `unofficialApp`.

## 🔗 Dépendances

À réaliser après : `MOB-Q-23` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §10.1
- CDC Global §2.13

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
