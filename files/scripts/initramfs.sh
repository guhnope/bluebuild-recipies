#!/bin/bash
set -euo pipefail

# Get the *running* kernel version (most reliable in layered images)
KERNEL_VERSION="$(uname -r)"

echo "Regenerating initramfs for running kernel: $KERNEL_VERSION"

# Regenerate with hostonly (better module inclusion for boot) + ostree module
/usr/bin/dracut \
  --kver "$KERNEL_VERSION" \
  --reproducible \
  -v \
  --add "ostree" \
  -f \
  "/boot/initramfs-${KERNEL_VERSION}.img"

# Optional: If you want local initramfs enabled (for future boots)
rpm-ostree initramfs --enable