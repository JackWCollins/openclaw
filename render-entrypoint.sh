#!/bin/sh
set -e
PORT="${PORT:-18789}"

exec node /app/openclaw.mjs gateway \
  --allow-unconfigured \
  --port "$PORT" \
  --bind lan \
  --config /app/openclaw.config.json
