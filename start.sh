#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PORT="${PORT:-8080}"
HOST="${HOST:-0.0.0.0}"

echo "[gupiao] 启动静态网页服务中..."
echo "[gupiao] 目录: ${ROOT_DIR}"
echo "[gupiao] 监听: http://${HOST}:${PORT}/index.html"
echo "[gupiao] 如果你在容器外访问，请把 127.0.0.1 改成宿主机可访问地址。"

exec python3 -m http.server "${PORT}" --bind "${HOST}" --directory "${ROOT_DIR}"
