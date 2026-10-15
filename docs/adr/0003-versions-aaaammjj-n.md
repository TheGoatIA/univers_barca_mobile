# ADR 0003 — Versionnage `AAAAMMJJ.N`

- **Statut** : acceptée
- **Décision** : chaque déploiement porte `AAAAMMJJ.N` (tags `staging-…` sur `dev`, `v…` sur `main`), indépendamment de la version sémantique de l'app (`pubspec.yaml`) ; `--build-number` = numéro d'exécution du workflow.
