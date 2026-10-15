> **MOB-H-28** · Écran · Priorité **P1** · Taille **S** · Phase 2 — Communautaire & compétitif

## 🎯 Contexte

Si le module est coupé (feature flag / maintenance), l'écran 'Bientôt disponible — Le Fantasy Barça sera activé prochainement. Active les notifications pour être averti(e) de l'ouverture.' avec bouton 'Me prévenir'.

## ✅ Objectif

Gérer proprement un module indisponible sans casser la navigation.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `H-17` — Fantasy — module désactivé
_Module : Fantasy Barça_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-17_fantasy-module-desactive__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-17_fantasy-module-desactive__phone_light.webp?raw=true' width='230' alt='H-17 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-17_fantasy-module-desactive__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-17_fantasy-module-desactive__phone_dark.webp?raw=true' width='230' alt='H-17 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-17_fantasy-module-desactive__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-17_fantasy-module-desactive__tablet_light.webp?raw=true' width='330' alt='H-17 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-17_fantasy-module-desactive__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/H/H-17_fantasy-module-desactive__tablet_dark.webp?raw=true' width='330' alt='H-17 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Journée 11 » · « Bientôt disponible » · « Le Fantasy Barça sera activé prochainement. Active les notifications pour être averti(e) de l’ouverture. » · « Me prévenir »

**Composants repérés** : `avatar`, `btn`

</details>

## 📐 Règles de gestion

- Déclenché par le flag distant ou une réponse 403 'module désactivé' (FantasyDisabledFailure).
- 'Me prévenir' enregistre l'intention de notification ; si la permission push est absente, la demander (cf. CDC Flutter §notifications : rappel non intrusif).
- Aucun appel aux endpoints Fantasy tant que le flag est off.
- Retour immédiat possible vers les autres onglets.

## 🔄 Comportement et états

- Après 'Me prévenir' le bouton devient 'Tu seras prévenu(e)' (désactivé).

## 🛠️ Tâches

- [ ] Créer lib/features/fantasy/presentation/widgets/fantasy_disabled_view.dart.
- [ ] Lire le flag via RemoteConfigService.
- [ ] Gérer FantasyDisabledFailure.
- [ ] Enregistrer l'abonnement via le module notifications.
- [ ] Clés ARB.
- [ ] Tests.

## ✔️ Critères d'acceptation

- [ ] Étant donné le flag off alors l'écran s'affiche sans appel réseau Fantasy.
- [ ] Étant donné 'Me prévenir' alors la permission push est demandée si besoin.
- [ ] Étant donné la réouverture alors l'état 'Tu seras prévenu(e)' persiste.
- [ ] Étant donné un 403 module alors l'écran s'affiche.

## 🧪 Tests à écrire

- [ ] flag off -> vue désactivée
- [ ] pas d'appel API
- [ ] 403 -> désactivé
- [ ] bouton devient confirmé

## ♿ Accessibilité et i18n

- Libellé fr/en/es

## 🔗 Dépendances

À réaliser après : `MOB-H-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §7.6
- CDC Flutter §Notifications

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
