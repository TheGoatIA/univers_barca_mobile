> **MOB-ZD-05** · Écran · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

RG-MAP-01 : aucun marqueur n'est un utilisateur précis ; seuls des agrégats par zone et des groupes publics. Planche : clusters (108, 144, 180) dont la taille est proportionnelle au nombre de culés, groupe local en or, « Ma zone » floue, contrôles 44×44.

## ✅ Objectif

`ClusterMarker`, `GroupMarker`, `MyZoneOverlay`, `MapControlButton`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZD-02` — Carte communautaire, chat et calendrier
_Module : Composants métier et responsive_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__desktop_light.webp?raw=true' width='330' alt='ZD-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__desktop_dark.webp?raw=true' width='330' alt='ZD-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__mobile_light.webp?raw=true' width='230' alt='ZD-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__mobile_dark.webp?raw=true' width='230' alt='ZD-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Métier · 02 » · « Carte, chat et calendrier » · « Marqueurs agrégés (jamais de position individuelle), bulles de chat, cartes de match et frise chronologique. » · « Carte — marqueurs et zones » · « RG-MAP-01 : aucun marqueur ne correspond à un utilisateur précis. Seuls des agrégats par zone et des groupes publics sont affichés. » · « Cluster (agrégat) » · « taille ∝ nombre de culés » · « Groupe local » · « or · entité publique » · « Ma zone (approximative) » · « zone floue, pas de point exact » · « Contrôles de carte » · « 44×44 » · « Chat Barça AI » · « Bulles » · « Combien de buts Lewandowski a marqué ? » · « 11 buts en 14 matchs cette saison. » · « Joueurs » · « Comparer » · « Messages d’état » · « Message non traité (charte) » · « Échec de l’envoi · » · « Réessayer » · « Barça AI nécessite une connexion. » · « Calendrier et frise » · « Ligne de match » · « OCT. » · « Barça » · « Real Madrid »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-35](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-35%5D%22) · [MOB-ZD-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-06%5D%22) · [MOB-ZD-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-07%5D%22)

## 📐 Règles de gestion

- Cluster : disque garnet 40 % + anneau, diamètre ∝ √n (min 36, max 72), nombre en Barlow tabulaire.
- Groupe local (entité publique) : pin or avec icône groupe.
- Ma zone : cercle flou de rayon ≥ 1 km (position approximative, jamais un point exact).
- Contrôles 44 × 44 (recentrer, zoom +/−) ; aucun marqueur individuel.

## 🛠️ Tâches

- [ ] Créer `lib/core/widgets/map/cluster_marker.dart`, `group_marker.dart`, `my_zone_overlay.dart`, `map_control_button.dart`.
- [ ] Fonction `clusterDiameter(n)`.
- [ ] Animer l'apparition des clusters (échelle 0,8 → 1, 180 ms) et fusion/éclatement au zoom.
- [ ] Rendu via widgets `Marker` du package carte retenu (flutter_map/google_maps) en dehors de cette issue.
- [ ] Tests, goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné 144 culés, alors le diamètre est > celui de 108.
- [ ] Étant donné ma zone, alors un cercle flou est dessiné et non un point.
- [ ] Étant donné les contrôles, alors chacun a une cible ≥ 44 × 44.

## 🧪 Tests à écrire

- [ ] Unitaire : `clusterDiameter`.
- [ ] Widget : tailles.
- [ ] Golden : marqueurs clair/sombre.

## ♿ Accessibilité et i18n

- Cluster « 144 culés dans cette zone » ; ARB pluriels.

## 📚 Références

- CDC Global RG-MAP-01
- CDC Flutter carte

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
