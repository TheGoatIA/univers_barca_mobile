> **MOB-F-19** · Fonctionnel · Priorité **P2** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

La barre de F-07 propose les icônes Partager et Favori (signet).

## ✅ Objectif

Permettre de partager le lien d'un match et de le mémoriser localement.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `F-07` — Match historique — résumé
_Module : Historique et fiches_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-07_match-historique-resume__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-07_match-historique-resume__phone_light.webp?raw=true' width='230' alt='F-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-07_match-historique-resume__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-07_match-historique-resume__phone_dark.webp?raw=true' width='230' alt='F-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-07_match-historique-resume__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-07_match-historique-resume__tablet_light.webp?raw=true' width='330' alt='F-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-07_match-historique-resume__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/F/F-07_match-historique-resume__tablet_dark.webp?raw=true' width='330' alt='F-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Match historique » · « Ligue des champions · Finale » · « Barça » · « 3 – 1 » · « Mi-temps 1-1 » · « Man. United » · « 28 mai 2011 · » · « Wembley, Londres » · « Résumé » · « Compos » · « Événements » · « Contexte » · « Buteurs » · « 27' » · « Pedro » · « Barça · passe de Xavi » · « 34' » · « Rooney » · « 54' » · « Messi » · « 69' » · « Villa » · « Barça · passe de Messi » · « Statistiques du match » · « 63% » · « Possession » · « 37% » · « Tirs » · « Tirs cadrés » · « Corners »

**Composants repérés** : `card`

</details>

**Issues liées sur ce même écran :** [API-FOOT-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-03%5D%22) · [API-FOOT-16](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-16%5D%22) · [API-FOOT-42](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-FOOT-42%5D%22) · [MOB-F-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-01%5D%22) · [MOB-F-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-02%5D%22) · [MOB-F-03](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-03%5D%22) · [MOB-F-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-04%5D%22) · [MOB-F-13](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-13%5D%22) · [MOB-F-14](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-14%5D%22) · [MOB-F-24](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-24%5D%22) · [MOB-F-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-25%5D%22) · [MOB-F-26](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-26%5D%22) · [MOB-F-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-F-27%5D%22)

## 📐 Règles de gestion

- Partager : feuille de partage système avec texte 'Barça 3 – 1 Man. United · Ligue des champions · 28 mai 2011' + lien profond universel vers /history/match/:id ; mention 'Univers Barça — application communautaire non officielle'.
- Favori : bascule locale (Drift, table FavoriteMatches(matchId, createdAt)) sans compte ; l'icône passe pleine ; aucune synchro serveur (CDC n'en prévoit pas).
- Le favori n'est pas requis pour la consultation hors-ligne mais déclenche la conservation du cache (exclu de la purge LRU).
- Aucune donnée personnelle partagée.

## 🛠️ Tâches

- [ ] Ajouter share_plus (déjà prévu §14.1) ; créer ShareMatchUseCase.
- [ ] Créer table Drift FavoriteMatches + DAO.
- [ ] Créer FavoriteMatchCubit.
- [ ] Construire le lien profond : https://univers-barca.app/history/match/:id (configurable par flavor).
- [ ] Exclure les favoris de la purge LRU.
- [ ] Ajouter ARB et tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné le tap sur Partager alors la feuille système contient le titre et le lien.
- [ ] Étant donné le tap sur le signet alors l'icône devient pleine et la ligne existe en base.
- [ ] Étant donné un second tap alors le favori est retiré.
- [ ] Étant donné un match favori alors il n'est jamais purgé du cache.

## 🧪 Tests à écrire

- [ ] Test unitaire FavoriteMatchCubit_toggle
- [ ] Test unitaire construction_lien_profond
- [ ] Test widget icone_signet_etat
- [ ] Test unitaire purge_exclut_favoris

## ♿ Accessibilité et i18n

- Tooltip 'Partager le match' / 'Ajouter aux favoris'.

## 🔗 Dépendances

À réaliser après : `MOB-F-14` · `MOB-F-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.5
- CDC Flutter §6.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
