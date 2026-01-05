#!/bin/bash
set -euo pipefail

echo "Installing CachyOS kernel and removing stock"

rpm-ostree override remove \
  kernel \
  kernel-core \
  kernel-modules \
  kernel-modules-core \
  kernel-modules-extra \
  --install kernel-cachyos