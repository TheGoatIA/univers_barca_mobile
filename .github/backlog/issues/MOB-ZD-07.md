> **MOB-ZD-07** · Écran · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Ligne de match « OCT. · FCB Barça · RMA Real Madrid · 20:00 » avec écussons génériques, et frise chronologique de l'histoire.

## ✅ Objectif

`MatchRow`, `MatchCard`, `TimelineItem`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZD-02` — Carte communautaire, chat et calendrier
_Module : Composants métier et responsive_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__desktop_light.webp?raw=true' width='330' alt='ZD-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__desktop_dark.webp?raw=true' width='330' alt='ZD-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__mobile_light.webp?raw=true' width='230' alt='ZD-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__mobile_dark.webp?raw=true' width='230' alt='ZD-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Métier · 02 » · « Carte, chat et calendrier » · « Marqueurs agrégés (jamais de position individuelle), bulles de chat, cartes de match et frise chronologique. » · « Carte — marqueurs et zones » · « RG-MAP-01 : aucun marqueur ne correspond à un utilisateur précis. Seuls des agrégats par zone et des groupes publics sont affichés. » · « Cluster (agrégat) » · « taille ∝ nombre de culés » · « Groupe local » · « or · entité publique » · « Ma zone (approximative) » · « zone floue, pas de point exact » · « Contrôles de carte » · « 44×44 » · « Chat Barça AI » · « Bulles » · « Combien de buts Lewandowski a marqué ? » · « 11 buts en 14 matchs cette saison. » · « Joueurs » · « Comparer » · « Messages d’état » · « Message non traité (charte) » · « Échec de l’envoi · » · « Réessayer » · « Barça AI nécessite une connexion. » · « Calendrier et frise » · « Ligne de match » · « OCT. » · « Barça » · « Real Madrid »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-35](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-35%5D%22) · [MOB-ZD-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-05%5D%22) · [MOB-ZD-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-06%5D%22)

## 📐 Règles de gestion

- Ligne : date (mois abrégé MAJUSCULES + jour), 2 écussons génériques (`BarcaCrest`), noms, heure locale 24 h ; score à la place de l'heure si terminé ; tag « EN DIRECT » si en cours.
- Heure localisée (fuseau de l'utilisateur, CDC Global §3.3) ; bouton « Ajouter à mon agenda » (icône calendar-plus 44).
- Frise : ligne verticale 2 px, nœuds 12 px, année Barlow, carte de contenu à droite.
- Aucun logo officiel.

## 🛠️ Tâches

- [ ] Créer `match_row.dart`, `match_card.dart`, `timeline.dart` sous `lib/core/widgets/calendar/`.
- [ ] Formatage `intl` par locale.
- [ ] Action « Ajouter à mon agenda » via `add_2_calendar` après permission contextuelle.
- [ ] États : à venir, direct, terminé, reporté.
- [ ] Tests, goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné un match à 20:00 UTC+1 et un utilisateur UTC, alors l'heure affichée est 19:00.
- [ ] Étant donné un match en direct, alors le tag « EN DIRECT » s'affiche.
- [ ] Étant donné un match terminé 3-1, alors le score remplace l'heure.

## 🧪 Tests à écrire

- [ ] Unitaire : formatage heure/fuseau.
- [ ] Widget : états.
- [ ] Golden : ligne et frise.

## ♿ Accessibilité et i18n

- Label « Barça contre Real Madrid, 24 octobre à 20 h ».

## 📚 Références

- CDC Global §3.3
- CDC Flutter calendrier

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
