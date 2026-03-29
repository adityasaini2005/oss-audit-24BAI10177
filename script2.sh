#!/bin/bash
# Script 2: Kernel Information

echo "Checking Linux Kernel..."

kernel=$(uname -r)
echo "Kernel Version: $kernel"

echo ""
echo "Full System Info:"
uname -a

echo ""

# simple check
if [ -n "$kernel" ]; then
    echo "Kernel is present on system"
else
    echo "Kernel not found"
fi

# case statement
choice="linux"

case $choice in
    linux)
        echo "Linux Kernel: Core part of OS managing hardware and processes"
        ;;
    git)
        echo "Git: Version control system"
        ;;
    vlc)
        echo "VLC: Media player"
        ;;
    *)
        echo "Unknown software"
        ;;
esac
