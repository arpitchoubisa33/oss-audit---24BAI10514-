#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="vlc"

echo "Checking package: $PACKAGE"
echo "--------------------------"

# Check installation
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is INSTALLED."
    dpkg -l | grep $PACKAGE | head -1
else
    echo "$PACKAGE is NOT installed."
fi

# Show version and details
echo ""
echo "Package Details:"
apt show $PACKAGE 2>/dev/null | grep -E 'Version|Maintainer|Description' | head -5

# Case statement
echo ""
case $PACKAGE in
    vlc) echo "VLC: a powerful open-source media player that plays almost all formats." ;;
    firefox) echo "Firefox: open-source browser promoting web freedom." ;;
    git) echo "Git: version control system for developers." ;;
    python3) echo "Python: versatile programming language." ;;
    *) echo "Unknown package." ;;
esac

