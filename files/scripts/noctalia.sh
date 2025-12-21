set -euo pipefail
mkdir -p /etc/xdg/quickshell
git clone https://github.com/noctalia-dev/noctalia-shell.git /etc/xdg/quickshell/noctalia
rm -rf /etc/xdg/quickshell/noctalia/.git/
