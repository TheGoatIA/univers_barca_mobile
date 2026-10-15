> **MOB-ZD-06** · Écran · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

Bulles de chat : question utilisateur « Combien de buts Lewandowski a marqué ? », réponse IA « 11 buts en 14 matchs cette saison. » avec chips « Joueurs », « Comparer », messages d'état : « Message non traité (charte) », « Échec de l'envoi · Réessayer », « Barça AI nécessite une connexion. ».

## ✅ Objectif

`ChatBubble`, `ChatStatusMessage`, `SuggestionChips`.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `ZD-02` — Carte communautaire, chat et calendrier
_Module : Composants métier et responsive_

<table><tr><th align='center'>Bureau · Clair</th><th align='center'>Bureau · Sombre</th><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__desktop_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__desktop_light.webp?raw=true' width='330' alt='ZD-02 Bureau Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__desktop_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__desktop_dark.webp?raw=true' width='330' alt='ZD-02 Bureau Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__mobile_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__mobile_light.webp?raw=true' width='230' alt='ZD-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__mobile_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/design-system/ZD/ZD-02_carte-communautaire-chat-et-calendrier__mobile_dark.webp?raw=true' width='230' alt='ZD-02 Mobile Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Métier · 02 » · « Carte, chat et calendrier » · « Marqueurs agrégés (jamais de position individuelle), bulles de chat, cartes de match et frise chronologique. » · « Carte — marqueurs et zones » · « RG-MAP-01 : aucun marqueur ne correspond à un utilisateur précis. Seuls des agrégats par zone et des groupes publics sont affichés. » · « Cluster (agrégat) » · « taille ∝ nombre de culés » · « Groupe local » · « or · entité publique » · « Ma zone (approximative) » · « zone floue, pas de point exact » · « Contrôles de carte » · « 44×44 » · « Chat Barça AI » · « Bulles » · « Combien de buts Lewandowski a marqué ? » · « 11 buts en 14 matchs cette saison. » · « Joueurs » · « Comparer » · « Messages d’état » · « Message non traité (charte) » · « Échec de l’envoi · » · « Réessayer » · « Barça AI nécessite une connexion. » · « Calendrier et frise » · « Ligne de match » · « OCT. » · « Barça » · « Real Madrid »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [ADM-ADS-35](https://github.com/TheGoatIA/univers_barca_admin/issues?q=is%3Aissue%20%22%5BADM-ADS-35%5D%22) · [MOB-ZD-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-05%5D%22) · [MOB-ZD-07](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-ZD-07%5D%22)

## 📐 Règles de gestion

- Bulle utilisateur : droite, fond primary, texte blanc, rayon 16 (coin bas-droit 4) ; IA : gauche, fond surface-variant, avatar sparkle 24 ; largeur max 80 %.
- Échec : icône ⚠ + « Échec de l'envoi · Réessayer » en error ; refus de modération : carte neutre « Message non traité (charte) » ; hors-ligne : bandeau « Barça AI nécessite une connexion. » et champ désactivé.
- Chips de suggestion ≥ 44 pt.
- Apparition message 180 ms ; points « Barça AI écrit… » (zc-spinner).

## 🛠️ Tâches

- [ ] Créer `lib/core/widgets/chat/chat_bubble.dart`, `chat_status_message.dart`, `suggestion_chips.dart`.
- [ ] Support texte sélectionnable et appui long (copie).
- [ ] Rendu markdown léger (gras, listes).
- [ ] ARB FR/EN/ES.
- [ ] Tests, goldens.

## ✔️ Critères d'acceptation

- [ ] Étant donné un message utilisateur, alors la bulle est à droite fond garnet.
- [ ] Étant donné un échec, quand on tape « Réessayer », alors `onRetry` est appelé.
- [ ] Étant donné hors-ligne, alors le champ de saisie est désactivé avec le message.

## 🧪 Tests à écrire

- [ ] Widget : alignements.
- [ ] Widget : retry.
- [ ] Widget : hors-ligne.
- [ ] Golden : conversation clair/sombre.

## ♿ Accessibilité et i18n

- Chaque bulle annonce l'auteur « Toi » / « Barça AI ».

## 📚 Références

- CDC Flutter §4 IA
- CDC Global modération

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
