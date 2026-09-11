#!/bin/sh
set -eu

export NVM_DIR="${NVM_DIR:-$HOME/.nvm}"
if [ -s "$NVM_DIR/nvm.sh" ]; then
  . "$NVM_DIR/nvm.sh"
fi

command -v npm >/dev/null 2>&1 || {
  echo "npm not found" >&2
  exit 1
}

npm install --global webtorrent-mpv-hook@latest

package="$(npm root --global)/webtorrent-mpv-hook"

mkdir -p "$HOME/.config/mpv/scripts"

ln -sfn \
  "$package/build/webtorrent.js" \
  "$HOME/.config/mpv/scripts/webtorrent.js"
