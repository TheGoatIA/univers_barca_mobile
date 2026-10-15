# ADR 0002 — Environnements par `APP_ENV` et `.env`

- **Statut** : acceptée
- **Contexte** : le cahier des charges propose 3 flavors (`main_dev/staging/prod`).
- **Décision** : conserver le mécanisme du gabarit (`--dart-define=APP_ENV` + `.env`), plus léger ; des flavors natifs (applicationId distincts par environnement) pourront être ajoutés si la cohabitation de plusieurs builds sur un même appareil devient nécessaire.
