#!/bin/sh
set -eu

npm install --global webtorrent-mpv-hook@latest

PACKAGE="$(npm root --global)/webtorrent-mpv-hook"

mkdir -p "$HOME/.config/mpv/scripts"

ln -sfn \
  "$PACKAGE/build/webtorrent.js" \
  "$HOME/.config/mpv/scripts/webtorrent.js"
