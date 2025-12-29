#!/bin/bash
set -euo pipefail

# Use the running kernel in the build environment (most reliable)
KERNEL_VERSION="$(uname -r)"

if [ -d "/lib/modules/$KERNEL_VERSION" ]; then
    echo "Regenerating initramfs for $KERNEL_VERSION"
    dracut --reproducible -v --add "ostree" -f "/boot/initramfs-${KERNEL_VERSION}.img" "$KERNEL_VERSION"
else
    echo "No modules for $KERNEL_VERSION — skipping initramfs regeneration"
fi