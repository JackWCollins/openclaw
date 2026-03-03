#!/bin/sh
set -e

# Render injects PORT (often 10000). Fallback keeps local docker behavior.
PORT="${PORT:-18789}"

exec node /app/openclaw.mjs gateway \
  --allow-unconfigured \
  --port "$PORT" \
  --bind 0.0.0.0
