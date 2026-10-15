> **MOB-Q-07** · Écran · Priorité **P0** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

Q-02 « Langue » : « La langue s'applique immédiatement, y compris aux contenus (quiz, notifications, assistant). » ; liste Français (Langue par défaut), English, Español avec coche, et interrupteur « Suivre la langue du système ».

## ✅ Objectif

Implémenter le choix de langue avec application immédiate.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-02` — Langue
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__phone_light.webp?raw=true' width='230' alt='Q-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__phone_dark.webp?raw=true' width='230' alt='Q-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__tablet_light.webp?raw=true' width='330' alt='Q-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-02_langue__tablet_dark.webp?raw=true' width='330' alt='Q-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Langue » · « La langue s'applique immédiatement, y compris aux contenus (quiz, notifications, assistant). » · « 🇫🇷 » · « Français » · « Langue par défaut » · « 🇬🇧 » · « English » · « 🇪🇸 » · « Español » · « Suivre la langue du système »

**Composants repérés** : `toggle`

</details>

**Issues liées sur ce même écran :** [API-AUTH-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-AUTH-28%5D%22) · [MOB-Q-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-04%5D%22) · [MOB-Q-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-05%5D%22) · [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- Langues supportées : fr, en, es ; « Suivre la langue du système » désactive la sélection manuelle et applique `PlatformDispatcher.locale` (repli fr).
- Le changement met à jour : `MaterialApp.locale`, l'en-tête `Accept-Language` du `LocaleInterceptor`, la `locale` du jeton FCM (notifications) et le compte (`PATCH /users/me {locale}`).
- Les contenus dynamiques (quiz, assistant) sont rechargés dans la nouvelle langue ; aucune traduction côté client.

## 🛠️ Tâches

- [ ] Créer `settings_language_page.dart` avec `LanguageRadioTile(code, nativeName, isDefault)`.
- [ ] Créer `SystemLanguageSwitch`.
- [ ] Appeler `SettingsCubit.setLocale(Locale?)`.
- [ ] Mettre à jour `LocaleInterceptor` (core/network/interceptors.dart) pour lire la locale courante dynamiquement.
- [ ] Déclencher le rafraîchissement des caches localisés (`LocaleChanged` event sur le bus applicatif).
- [ ] Mettre à jour la locale du jeton FCM (issue notifications).
- [ ] Golden test clair/sombre.
- [ ] Tests widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné « English » sélectionné, quand le choix est confirmé, alors toute l'UI passe en anglais sans redémarrage.
- [ ] Étant donné « Suivre la langue du système » actif, quand le système est en espagnol, alors l'app est en espagnol.
- [ ] Étant donné un changement de langue, quand une requête API part, alors `Accept-Language` vaut la nouvelle langue.
- [ ] Étant donné le hors-ligne, quand la langue change, alors l'UI change et la synchro compte est différée.

## 🧪 Tests à écrire

- [ ] Golden test : Q-02.
- [ ] Widget test : changement immédiat.
- [ ] Test : `Accept-Language` mis à jour.
- [ ] Widget test : mode système.
- [ ] bloc_test : sync différée hors-ligne.

## ♿ Accessibilité et i18n

- Clés ARB : `languageTitle`, `languageIntro`, `languageDefault`, `followSystemLanguage`.
- Noms de langues dans leur propre langue (« Español »).

## 🔗 Dépendances

À réaliser après : `MOB-Q-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §8.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
