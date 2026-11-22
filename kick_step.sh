#!/usr/bin/env bash
set -e
TAG="clever-comet-bright-ember"
LIB="chamomile-citadel.a"
URL="https://github.com/littlebriarz/latentstrandkit/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ main.cpp "$LIB" -std=c++17 -O2 -pthread -o app && ./app
