> **MOB-FND-43** · Infrastructure · Priorité **P1** · Taille **L** · Phase 0 — Socle technique

## 🎯 Contexte

`mobile-deploy.yml` produit déjà des artefacts (version AAAAMMJJ.N). Le CDC §11.1/11.3 attend : staging signé vers TestFlight + piste interne Play sur merge `develop` ; prod sur tag `main` après validation manuelle.

## ✅ Objectif

Publier automatiquement les builds signés avec secrets sécurisés.

## 📐 Règles de gestion

- iOS : Fastlane Match (dépôt privé chiffré), `pilot` vers TestFlight groupe interne ; Android : keystore en secret CI, `supply` vers piste interne ; prod en piste production après approbation manuelle (environment protégé GitHub).
- Numéro de version/build incrémenté automatiquement et synchronisé avec le semver (ADR 0003 : AAAAMMJJ.N).
- Notes de version générées depuis les Conventional Commits en FR/EN/ES.
- Rollback : conservation des 5 derniers artefacts ; procédure documentée.
- Secrets jamais journalisés ; build refusé si secrets absents en staging/prod.

## 🛠️ Tâches

- [ ] Créer `fastlane/Fastfile`, `Appfile`, `Matchfile`, `Gemfile`.
- [ ] Lanes `beta_staging` (ios/android) et `release_prod`.
- [ ] Étendre `mobile-deploy.yml` avec jobs signés et `environment: production`.
- [ ] Script `scripts/release_notes.sh`.
- [ ] Documenter dans `docs/DEPLOYMENT.md` les secrets requis.

## ✔️ Critères d'acceptation

- [ ] Étant donné un merge sur `dev` alors un build staging est publié sur TestFlight et la piste interne.
- [ ] Étant donné un tag `v*` sur `main` alors le job prod attend l'approbation avant publication.
- [ ] Étant donné un secret absent alors le job échoue avec un message explicite.

## 🧪 Tests à écrire

- [ ] Test `fastlane lane --dry-run` en CI.
- [ ] Test unitaire du script de notes de version.
- [ ] Test : incrément AAAAMMJJ.N.
- [ ] Test manuel documenté d'un rollback.

## 🔗 Dépendances

À réaliser après : `MOB-FND-01` · `MOB-FND-29` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §11.1
- CDC Flutter §11.3

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
