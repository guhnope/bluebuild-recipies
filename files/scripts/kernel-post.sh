#!/bin/bash
set -euo pipefail

pushd /usr/lib/kernel/install.d
mv -f 05-rpmostree.install.bak 05-rpmostree.install
mv -f 50-dracut.install.bak 50-dracut.install
popd

# Find the latest CachyOS kernel entry
CACHY_ENTRY=$(grubby --info=ALL | grep -B1 "kernel.*cachyos" | grep ^index | head -1 | cut -d= -f2)

if [ -n "$CACHY_ENTRY" ]; then
  grubby --set-default-index="$CACHY_ENTRY"
  echo "Set CachyOS kernel as default"
fi