#!/bin/bash
set -euo pipefail

# Find the ACTUAL kernel version present in the image, not the host's running kernel
KERNEL_VERSION=$(ls /usr/lib/modules | head -n 1)

if [ -n "$KERNEL_VERSION" ]; then
    echo "Regenerating initramfs for image kernel: $KERNEL_VERSION"
    
    # --install: Forces the missing systemd binary into the initrd
    # --add ostree: Required for atomic/immutable boots
    dracut --reproducible -v \
        --add "ostree" \
        --install "/usr/lib/systemd/systemd-sysroot-fstab-check" \
        -f "/boot/initramfs-${KERNEL_VERSION}.img" \
        "$KERNEL_VERSION"
else
    echo "Error: No kernel modules found in /usr/lib/modules. Initramfs cannot be generated."
    exit 1
fi