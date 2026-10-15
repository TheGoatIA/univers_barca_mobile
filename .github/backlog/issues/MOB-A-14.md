> **MOB-A-14** · Écran · Priorité **P0** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Un utilisateur suspendu voit la date de fin, le motif et peut lire la charte ou contester la décision.

## ✅ Objectif

Implémenter `AccountSuspendedPage` conforme à A-09.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `A-09` — Compte suspendu
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-09_compte-suspendu__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-09_compte-suspendu__phone_light.webp?raw=true' width='230' alt='A-09 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-09_compte-suspendu__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-09_compte-suspendu__phone_dark.webp?raw=true' width='230' alt='A-09 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-09_compte-suspendu__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-09_compte-suspendu__tablet_light.webp?raw=true' width='330' alt='A-09 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-09_compte-suspendu__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-09_compte-suspendu__tablet_dark.webp?raw=true' width='330' alt='A-09 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Compte suspendu » · « Ton compte est suspendu jusqu'au » · « 22 octobre 2026 » · « suite à un manquement à la charte de la communauté. » · « Motif » · « Propos inappropriés dans le groupe « Culés Paris ». » · « Fin de la suspension » · « dans 7 jours » · « Lire la charte » · « Contester la décision »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-AUTH-08](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-08%5D%22) · [API-AUTH-44](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-44%5D%22) · [API-AUTH-45](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-45%5D%22) · [API-MODER-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-03%5D%22) · [API-MODER-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-04%5D%22) · [API-MODER-13](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-13%5D%22) · [API-MODER-18](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-18%5D%22) · [API-MODER-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-19%5D%22) · [API-MODER-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-20%5D%22) · [API-MODER-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-30%5D%22) · [API-MODER-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-MODER-32%5D%22) · [MOB-A-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-01%5D%22) · [MOB-A-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-13%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

## 📐 Règles de gestion

- Textes : « Compte suspendu », « Ton compte est suspendu jusqu'au **22 octobre 2026** suite à un manquement à la charte de la communauté. », carte « MOTIF » (« Propos inappropriés dans le groupe « Culés Paris ». ») et ligne « Fin de la suspension — dans 7 jours », bouton secondaire « Lire la charte », lien « Contester la décision ».
- La date est formatée selon la locale (`d MMMM y`) ; « dans 7 jours » est un temps relatif (jours, puis heures sous 48 h, puis minutes).
- « Lire la charte » ouvre le document de charte (B-08 en lecture seule ou URL web) ; « Contester la décision » ouvre un e-mail pré-rempli vers l'adresse de support (constante de configuration, à confirmer avec l'équipe produit) avec l'identifiant de compte et la date de sanction.
- Écran non fermable ; seule porte de sortie : attendre la fin ou se déconnecter (action discrète dans un menu, non visible dans la maquette).

## 🔄 Comportement et états

- À l'échéance, l'écran affiche « Ta suspension est terminée » et un bouton « Continuer ».
- Hors-ligne : données du cache ; bannière A-03.
- Motif très long : tronqué à 4 lignes avec « Voir plus ».

## 🛠️ Tâches

- [ ] Créer `lib/features/system/presentation/pages/account_suspended_page.dart`.
- [ ] Créer `widgets/restriction_reason_card.dart` (réutilisable pour A-10 si motif).
- [ ] Implémenter le formatage de date et durée relative dans `core/utils/date_format.dart`.
- [ ] Ajouter `mailto:` via `url_launcher` avec sujet et corps prérempli (id de compte, date).
- [ ] Routage vers la charte (`/legal/charter`).
- [ ] Clés ARB `suspendedTitle`, `suspendedUntil` (placeholder `{date}`), `suspendedReasonLabel`, `suspendedEndsIn`, `suspendedReadCharter`, `suspendedContest`.
- [ ] Golden clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné suspendedUntil=2026-10-22 quand la page s'affiche le 15 octobre alors « dans 7 jours » est visible.
- [ ] Étant donné « Lire la charte » quand on l'appuie alors la charte s'ouvre.
- [ ] Étant donné « Contester la décision » quand on l'appuie alors un e-mail prérempli s'ouvre.
- [ ] Étant donné la fin de suspension quand l'heure est atteinte alors le bouton Continuer apparaît.

## 🧪 Tests à écrire

- [ ] Widget test : date et relatif localisés fr/en/es.
- [ ] Test : mailto encodé correctement.
- [ ] Golden `account_suspended` clair/sombre.
- [ ] Test : motif long tronqué.
- [ ] Test : bascule à l'échéance.

## ♿ Accessibilité et i18n

- Date lue en toutes lettres ; carte motif en `Semantics(container)`.
- Bouton ≥ 48 dp.

## 🔗 Dépendances

À réaliser après : `MOB-A-13` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §10.3
- CDC Global §11.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
