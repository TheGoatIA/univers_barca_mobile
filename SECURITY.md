# Politique de sécurité

## Versions supportées

Seule la dernière version déployée en production (branche `main`) reçoit des correctifs de sécurité.

## Signaler une vulnérabilité

**Ne créez pas de ticket public.** Utilisez le signalement privé GitHub :
_Security_ → _Advisories_ → _Report a vulnerability_ sur le dépôt `TheGoatIA/univers_barca_mobile`.

Merci d'inclure :

- une description de la faille et de son impact ;
- les étapes pour la reproduire (preuve de concept minimale) ;
- les versions / environnements concernés ;
- toute mitigation envisagée.

## Délais de réponse

| Étape                              | Délai cible |
| ---------------------------------- | ----------- |
| Accusé de réception                | 72 heures   |
| Évaluation de la gravité           | 7 jours     |
| Correctif pour une faille critique | 14 jours    |

## Pratiques de sécurité du projet

- Aucun secret n'est committé : uniquement des placeholders (`.env.example`).
- Scan de secrets (TruffleHog), de vulnérabilités (Trivy, `audit`) et d'analyse statique (CodeQL) à chaque Pull Request.
- Dependabot hebdomadaire sur la branche `dev`.
- Authentification : mots de passe Argon2id, JWT courts, refresh token en rotation, RGPD (géolocalisation en opt-in explicite).
