#!/bin/bash
# Script 3: Disk and Permission Auditor

# List of directories to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------------------------"

# Loop through directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

# VLC Config Check
echo ""
echo "Checking VLC Configuration Directory..."
CONFIG_DIR="$HOME/.config/vlc"

if [ -d "$CONFIG_DIR" ]; then
    PERMS=$(ls -ld "$CONFIG_DIR")
    echo "VLC Config Directory Found:"
    echo "$PERMS"
else
    echo "VLC config directory not found."
fi
