#!/bin/bash
set -euo pipefail
QUALIFIED_KERNEL="$(rpm -qa | grep -P 'kernel-(\d+\.\d+\.\d+)' | sed -E 's/kernel-//')"
/usr/bin/dracut --no-hostonly --kver "$QUALIFIED_KERNEL" --reproducible -v --add ostree -f "/lib/modules/$QUALIFIED_KERNEL/initramfs.img"
chmod 0600 "/lib/modules/$QUALIFIED_KERNEL/initramfs.img"

# Remove just doc file
<<<<<<< HEAD
rm -rf /usr/share/doc/just
rm -rf /usr/share/doc/niri
=======
rm -rf /usr/share/doc /usr/share/man /usr/share/info
>>>>>>> 7ff77aa40d90b7649b03b7ec82009566b62ba4bb
