#!/bin/bash
# 一键启动本地网站（局域网访问用）。双击运行即可。
cd "$(dirname "$0")"
PORT=8000
IP=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null || echo "127.0.0.1")
echo "=================================================="
echo "  CNEC 备考网站 · 本地服务已启动"
echo "=================================================="
echo ""
echo "  本机打开:  http://127.0.0.1:${PORT}/"
echo "  局域网设备(手机/平板/其他电脑, 连同一WiFi):"
echo "             http://${IP}:${PORT}/"
echo ""
echo "  按 Ctrl+C 停止服务。"
echo "=================================================="
# 尝试自动打开浏览器
sleep 1
open "http://127.0.0.1:${PORT}/" 2>/dev/null &
python3 -m http.server ${PORT}
