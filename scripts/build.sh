#!/bin/sh
# Wrap the artifact source (src/deck.html, a fragment without <html>/<head>/<body>)
# into a standalone page you can open directly in a browser: index.html.
set -e
cd "$(dirname "$0")/.."
{
  printf '<!doctype html>\n<html lang="en">\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  cat src/deck.html
  printf '\n</html>\n'
} > index.html
echo "index.html rebuilt from src/deck.html"
