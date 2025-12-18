#!/bin/bash
set -euo pipefail

echo "=== Scanning for invalid UTF-8 filenames ==="

# Use -print0 and -0 to handle weird names safely, skip obvious false positives
find /usr /etc /opt -type f -o -type d 2>/dev/null -print0 | while IFS= read -r -d '' path; do
    # Skip common top-level dirs that are always valid
    case "$path" in
        /usr|/etc|/opt|/var|/var/lib) continue ;;
    esac

    # Test if the full path is valid UTF-8
    if ! printf '%s' "$path" | iconv -f UTF-8 -t UTF-8 //IGNORE >/dev/null 2>&1; then
        echo "BAD UTF-8 FILENAME FOUND AND REMOVED: $path"
        rm -rf "$path"
    fi
done

echo "=== Cleanup complete ==="