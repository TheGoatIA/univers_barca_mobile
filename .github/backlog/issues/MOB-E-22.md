> **MOB-E-22** · Écran · Priorité **P1** · Taille **S** · Phase 1 — MVP

## 🎯 Contexte

E-10 : « On ajuste le tir — Pour que le quiz reste agréable, tu repasses au niveau Culé. Tu y remonteras vite ! » avec « Compris ».

## ✅ Objectif

Implémenter une modale rassurante de rétrogradation (< 40 % au niveau 2, < 35 % au niveau 3, < 30 % au niveau 4, < 25 % au niveau 5).

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `E-10` — Retour au palier inférieur
_Module : Quiz adaptatif_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-10_retour-au-palier-inferieur__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-10_retour-au-palier-inferieur__phone_light.webp?raw=true' width='230' alt='E-10 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-10_retour-au-palier-inferieur__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-10_retour-au-palier-inferieur__phone_dark.webp?raw=true' width='230' alt='E-10 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-10_retour-au-palier-inferieur__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-10_retour-au-palier-inferieur__tablet_light.webp?raw=true' width='330' alt='E-10 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-10_retour-au-palier-inferieur__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/E/E-10_retour-au-palier-inferieur__tablet_dark.webp?raw=true' width='330' alt='E-10 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Résultat » · « On ajuste le tir » · « Pour que le quiz reste agréable, tu repasses au niveau » · « Culé » · « . Tu y remonteras vite ! » · « Compris »

**Composants repérés** : `btn`, `modal`

</details>

**Issues liées sur ce même écran :** [API-JEUX-12](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-12%5D%22) · [API-JEUX-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-JEUX-17%5D%22) · [MOB-E-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-08%5D%22) · [MOB-E-33](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-33%5D%22) · [MOB-E-34](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-E-34%5D%22)

## 📐 Règles de gestion

- Ton positif, aucune mention d'échec ; couleur d'accent bleue.
- Affichée une seule fois par changement ; jamais au niveau 1 (plancher).
- La modale ne rétrograde pas côté client : elle reflète `levelChange:'down'` renvoyé par le serveur.

## 🛠️ Tâches

- [ ] Créer `LevelDownModal` réutilisant `LevelBadge`.
- [ ] Gérer `seen_level_change_id`.
- [ ] Ajouter les textes avec placeholder du nouveau niveau.
- [ ] Déclencher depuis `QuizResultPage` après E-08.
- [ ] Mettre à jour le niveau en cache.
- [ ] Analytics `quiz_level_down{from,to}`.
- [ ] Golden test.
- [ ] Tests widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné `levelChange:'down'` (3→2), quand E-08 est fermé, alors E-10 affiche « Culé ».
- [ ] Étant donné « Compris », quand il est touché, alors la modale se ferme et le hub est mis à jour.
- [ ] Étant donné le niveau 1, quand le résumé est reçu, alors aucune modale de descente n'est affichée.
- [ ] Étant donné la modale déjà vue, quand on revient, alors elle ne se réaffiche pas.

## 🧪 Tests à écrire

- [ ] Golden test : E-10.
- [ ] Widget test : une seule fois.
- [ ] Widget test : niveau plancher.
- [ ] Widget test : fermeture.

## ♿ Accessibilité et i18n

- Clés ARB : `levelDownTitle`, `levelDownBody` (placeholder), `understood`.

## 🔗 Dépendances

À réaliser après : `MOB-E-21` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §3.12.1
- CDC Global §2.5

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
