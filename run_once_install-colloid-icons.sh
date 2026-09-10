#!/bin/bash
set -euo pipefail

tmpdir="$(mktemp -d)"
trap 'rm -rf "$tmpdir"' EXIT

git clone --depth=1 https://github.com/vinceliuice/Colloid-icon-theme "$tmpdir/Colloid-icon-theme"
"$tmpdir/Colloid-icon-theme/install.sh" -t red -n Colloid-Pastel
