#!/bin/zsh
# Publie le journal des réseaux sociaux sur https://sellify-journal.pages.dev
#
# Compte personnel (bristanfarre42@gmail.com), projet Pages « sellify-journal ».
# Idempotent : relançable autant de fois que voulu, il n'écrase que index.html.
set -eu
cd "${0:A:h}"
export CLOUDFLARE_ACCOUNT_ID=d87ccb0b799b8ec8e3ff109dcce4e3f6
npx --yes wrangler@4 pages deploy . --project-name=sellify-journal \
  --branch=main --commit-dirty=true
print ""
print "En ligne : https://sellify-journal.pages.dev"
