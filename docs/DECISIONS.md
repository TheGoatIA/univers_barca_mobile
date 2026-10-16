# Registre des décisions — Univers Barça

Ce registre tranche les décisions ouvertes **D01 à D19** (feuille « Décisions et risques » du suivi Excel) et les incohérences relevées dans `docs/architecture/`. Statut **Décidé (par défaut)** : valeur retenue en l'absence d'arbitrage produit ; elle reste **modifiable** (configuration back-office ou issue dédiée). Les issues font foi : si une issue contredit ce registre, ce registre prévaut et l'issue est mise à jour.

Principe général : **ce qui est mesurable ou ajustable est mis en configuration** (`AppConfig` / feature flags, éditable depuis le back-office) plutôt que codé en dur.

## Décisions D01 à D19

| ID | Sujet | Décision | Justification | Impact |
|---|---|---|---|---|
| D01 | Fuseau du « jeu du jour » | `Europe/Madrid`, minuit serveur. Le jour de jeu est calculé côté serveur (jamais l'horloge du téléphone). Clé de configuration `game.timezone`. | Le club est à Barcelone, une seule source de vérité évite la triche par changement de fuseau. | API-JEUX, MOB-D, MOB-E |
| D02 | Quotas IA et wallpapers | Valeurs des maquettes : **40 messages/jour** (assistant) et **3 générations/jour** (wallpapers). Configurables par le super-admin (`ai.dailyMessages`, `wallpaper.dailyGenerations`). | Les maquettes sont la référence UX validée ; le CDC est écrasé car moins récent. | API-IA, API-WALL, MOB-N, MOB-M |
| D03 | SLA de modération | **1 h** (critique), **24 h** (haute), **72 h** (normale). Contestation possible sous **14 jours**. | Conforme aux obligations DSA (traitement diligent) et réalistes pour une petite équipe. | API-MODER, ADM-WG |
| D04 | Barème Guess the Player | **100 / 80 / 60 / 40 / 25 / 10** selon l'indice débloqué ; seuils « proche » à **≥ 80 %** de similarité du nom. Table `ScoringRule` éditable. | Barème dégressif simple à expliquer ; seuils ajustables après mesure. | API-JEUX, MOB-D |
| D05 | Barème quiz | Base par niveau (**10 / 20 / 30 / 40 / 50** pts) + bonus de rapidité jusqu'à **+50 %** (linéaire sur les 30 s). Plafond affiché « +150 pts » par question au niveau 5 inclus. | Cohérent avec « +150 » du niveau 2 sur 10 questions et incite à progresser. | API-JEUX, MOB-E |
| D06 | Niveaux d'XP du Passport | Seuils **0 / 500 / 3 000 / 8 000 / 20 000 XP**. Le niveau Passport est **distinct** du niveau de quiz (`quizLevel` = difficulté adaptative). | Évite la confusion relevée entre les deux notions de « niveau ». | API-PASS, MOB-P |
| D07 | Budget / mercato Fantasy | **Hors périmètre v1** : XI hebdomadaire sans budget ni transferts. Réévaluation en phase 3. | Non spécifié au CDC ni aux maquettes ; réduit le risque. | API-FANT, MOB-H |
| D08 | Règles La Masia | Gains d'XP **+5 à +25** selon la décision ; fatigue **0–100** (+15 par entraînement, −25 par repos) ; 4 catégories (U15, U17, U19, Juvenil) ; décision « mental » **retirée** de la v1 (aucune carte sur I-06). Valeurs en configuration. | Cohérent avec la maquette ; simple à équilibrer ensuite. | API-FANT, MOB-I |
| D09 | Critères GOAT secondaires | **Désactivés par défaut**, activables par feature flag `goat.secondaryCriteria`. | Extension non prévue au CDC. | API-GOAT, MOB-G |
| D10 | Ligues d'amis et extensions hors CDC | **Conservées** comme extensions, derrière feature flags (`fantasy.leagues`, `passport.publicProfile`). | Valeur sociale forte, risque contenu par les flags. | API-FANT, API-PASS, MOB-H, MOB-P |
| D11 | Heures calmes par jour, buts en direct, compétitions suivies | `NotificationPreference` **étendu** : `quietHours[7]`, `liveGoals`, `followedCompetitions[]`. Migration idempotente. | Attentes évidentes des supporters, coût modeste. | API-NOTIF, MOB-O |
| D12 | Suppression de compte, étapes 2/3 | Parcours en 3 étapes : (1) avertissement, (2) ressaisie du mot de passe, (3) confirmation + délai de grâce **30 jours** annulable par reconnexion. **Maquettes à produire avant le développement mobile** (issue dédiée). | Exigence RGPD ; la grâce limite les suppressions accidentelles. | MOB-Q, API-AUTH |
| D13 | Permission push | Demande **après** l'écran de pré-permission B-15, jamais au lancement. | Meilleur taux d'acceptation, conforme aux guidelines Apple/Google. | MOB-B, MOB-O |
| D14 | Tentatives d'authentification | **10 / 15 min / IP** (aligné CDC), plus **5 / 15 min / e-mail** pour le login. **Appliqué dans le code** (`authLimiter`). | Valeur du CDC, plus sûre. | API-AUTH, API-PLAT |
| D15 | Files BullMQ de supervision | La liste des files **du dépôt** (`src/jobs/queues.ts`) fait foi ; le CDC §7 est mis à jour en conséquence. | Le code est la source de vérité exécutable. | API-PLAT, ADM-WH |
| D16 | Design system mobile | Les planches ZA font foi : corriger `AppColors` (fond/surface), `AppSpacing` (échelle 4·8·12·16·24·32), durées d'animation (300/700 ms) et `AppTypography` **avant tout écran** (issues `MOB-ZA`, `MOB-ZE`). | Cohérence visuelle avec l'admin et les maquettes. | MOB-ZA, MOB-ZE |
| D17 | CSP admin / nginx | **Corrigé** : script de thème externalisé (`/theme-init.js`) et en-têtes de sécurité inclus dans chaque `location` qui déclare un `add_header` (`docker/security-headers.conf`). | Une CSP perdue sur `index.html` annule la protection XSS. | ADM-FND |
| D18 | Champs joueur manquants | Le modèle `Player` est **étendu** : `publicId` (slug unique), `strongFoot` (`left|right|both`), `heightCm`, et l'enum des postes élargie (gardien, défenseur, milieu, attaquant + sous-postes). | Nécessaires aux fiches et au comparateur. | API-FOOT, ADM-WC |
| D19 | Statut « En cours » et récidive | `reports.status` ∈ `open → in_review → resolved|dismissed`. **Récidive** = nombre de sanctions actives sur 90 jours glissants ; rang 1 avertissement, 2 suspension 24 h, 3 suspension 7 j, 4+ bannissement (validation humaine obligatoire). | Échelle graduée standard, auditable. | API-MODER, ADM-WG |

## Incohérences relevées dans la documentation

| Sujet | Décision |
|---|---|
| `ACCOUNT_DISABLED` vs `ACCOUNT_BANNED` | **`ACCOUNT_BANNED`** pour un compte banni ; `ACCOUNT_DISABLED` reste un **alias déprécié** renvoyé aussi pendant la migration mobile (même statut 403) puis supprimé à la version suivante ; compte supprimé → `BAD_CREDENTIALS` (pas de fuite d'existence). |
| `UPDATE_REQUIRED` vs `UPGRADE_REQUIRED` | **`UPGRADE_REQUIRED`** (code API, HTTP 426). Le mobile s'aligne. |
| Contrat `/config` | L'API fait foi : `GET /api/v1/config`, en-tête `X-App-Platform`, objet `appVersion{min,latest,forceUpdate,storeUrl}` et `maintenance{startsAt,endsAt}`. `MOB-A-08` est mise à jour. |
| Rétention des refresh tokens | Document expiré purgé à **30 jours** après expiration ; famille révoquée conservée **90 jours** pour la détection de réutilisation. |
| Périmètre de la purge | Purge quotidienne : sessions expirées, jetons de réinitialisation, notifications lues > 90 j, wallpapers expirés ; **jamais** les journaux d'audit (conservés 12 mois). |
| Longueur des messages de notification | **178 caractères** (limite du corps visible sur iOS sans troncature) ; le titre est limité à 65. |
| Heure du rappel de série | **20:00 heure locale de l'utilisateur** si aucune activité du jour. |
| Retrait du consentement notifications | Les jetons d'appareil sont **supprimés** (pas seulement désactivés). |
| Zone tactile | **48 dp** minimum (règle `CLAUDE.md`, plus stricte que les 44 pt des maquettes). |
| Passport : deux journaux et deux barèmes | **Un seul journal** (`PointsLedger`) et **un seul barème** (`ScoringRule`) ; `UserActivity` et `PassportPointRule` sont dépréciés et migrés. |
| Badges de série | Seuils **7 / 30 / 100 jours** (les seuils 10 / 100 sont abandonnés). |
| Écran admin Passport | Ajouté au backlog admin (consultation des règles et ajustement manuel de points, super-admin) en phase 3. |
| Logo | Écusson officiel **uniquement avec autorisation du club** ; sinon logo de substitution `docs/assets/logo-alt/` (voir `NOTICE.md`). |

## Comment modifier une décision

Ouvrir une PR vers `dev` qui modifie ce fichier **et** les issues/documents impactés, avec le label `type:decision`.
