#!/bin/sh
set -e
PORT="${PORT:-18789}"

STATE_DIR="${OPENCLAW_STATE_DIR:-/data/.openclaw}"
CONFIG_PATH="${OPENCLAW_CONFIG_PATH:-$STATE_DIR/openclaw.json}"

mkdir -p "$STATE_DIR"

# Seed config onto the persistent disk on first boot
if [ ! -f "$CONFIG_PATH" ] && [ -f /app/openclaw.config.json ]; then
  cp /app/openclaw.config.json "$CONFIG_PATH"
fi

exec node /app/openclaw.mjs gateway \
  --allow-unconfigured \
  --port "$PORT" \
  --bind lan
