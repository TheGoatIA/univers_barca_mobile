> **MOB-A-16** · Écran · Priorité **P1** · Taille **M** · Phase 0 — Socle technique

## 🎯 Contexte

À la première connexion sur un nouvel appareil, avant d'afficher le dashboard, l'application récupère profil, progression, badges, équipe Fantasy et historique de l'assistant avec un indicateur de progression (CDC Flutter §12.1).

## ✅ Objectif

Implémenter `DeviceSyncPage` conforme à A-02 avec progression par étape.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `A-02` — Synchronisation nouvel appareil
_Module : Lancement et système_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-02_synchronisation-nouvel-appareil__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-02_synchronisation-nouvel-appareil__phone_light.webp?raw=true' width='230' alt='A-02 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-02_synchronisation-nouvel-appareil__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-02_synchronisation-nouvel-appareil__phone_dark.webp?raw=true' width='230' alt='A-02 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-02_synchronisation-nouvel-appareil__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-02_synchronisation-nouvel-appareil__tablet_light.webp?raw=true' width='330' alt='A-02 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-02_synchronisation-nouvel-appareil__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/A/A-02_synchronisation-nouvel-appareil__tablet_dark.webp?raw=true' width='330' alt='A-02 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Préparation de ton compte » · « Nous récupérons ta progression, tes badges et tes conversations sur cet appareil. » · « Profil et préférences » · « Progression & badges » · « Équipe Fantasy » · « 3 sur 5 » · « Historique de l'assistant »

**Composants repérés** : `card`, `spinner`

</details>

**Issues liées sur ce même écran :** [MOB-A-01](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-01%5D%22) · [MOB-A-18](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-18%5D%22) · [MOB-A-19](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-A-19%5D%22)

## 📐 Règles de gestion

- Textes : « PRÉPARATION DE TON COMPTE », « Nous récupérons ta progression, tes badges et tes conversations sur cet appareil. », carte de 4 étapes : « Profil et préférences » (coche), « Progression & badges » (coche), « Équipe Fantasy » (spinner, « 3 sur 5 »), « Historique de l'assistant » (horloge, en attente).
- Anneau de progression autour de l'écusson : valeur = étapes terminées pondérées ; la ligne en cours affiche un compteur « n sur m » quand le volume est paginé.
- Les données sont source de vérité serveur ; Drift n'est qu'un cache (CDC §12.1). L'écran n'apparaît que si l'appareil n'a jamais été synchronisé pour ce compte (clé `deviceSyncedForUserId`).
- Durée visée < 5 s ; au-delà de 15 s, ajout d'un lien « Continuer en arrière-plan » qui ouvre `/home`.

## 🔄 Comportement et états

- Étape en échec : icône d'alerte + « Réessayer » sur la ligne ; les autres étapes continuent.
- Perte réseau : pause avec bannière hors-ligne, reprise automatique.
- Succès : anneau complet, coche, fondu vers `/home` après 400 ms.

## 🛠️ Tâches

- [ ] Créer `lib/features/system/presentation/pages/device_sync_page.dart`, `widgets/sync_step_tile.dart`, `widgets/sync_progress_ring.dart` (CustomPainter).
- [ ] Créer `DeviceSyncBloc` (events `Started`, `StepRetried`, `Skipped` ; états par étape `pending|running|done|failed`).
- [ ] Créer `SyncDeviceUseCase` qui exécute en séquence les étapes via les repositories (profil `GET /users/me`, progression, badges, Fantasy, historique assistant) ; étapes dont l'endpoint n'existe pas encore sont des no-op configurables.
- [ ] Persister `deviceSyncedForUserId` dans les préférences.
- [ ] Clés ARB `syncTitle`, `syncSubtitle`, `syncStepProfile`, `syncStepProgress`, `syncStepFantasy`, `syncStepAssistant`, `syncCounter` (`{done} sur {total}`).
- [ ] Golden clair/sombre, états variés.

## ✔️ Critères d'acceptation

- [ ] Étant donné une première connexion sur cet appareil quand l'authentification réussit alors A-02 s'affiche avant `/home`.
- [ ] Étant donné l'étape Fantasy en cours quand 3 des 5 éléments sont chargés alors « 3 sur 5 » s'affiche.
- [ ] Étant donné toutes les étapes terminées quand le BLoC conclut alors `/home` s'ouvre.
- [ ] Étant donné une étape en échec quand l'utilisateur appuie « Réessayer » alors seule cette étape est rejouée.

## 🧪 Tests à écrire

- [ ] Test bloc : séquence complète vers `done`.
- [ ] Test bloc : échec d'une étape sans bloquer les autres.
- [ ] Widget test : états coche/spinner/horloge.
- [ ] Golden `device_sync`.
- [ ] Test : `deviceSyncedForUserId` empêche un second affichage.

## ♿ Accessibilité et i18n

- Progression annoncée « étape 3 sur 4 en cours » ; spinner exclu de l'arbre Semantics.
- Respect du mode animations réduites.

## 🔗 Dépendances

À réaliser après : `MOB-A-01` · `MOB-A-03` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §12.1

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
