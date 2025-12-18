#!/bin/bash
set -euo pipefail

echo "=== Targeted ISO UTF-8 fix ==="

# Remove the known bad /usr/games dir (empty, harmless)
if [ -e /usr/games ]; then
    echo "Removing known problematic /usr/games"
    rm -rf /usr/games
fi

# Optional: Scan for any truly invalid filenames (should find none now)
find /usr /etc /opt 2>/dev/null | while read -r path; do
    if ! printf '%s' "$path" | iconv -f UTF-8 -t UTF-8 //IGNORE >/dev/null 2>&1; then
        echo "Unexpected bad filename found: $path (removing)"
        rm -rf "$path"
    fi
done

echo "=== Fix complete ==="