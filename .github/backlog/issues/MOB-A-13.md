> **MOB-A-13** · Fonctionnel · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Le modèle `User` de l'API porte `status` (`active|suspended|banned|deleted`) et `suspendedUntil`, et le login renvoie 403 `ACCOUNT_SUSPENDED` pour un compte suspendu. Le mobile doit transformer ces signaux en états navigables A-09/A-10.

## ✅ Objectif

Détecter et propager la restriction (au login, au refresh et sur tout appel) puis alimenter A-09 et A-10 avec date de fin, motif et contenu de la charte.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `A-09` — Compte suspendu
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-09_compte-suspendu__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-09_compte-suspendu__phone_light.webp?raw=true' width='230' alt='A-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-09_compte-suspendu__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-09_compte-suspendu__phone_dark.webp?raw=true' width='230' alt='A-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-09_compte-suspendu__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-09_compte-suspendu__tablet_light.webp?raw=true' width='330' alt='A-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-09_compte-suspendu__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-09_compte-suspendu__tablet_dark.webp?raw=true' width='330' alt='A-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Compte suspendu » · « Ton compte est suspendu jusqu'au » · « 22 octobre 2026 » · « suite à un manquement à la charte de la communauté. » · « Motif » · « Propos inappropriés dans le groupe « Culés Paris ». » · « Fin de la suspension » · « dans 7 jours » · « Lire la charte » · « Contester la décision »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-AUTH-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-08%5D%22) · [API-AUTH-44](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-44%5D%22) · [API-AUTH-45](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-45%5D%22) · [API-MODER-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-03%5D%22) · [API-MODER-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-04%5D%22) · [API-MODER-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-13%5D%22) · [API-MODER-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-18%5D%22) · [API-MODER-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-19%5D%22) · [API-MODER-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-20%5D%22) · [API-MODER-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-30%5D%22) · [API-MODER-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-32%5D%22) · [MOB-A-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-01%5D%22) · [MOB-A-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-14%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

#### `A-10` — Compte banni
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-10_compte-banni__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-10_compte-banni__phone_light.webp?raw=true' width='230' alt='A-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-10_compte-banni__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-10_compte-banni__phone_dark.webp?raw=true' width='230' alt='A-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-10_compte-banni__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-10_compte-banni__tablet_light.webp?raw=true' width='330' alt='A-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-10_compte-banni__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-10_compte-banni__tablet_dark.webp?raw=true' width='330' alt='A-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Accès retiré » · « Ton compte a été banni définitivement pour non-respect répété de la charte de la communauté. » · « Contacter le support » · « Se déconnecter »

**Composants repérés** : `btn`

</details>

**Issues liées sur ce même écran :** [API-AUTH-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-08%5D%22) · [API-AUTH-44](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-44%5D%22) · [API-AUTH-45](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-45%5D%22) · [API-MODER-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-03%5D%22) · [API-MODER-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-04%5D%22) · [API-MODER-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-18%5D%22) · [API-MODER-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-19%5D%22) · [API-MODER-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-20%5D%22) · [API-MODER-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-28%5D%22) · [API-MODER-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-30%5D%22) · [API-MODER-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-32%5D%22) · [MOB-A-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-01%5D%22) · [MOB-A-15](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-15%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

## 📐 Règles de gestion

- Suspension : accès bloqué jusqu'à `suspendedUntil` ; passé cette date l'accès est rendu automatiquement (le client recalcule au démarrage et toutes les minutes sur A-09).
- Bannissement : définitif ; aucune date ; l'utilisateur peut seulement contacter le support ou se déconnecter.
- Les sanctions possibles sont avertissement, suspension, bannissement (CDC Global §10.3) ; seuls suspension et ban bloquent l'application.
- Motif fourni par la modération (champ `reason`, texte localisé ou libre) ; absent → libellé générique « manquement à la charte ».

## 🔄 Comportement et états

- Login 403 `ACCOUNT_SUSPENDED` → A-09 sans session active ; 403 `ACCOUNT_DISABLED` → A-10.
- Session active et changement de statut côté serveur : le prochain appel renvoie 403 ; l'événement est diffusé et l'écran s'ouvre.
- Fin de suspension : bouton « Continuer » ou redirection automatique vers `/home`.

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `GET` | `/api/v1/users/me` | Profil courant incluant status et suspendedUntil (existant ; ajouter `restriction.reason` côté API si absent). | — | {success:true,data:{status:'suspended',suspendedUntil:'2026-10-22T00:00:00Z',restriction:{reason:'…'}}} |

## 🛠️ Tâches

- [ ] Ajouter `AccountStatus` (enum) et `AccountRestriction` (status, until, reason) dans `lib/features/system/domain/entities/`.
- [ ] Étendre `AuthBloc` : état `AuthStatus.restricted` avec `AccountRestriction`.
- [ ] Mapper `AccountRestrictedFailure` depuis l'intercepteur sur 403 + code (`ACCOUNT_SUSPENDED` → suspendu ; `ACCOUNT_DISABLED` → A-10, le statut `deleted` est affiché comme `banned` par défaut ; vérifier via GET /users/me si accessible).
- [ ] Ajouter la lecture de `status`/`suspendedUntil` dans `UserModel` (`GET /users/me`).
- [ ] Stocker la restriction dans le cache Drift pour afficher A-09 hors-ligne.
- [ ] Planifier la réévaluation à `suspendedUntil` (Timer + resumed).
- [ ] Tests unitaires de la logique de date (fuseaux, minuit).

## ✔️ Critères d'acceptation

- [ ] Étant donné un login d'un compte suspendu quand l'API répond 403 alors A-09 s'affiche avec la date.
- [ ] Étant donné la date de fin dépassée quand l'app démarre alors l'utilisateur accède à `/home`.
- [ ] Étant donné un compte banni quand n'importe quel appel renvoie 403 alors A-10 s'affiche.
- [ ] Étant donné un appareil hors-ligne quand la restriction est en cache alors A-09 reste affiché.

## 🧪 Tests à écrire

- [ ] Test unitaire : calcul « dans 7 jours » pour 22 octobre 2026 au 15 octobre 2026.
- [ ] Test : mapping 403 ACCOUNT_SUSPENDED/BANNED.
- [ ] Test AuthBloc : transition vers `restricted`.
- [ ] Test : réévaluation à l'échéance.
- [ ] Test : motif absent → texte générique.

## 🔗 Dépendances

À réaliser après : `MOB-A-05` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §10.3
- CDC Global §11.2
- CDC Backend §3.11

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
