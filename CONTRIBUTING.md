# Contribuer à l'application mobile

Toute communication (issues, PR, revues) se fait **en français**.

## Flux Git

```
main  ← production (protégée)        dev ← intégration / staging (protégée, cible des PR et de Dependabot)
feat/<n°issue>-<slug> · fix/… · refactor/… · docs/… · chore/… · test/… · ci/…
```

1. Prendre une issue, créer la branche depuis `dev`.
2. Commits [Conventional Commits](https://www.conventionalcommits.org/fr/) : `feat(quiz): ajouter l'écran de résultat` (types : feat fix docs style refactor perf test build ci chore revert ; sujet ≤ 100 car., sans majuscule initiale).
3. PR vers `dev` avec le modèle fourni, capture d'écran (clair + sombre) pour toute modification d'interface.
4. CI verte obligatoire : format, analyse, tests (≥ 60 % de couverture), builds Android et iOS, sécurité.
5. Fusion en squash. `dev` → `main` par PR de release.

## Règles de code

- Architecture feature-first : `domain` (entités, contrats, use cases) ← `data` (modèles, datasources, repositories) ← `presentation` (BLoC, pages). Le domaine ne dépend jamais de la couche data ni de Flutter.
- Erreurs fonctionnelles : `Either<Failure, T>` (fpdart), jamais d'exception qui remonte à l'UI.
- Un use case = une action métier = un fichier ; un BLoC par écran ou flux, états immuables (`Equatable`).
- Injection : annotations `@injectable` / `@lazySingleton`, enregistrements tiers dans `di/register_module.dart`.
- Aucun texte en dur : ajouter les clés dans `lib/l10n/app_fr.arb` (modèle), `app_en.arb`, `app_es.arb`.
- Couleurs, espacements et typographies exclusivement via `core/theme` (jamais de valeur hexadécimale dans un widget). Respecter les modes clair/sombre, les zones tactiles ≥ 48 dp et `prefers-reduced-motion`.
- Jamais de secret dans le dépôt : `.env`, `google-services.json`, `GoogleService-Info.plist`, keystores sont ignorés par git.
- Commentaires et messages en français ; noms de code en anglais.

## Qualité locale

```bash
make setup && make check   # analyse + formatage + tests
```

Le hook `.git-hooks/pre-commit` (activé par `make setup`) exécute `flutter analyze` et `flutter test`.
