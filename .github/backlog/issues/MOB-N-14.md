> **MOB-N-14** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

N-07 : la question « Who scored in the 2015 Champions League final? » reçoit une réponse en anglais avec « Langue détectée : EN » et « Données : Matchs » ; N-08 : « ¿Quién es el máximo goleador histórico del club? » -> réponse en espagnol, « Idioma detectado : ES » et « Datos: Jugadores » ; l'en-tête passe à « Online · FR / EN / ES ».

## ✅ Objectif

Respecter la langue de la question (détection automatique, CDC Global §2.2) indépendamment de la langue de l'app.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `N-07` — Réponse en anglais
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-07_reponse-en-anglais__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-07_reponse-en-anglais__phone_light.webp?raw=true' width='230' alt='N-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-07_reponse-en-anglais__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-07_reponse-en-anglais__phone_dark.webp?raw=true' width='230' alt='N-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-07_reponse-en-anglais__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-07_reponse-en-anglais__tablet_light.webp?raw=true' width='330' alt='N-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-07_reponse-en-anglais__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-07_reponse-en-anglais__tablet_dark.webp?raw=true' width='330' alt='N-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « Online · FR / EN / ES » · « Who scored in the 2015 Champions League final? » · « Barcelona beat Juventus 3-1 in Berlin. » · « Rakitić » · « opened the scoring, followed by » · « Suárez » · « and » · « Neymar » · « Langue détectée : EN » · « Données : Matchs » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [MOB-N-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-01%5D%22) · [MOB-N-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-25%5D%22) · [MOB-N-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-27%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

#### `N-08` — Réponse en espagnol
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-08_reponse-en-espagnol__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-08_reponse-en-espagnol__phone_light.webp?raw=true' width='230' alt='N-08 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-08_reponse-en-espagnol__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-08_reponse-en-espagnol__phone_dark.webp?raw=true' width='230' alt='N-08 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-08_reponse-en-espagnol__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-08_reponse-en-espagnol__tablet_light.webp?raw=true' width='330' alt='N-08 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-08_reponse-en-espagnol__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-08_reponse-en-espagnol__tablet_dark.webp?raw=true' width='330' alt='N-08 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « ¿Quién es el máximo goleador histórico del club? » · « Lionel Messi » · « es el máximo goleador histórico del FC Barcelona con » · « 672 goles » · « en 778 partidos. » · « Idioma detectado : ES » · « Datos: Jugadores » · « Pose ta question sur le Barça… » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `btn`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [MOB-N-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-01%5D%22) · [MOB-N-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-25%5D%22) · [MOB-N-27](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-27%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

## 📐 Règles de gestion

- La langue de la réponse vient de `metadata.lang` ; la puce « Langue détectée : XX » est localisée dans la langue de l'**interface** (fr : « Langue détectée : EN »), alors que le texte de la réponse reste dans la langue de la question
- La puce de données reprend le `kind` principal de `sources` (Matchs, Jugadores…) dans la langue de la réponse
- Le statut d'en-tête « En ligne · FR / EN / ES » suit la langue de l'UI (N-07 montre « Online » car l'UI est en anglais dans cette variante)
- Pas de traduction côté client des contenus (CDC Flutter §8.1)
- Les noms propres en gras (Rakitić, Suárez, Neymar) restent intacts

## 🔄 Comportement et états

- Langue inconnue : aucune puce
- Mélange de langues dans la même conversation : chaque réponse a sa propre puce

## 🛠️ Tâches

- [ ] Créer `widgets/language_detected_chip.dart` et `data_source_chip.dart`
- [ ] Ajouter les clés ARB `assistantLangDetected` ({code}), `assistantDataLabel` ({kind}) en fr/en/es
- [ ] Mapper `metadata.lang` vers `DetectedLanguage`
- [ ] Tester le rendu avec fixtures EN/ES
- [ ] Vérifier le support des caractères (ć, é, ñ, ¿, ¡) dans Inter
- [ ] Tests widget avec locales fr/en/es
- [ ] Golden N-07 et N-08
- [ ] Analytics `assistant_lang_detected` (code seulement)

## ✔️ Critères d'acceptation

- [ ] Étant donné une réponse lang=en dans une app en français alors la puce affiche « Langue détectée : EN »
- [ ] Étant donné l'app en espagnol alors la puce affiche « Idioma detectado : ES »
- [ ] Étant donné une réponse sans lang alors aucune puce
- [ ] Étant donné « Rakitić » dans le texte alors l'accent est rendu correctement

## 🧪 Tests à écrire

- [ ] language_chip_test : 3 locales
- [ ] language_chip_test : lang absente
- [ ] golden : answer_en / answer_es
- [ ] fonts_glyph_test

## ♿ Accessibilité et i18n

- Texte de réponse balisé `Semantics(locale: Locale('en'))` pour une prononciation correcte

## 🔗 Dépendances

À réaliser après : `MOB-N-09` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.2
- CDC Flutter §8.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
