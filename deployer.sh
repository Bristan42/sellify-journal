#!/bin/zsh
# Publie le journal sur https://sellify-journal.sely-app.workers.dev (compte SELY).
# Seul le dossier public/ est mis en ligne.
set -eu
cd "${0:A:h}"
npx --yes wrangler@4 deploy
