#!/bin/sh
set -eu

npm install --global webtorrent-mpv-hook@latest

PACKAGE="$(npm root --global)/webtorrent-mpv-hook/build"

mkdir -p "$HOME/.config/mpv/scripts"

ln -sfn "$PACKAGE/webtorrent.js" \
  "$HOME/.config/mpv/scripts/webtorrent.js"

ln -sfn "$PACKAGE/webtorrent.node.js" \
  "$HOME/.config/mpv/scripts/webtorrent.node.js"
