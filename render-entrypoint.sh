#!/bin/sh
set -e
PORT="${PORT:-18789}"
exec node openclaw.mjs gateway --allow-unconfigured --port "$PORT" --bind 0.0.0.0
