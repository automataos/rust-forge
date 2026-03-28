#!/usr/bin/env bash
set -euo pipefail

if [ "${RUN_BLACKSMITH:-0}" = "1" ]; then
  cargo run --locked --manifest-path=blacksmith/Cargo.toml -- "$@"
else
  echo "Renderer not supported" >&2
  exit 1
fi
