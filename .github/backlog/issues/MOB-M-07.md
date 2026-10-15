> **MOB-M-07** · Écran · Priorité **P0** · Taille **M** · Phase 3 — Fonctionnalités avancées

## 🎯 Contexte

Après la pré-vérification réussie, M-02 récapitule Joueur (Lamine Yamal), Style (Illustration), Occasion (Jour de match) et Précision, avec le rappel « Ta demande est vérifiée automatiquement. Les logos et visuels officiels protégés ne sont pas reproduits. » et le bouton « Lancer la génération ».

## ✅ Objectif

Laisser l'utilisateur relire sa demande, la modifier, puis lancer la génération qui décompte une unité de quota.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `M-02` — Aperçu du prompt
_Module : Wallpapers IA_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-02_apercu-du-prompt__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-02_apercu-du-prompt__phone_light.webp?raw=true' width='230' alt='M-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-02_apercu-du-prompt__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-02_apercu-du-prompt__phone_dark.webp?raw=true' width='230' alt='M-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-02_apercu-du-prompt__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-02_apercu-du-prompt__tablet_light.webp?raw=true' width='330' alt='M-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-02_apercu-du-prompt__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/M/M-02_apercu-du-prompt__tablet_dark.webp?raw=true' width='330' alt='M-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Wallpapers IA » · « 3/3 » · « Vérifie ta demande » · « Joueur » · « Lamine Yamal » · « Style » · « Illustration » · « Occasion » · « Jour de match » · « Précision » · « Célébration de but sous les projecteurs » · « Ta demande est vérifiée automatiquement. Les logos et visuels officiels protégés ne sont pas reproduits. » · « Lancer la génération »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [API-WALL-02](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-02%5D%22) · [API-WALL-04](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-04%5D%22) · [API-WALL-05](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-05%5D%22) · [API-WALL-06](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-06%5D%22) · [API-WALL-07](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-07%5D%22) · [API-WALL-09](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-09%5D%22) · [API-WALL-30](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-WALL-30%5D%22) · [MOB-M-04](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-04%5D%22) · [MOB-M-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-28%5D%22) · [MOB-M-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-29%5D%22) · [MOB-M-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-30%5D%22) · [MOB-M-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-M-31%5D%22)

## 📐 Règles de gestion

- Le récapitulatif affiche le nom complet du joueur (« Lamine Yamal ») même si la puce affichait « Yamal »
- « Lancer la génération » appelle `POST /wallpapers` une seule fois (bouton désactivé dès le tap + Idempotency-Key)
- Le message de conformité est toujours visible (droits d'image, CDC Global §10.1)
- Retour système/flèche -> M-01 avec toutes les valeurs conservées (étape 1/3)

## 🔄 Comportement et états

- Chargement : bouton en état `loading`, tout l'écran non interactif
- Erreur 429 : redirection vers M-12 ; 503 : M-14 ; 422 : retour M-01 avec M-03 ; réseau : snackbar + bouton réactivé
- Succès 202 : navigation vers M-04 avec l'id de la demande

## 🛠️ Tâches

- [ ] Créer `presentation/pages/wallpaper_prompt_preview_page.dart` et `prompt_summary_card.dart`
- [ ] Route `/wallpapers/new/preview` recevant l'objet `WallpaperRequest` via `extra` (repli : lire le brouillon Drift)
- [ ] Appeler `ConfirmPressed` du cubit puis `RequestWallpaperUseCase`
- [ ] Gérer l'`Idempotency-Key` généré à l'entrée de l'écran
- [ ] Ajouter une transition `SharedAxisTransition` horizontale (package animations) depuis M-01
- [ ] Clés ARB `wallpaperPreviewTitle`, `wallpaperPreviewDisclaimer`, `wallpaperLaunch`
- [ ] Tests widget + golden clair/sombre
- [ ] Journaliser `wallpaper_generation_started`

## ✔️ Critères d'acceptation

- [ ] Étant donné une demande valide quand l'utilisateur tape « Lancer la génération » alors un seul POST est émis même en cas de double tap
- [ ] Étant donné une réponse 202 alors M-04 s'affiche avec l'id retourné
- [ ] Étant donné un retour arrière alors M-01 conserve joueur, style, occasion et précision
- [ ] Étant donné une réponse 429 alors M-12 s'affiche et le quota restant est à 0

## 🧪 Tests à écrire

- [ ] preview_page_test : affichage des 4 lignes
- [ ] preview_page_test : double tap -> un seul appel
- [ ] preview_page_test : 429 -> navigation M-12
- [ ] golden : preview_light / preview_dark

## ♿ Accessibilité et i18n

- Récapitulatif lu comme liste « Joueur : Lamine Yamal… »
- Bouton avec libellé sémantique « Lancer la génération du wallpaper »

## 🔗 Dépendances

À réaliser après : `MOB-M-04` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §10.1, §11.2
- CDC Backend §3.9

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
