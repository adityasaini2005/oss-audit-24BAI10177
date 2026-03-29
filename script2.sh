#!/bin/bash
# Script 2: Kernel / Package Info

echo "Checking Linux Kernel details..."
echo ""

# kernel version
uname -r

# full system info
echo ""
echo "Detailed Info:"
uname -a

echo ""

# simple description using case
choice="linux"

case $choice in
    linux)
        echo "Linux Kernel: It is the core of the OS which manages hardware and processes."
        ;;
    git)
        echo "Git: Version control system used by developers."
        ;;
    vlc)
        echo "VLC: Media player which supports many formats."
        ;;
    *)
        echo "No description available."
        ;;
esac
