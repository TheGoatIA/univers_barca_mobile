> **MOB-P-17** · Écran · Priorité **P1** · Taille **M** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Profil public 'Aïcha_N' (🇨🇲 Yaoundé · Culé depuis 2015, 1 420 points, série max, badges), boutons 'Défier au quiz' et 'Signaler', mention 'Seules la ville et les statistiques publiques sont visibles. Aucune position exacte.'

## ✅ Objectif

Afficher un profil public respectueux du RGPD.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `P-11` — Profil d’un autre culé
_Module : Culé Passport_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-11_profil-d-un-autre-cule__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-11_profil-d-un-autre-cule__phone_light.webp?raw=true' width='230' alt='P-11 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-11_profil-d-un-autre-cule__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-11_profil-d-un-autre-cule__phone_dark.webp?raw=true' width='230' alt='P-11 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-11_profil-d-un-autre-cule__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-11_profil-d-un-autre-cule__tablet_light.webp?raw=true' width='330' alt='P-11 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-11_profil-d-un-autre-cule__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/P/P-11_profil-d-un-autre-cule__tablet_dark.webp?raw=true' width='330' alt='P-11 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Profil » · « Aïcha_N » · « 🇨🇲 Yaoundé · Culé depuis 2015 » · « 1 420 » · « Points » · « Série max » · « Badges » · « Défier au quiz » · « Signaler » · « Seules la ville et les statistiques publiques sont visibles. Aucune position exacte. »

**Composants repérés** : `avatar`, `btn`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-P-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-01%5D%22) · [MOB-P-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-02%5D%22) · [MOB-P-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-P-19%5D%22)

## 📐 Règles de gestion

- Visible : pseudo, avatar, ville, pays, supporterSince, points, série max, badges ; jamais email, coordonnées ni position exacte (CDC Global §2.8).
- 'Signaler' ouvre le flux de signalement (ModerationReport target_type=user, raison obligatoire).
- 'Défier au quiz' lance une invitation de duel (disponible si le module Quiz l'expose, sinon masqué).
- Profil bloqué/suspendu : message 'Profil indisponible'.

## 🔄 Comportement et états

- 404 -> 'Profil introuvable'.

## 🛠️ Tâches

- [ ] Créer lib/features/profile_passport/presentation/pages/public_profile_screen.dart.
- [ ] Use case GetPublicProfile.
- [ ] Feuille de signalement (réutilise le module modération).
- [ ] Mention RGPD.
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné un profil public alors aucune donnée personnelle n'apparaît.
- [ ] Étant donné 'Signaler' alors une raison est demandée.
- [ ] Étant donné un profil suspendu alors 'Profil indisponible'.
- [ ] Étant donné 404 alors message.

## 🧪 Tests à écrire

- [ ] pas de donnée sensible
- [ ] signalement envoyé
- [ ] profil suspendu
- [ ] 404

## ♿ Accessibilité et i18n

- Mention RGPD lisible

## 🔗 Dépendances

À réaliser après : `MOB-P-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.8
- CDC Global §2.11
- CDC Flutter §7.12

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
