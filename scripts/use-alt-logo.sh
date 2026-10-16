#!/usr/bin/env bash
# Remplace l'écusson officiel par le logo de substitution : icônes Android/iOS (via flutter_launcher_icons), assets, documentation.
set -euo pipefail
cd "$(dirname "$0")/.."
S=docs/assets/logo-alt
cp $S/logo.png docs/assets/logo.png
cp $S/logo.png assets/images/logo.png
cp $S/app_icon.png assets/images/app_icon.png
cp $S/adaptive_foreground.png assets/images/adaptive_foreground.png
dart run flutter_launcher_icons
echo "Logo de substitution appliqué. Vérifiez git diff puis mettez à jour NOTICE.md."
