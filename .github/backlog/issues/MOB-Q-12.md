> **MOB-Q-12** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Q-06 : modale « Désactiver la localisation ? — Tu n'apparaîtras plus dans les compteurs de la carte. Tu pourras toujours indiquer ton pays et ta ville manuellement. » avec « Désactiver » et « Annuler ».

## ✅ Objectif

Implémenter la révocation de la géolocalisation avec effets de bord conformes aux règles RG-MAP.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-06` — Révoquer la géolocalisation
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-06_revoquer-la-geolocalisation__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-06_revoquer-la-geolocalisation__phone_light.webp?raw=true' width='230' alt='Q-06 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-06_revoquer-la-geolocalisation__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-06_revoquer-la-geolocalisation__phone_dark.webp?raw=true' width='230' alt='Q-06 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-06_revoquer-la-geolocalisation__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-06_revoquer-la-geolocalisation__tablet_light.webp?raw=true' width='330' alt='Q-06 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-06_revoquer-la-geolocalisation__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-06_revoquer-la-geolocalisation__tablet_dark.webp?raw=true' width='330' alt='Q-06 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Confidentialité » · « Géolocalisation approximative » · « Désactiver la localisation ? » · « Tu n'apparaîtras plus dans les compteurs de la carte. Tu pourras toujours indiquer ton pays et ta ville manuellement. » · « Désactiver » · « Annuler »

**Composants repérés** : `btn`, `modal`, `toggle`

</details>

**Issues liées sur ce même écran :** [API-AUTH-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-21%5D%22) · [API-AUTH-23](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-23%5D%22) · [MOB-Q-10](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-10%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Révocation immédiate : consentement `geolocation:false`, suppression de la position approximative stockée côté serveur (ville uniquement, jamais GPS précis).
- Repli RG-MAP-03 : l'utilisateur peut déclarer manuellement pays/ville pour rester dans les compteurs (lien après confirmation).
- « Annuler » restaure l'interrupteur à activé.

## 🛠️ Tâches

- [ ] Créer `RevokeGeolocationDialog` (`showDialog`, boutons `AppButton` danger/neutre).
- [ ] Appeler `SetConsent(geolocation,false)` puis `LocationService.clear()`.
- [ ] Mettre à jour `mapVisibility` si nécessaire (conserver « Ville/Pays » manuel).
- [ ] Afficher un toast « Localisation désactivée ».
- [ ] Gérer l'échec réseau avec rollback de l'interrupteur.
- [ ] Golden test clair/sombre.
- [ ] Tests widget.
- [ ] Analytics `geo_revoked`.

## ✔️ Critères d'acceptation

- [ ] Étant donné l'interrupteur touché, quand il est coupé, alors la modale Q-06 s'affiche avant toute révocation.
- [ ] Étant donné « Désactiver », quand il est touché, alors le consentement est révoqué et la position serveur supprimée.
- [ ] Étant donné « Annuler », quand il est touché, alors l'interrupteur reste activé.
- [ ] Étant donné un échec réseau, quand la révocation échoue, alors l'interrupteur revient à son état précédent avec un message.

## 🧪 Tests à écrire

- [ ] Golden test : Q-06.
- [ ] Widget test : annulation.
- [ ] Widget test : révocation.
- [ ] Widget test : rollback.
- [ ] Test : effacement de la position locale.

## ♿ Accessibilité et i18n

- Clés ARB : `disableLocationTitle`, `disableLocationBody`, `disable`, `cancel`, `locationDisabledToast`.

## 🔗 Dépendances

À réaliser après : `MOB-Q-11` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.16.2 (RG-MAP-02, RG-MAP-03)
- CDC Global §10.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
