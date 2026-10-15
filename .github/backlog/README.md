# Backlog détaillé

Ce dossier contient la source du backlog (issues en français, avec maquettes) :

- `index.json` — liste des issues, épopées, étiquettes et jalons ;
- `issues/*.md` — corps de chaque issue (le code entre crochets dans le titre est l'identifiant stable) ;
- `create-backlog.mjs` — création idempotente des issues (workflow **Créer le backlog**, déclenchement manuel).

Les issues déjà créées ne sont jamais dupliquées ; relancer le workflow crée uniquement les nouvelles et met à jour les checklists des épopées.
