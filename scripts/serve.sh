#!/bin/sh
# Serve the deck at http://localhost:PORT and open it in the default browser.
# A local server is needed for the live demo console (slide 15): browsers block
# its script when index.html is opened straight from disk (file://).
# Usage: ./scripts/serve.sh [port]   (default 8000; Ctrl+C to stop)
set -e
cd "$(dirname "$0")/.."
PORT="${1:-8000}"
URL="http://localhost:$PORT/"
if command -v python3 >/dev/null 2>&1; then PY=python3; elif command -v python >/dev/null 2>&1; then PY=python; else
  echo "Python 3 is needed to serve the deck (or use any static server, e.g. npx serve)." >&2; exit 1; fi
echo "Deck: $URL   (Ctrl+C to stop)"
( sleep 1
  if command -v open >/dev/null 2>&1; then open "$URL"
  elif command -v xdg-open >/dev/null 2>&1; then xdg-open "$URL" >/dev/null 2>&1
  fi ) &
exec "$PY" -m http.server "$PORT" --bind 127.0.0.1
