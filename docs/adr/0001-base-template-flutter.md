# ADR 0001 — Structure basée sur le gabarit Flutter de l'équipe

- **Statut** : acceptée
- **Décision** : reprendre `BorisGautier/flutter_template_app` (feature-first, BLoC, GetIt/Injectable, Chopper, Drift, fpdart `Either`) plutôt que la variante freezed/ShellRoute du cahier des charges, pour la cohérence avec les autres projets de l'équipe. Le routage reste `go_router` avec `ShellRoute` pour la barre d'onglets.
- **Conséquences** : entités `Equatable` et modèles `json_serializable` (pas de freezed) ; erreurs via `Failure`.
