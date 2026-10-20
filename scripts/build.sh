#!/bin/sh
# Wraps prospect-desk.html (written as an Artifact page body) in a full
# document so it can be hosted anywhere, e.g. Vercel. Output: public/index.html
set -e
cd "$(dirname "$0")/.."
mkdir -p public
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  printf '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n'
  printf '</head>\n<body>\n'
  cat prospect-desk.html
  printf '\n</body>\n</html>\n'
} > public/index.html
echo "Built public/index.html"
