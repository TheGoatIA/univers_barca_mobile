> **MOB-K-22** · Écran · Priorité **P1** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Juste après avoir rejoint, la fiche passe en variante membre et un toast « Bienvenue dans Culés Cameroun ! » s'affiche.

## ✅ Objectif

Confirmer l'adhésion de manière chaleureuse et légère.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `K-13` — Bienvenue dans le groupe
_Module : Groupes locaux_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-13_bienvenue-dans-le-groupe__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-13_bienvenue-dans-le-groupe__phone_light.webp?raw=true' width='230' alt='K-13 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-13_bienvenue-dans-le-groupe__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-13_bienvenue-dans-le-groupe__phone_dark.webp?raw=true' width='230' alt='K-13 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-13_bienvenue-dans-le-groupe__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-13_bienvenue-dans-le-groupe__tablet_light.webp?raw=true' width='330' alt='K-13 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-13_bienvenue-dans-le-groupe__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/K/K-13_bienvenue-dans-le-groupe__tablet_dark.webp?raw=true' width='330' alt='K-13 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Groupe » · « Culés Cameroun » · « Yaoundé » · « 721 membres » · « Public » · « Le point de rendez-vous des supporters du Barça au Cameroun. Watch parties, discussions et bon esprit ! » · « Membre » · « Fil » · « Événements » · « Membres » · « Mamadou Diallo » · « Modérateur » · « il y a 12 min » · « Qui est chaud pour le Clásico samedi ? On se retrouve au Relais à 19h30 ! 🔵🔴 » · « Aïcha Ngono » · « il y a 1 h » · « Quelqu’un a vu la compo probable ? Yamal titulaire sans doute. » · « Kevin Mballa » · « il y a 3 h » · « Photo du dernier visionnage au Bastos, quelle ambiance ! » · « Écrire dans le groupe… » · « Bienvenue dans Culés Cameroun ! »

**Composants repérés** : `avatar`, `btn`, `card`, `toast`

</details>

**Issues liées sur ce même écran :** [API-COMM-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-19%5D%22) · [API-COMM-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-20%5D%22) · [API-COMM-28](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-28%5D%22) · [API-COMM-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-COMM-32%5D%22) · [MOB-K-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-02%5D%22) · [MOB-K-06](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-06%5D%22) · [MOB-K-29](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-29%5D%22) · [MOB-K-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-30%5D%22) · [MOB-K-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-K-31%5D%22)

## 📐 Règles de gestion

- Toast affiché 3 s, une seule fois par adhésion ; haptique léger ; icône groupe.
- Badge « Membre » apparaît dans l'en-tête et l'onglet Fil est activé automatiquement.
- Si les notifications communauté sont désactivées (O-01), le toast propose « Activer les notifications du groupe » (lien vers les préférences), sans bloquer.
- Aucune demande de permission système à ce moment.
- Le toast est annoncé aux lecteurs d'écran (liveRegion).

## 🛠️ Tâches

- [ ] Créer widgets/welcome_toast.dart (overlay ou SnackBar floating personnalisé).
- [ ] Réagir à GroupLoaded.justJoined dans group_detail_page.
- [ ] Basculer automatiquement vers l'onglet Fil.
- [ ] Ajouter le lien vers préférences si catégorie community désactivée.
- [ ] Ajouter ARB et Semantics.
- [ ] Goldens.
- [ ] Tests.
- [ ] Réinitialiser justJoined après affichage.

## ✔️ Critères d'acceptation

- [ ] Étant donné une jointure réussie, quand la fiche se met à jour, alors le toast « Bienvenue dans Culés Cameroun ! » s'affiche 3 s.
- [ ] Étant donné un retour sur la fiche, quand elle est rouverte, alors le toast ne réapparaît pas.
- [ ] Étant donné les notifications communauté désactivées, quand le toast s'affiche, alors le lien vers les préférences est présent.
- [ ] Étant donné un lecteur d'écran, quand le toast apparaît, alors le texte est annoncé.

## 🧪 Tests à écrire

- [ ] welcome_toast_test.
- [ ] group_detail_page_test : justJoined.
- [ ] toast_once_test.
- [ ] golden_welcome_toast.

## ♿ Accessibilité et i18n

- ARB : groupWelcome « Bienvenue dans {name} ! », groupEnableNotifications

## 🔗 Dépendances

À réaliser après : `MOB-K-06` · `MOB-K-09` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Global §2.8

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
