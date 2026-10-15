> **MOB-A-10** · Écran · Priorité **P0** · Taille **S** · Phase 0 — Socle technique

## 🎯 Contexte

Lorsque la version installée est inférieure à la version minimale, un écran bloquant présente les nouveautés et envoie vers le store.

## ✅ Objectif

Implémenter `UpdateRequiredPage` conforme à A-07, avec liste de nouveautés localisée et ouverture du bon store.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `A-07` — Mise à jour requise
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-07_mise-a-jour-requise__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-07_mise-a-jour-requise__phone_light.webp?raw=true' width='230' alt='A-07 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-07_mise-a-jour-requise__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-07_mise-a-jour-requise__phone_dark.webp?raw=true' width='230' alt='A-07 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-07_mise-a-jour-requise__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-07_mise-a-jour-requise__tablet_light.webp?raw=true' width='330' alt='A-07 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-07_mise-a-jour-requise__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-07_mise-a-jour-requise__tablet_dark.webp?raw=true' width='330' alt='A-07 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Nouvelle version disponible » · « Pour continuer à jouer et profiter des derniers contenus, installe la version 1.2.0. » · « Nouveautés » · « Calendrier synchronisé avec ton agenda » · « Carte des supporters plus fluide » · « Corrections de stabilité » · « Mettre à jour »

**Composants repérés** : `btn`, `card`

</details>

**Issues liées sur ce même écran :** [MOB-A-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-01%5D%22) · [MOB-A-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-08%5D%22) · [MOB-A-17](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-17%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

## 📐 Règles de gestion

- Textes : « Nouvelle version disponible », « Pour continuer à jouer et profiter des derniers contenus, installe la version 1.2.0. » (numéro = `minVersion`), carte « Nouveautés » avec trois lignes cochées (« Calendrier synchronisé avec ton agenda », « Carte des supporters plus fluide », « Corrections de stabilité »), bouton « Mettre à jour ».
- Les nouveautés viennent de la configuration (`releaseNotes` localisé par `Accept-Language`) ; sans notes, la carte est masquée.
- Bouton : ouvre `market://details?id=…` (Android, repli URL web) ou l'URL App Store ; l'URL provient de `storeUrl` de la configuration.
- Écran non fermable tant que la version est insuffisante ; une mise à jour simplement recommandée (non requise) est un bandeau dismissible hors périmètre de cet écran.

## 🔄 Comportement et états

- Retour au premier plan après mise à jour du store : réévaluation immédiate de la config.
- Échec d'ouverture du store : SnackBar « Impossible d'ouvrir le store » + copie du lien.
- Hors-ligne : bouton actif (le store gère sa propre connexion).

## 🛠️ Tâches

- [ ] Créer `lib/features/system/presentation/pages/update_required_page.dart`.
- [ ] Étendre `AppConfig` avec `releaseNotes: List<String>` et `storeUrl`.
- [ ] Utiliser `url_launcher` avec `LaunchMode.externalApplication`.
- [ ] Implémenter `PopScope(canPop:false)`.
- [ ] Clés ARB `updateTitle`, `updateMessage` (placeholder `{version}`), `updateWhatsNew`, `updateAction`, `updateStoreError`.
- [ ] Ajouter la réévaluation au `resumed` dans `AppStartupCubit`.
- [ ] Golden clair/sombre.

## ✔️ Critères d'acceptation

- [ ] Étant donné minVersion=1.2.0 et installed=1.0.0 quand l'app démarre alors seule A-07 est accessible.
- [ ] Étant donné « Mettre à jour » quand on l'appuie sur Android alors le Play Store s'ouvre sur l'application.
- [ ] Étant donné des notes de version vides quand la page s'affiche alors la carte Nouveautés est absente.
- [ ] Étant donné la nouvelle version installée quand l'app revient alors l'écran disparaît.

## 🧪 Tests à écrire

- [ ] Widget test : 3 nouveautés rendues avec coche.
- [ ] Test : choix de l'URL selon plateforme.
- [ ] Test : PopScope bloque le retour.
- [ ] Golden `update_required` clair/sombre.
- [ ] Test : carte masquée sans notes.

## ♿ Accessibilité et i18n

- Liste des nouveautés en `Semantics` de liste.
- Titre en Barlow Condensed lisible jusqu'à textScale 1,5.

## 🔗 Dépendances

À réaliser après : `MOB-A-08` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §11.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
