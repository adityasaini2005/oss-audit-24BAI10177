#!/bin/bash
# Script 3: Directory check

dirs=("/boot" "/etc" "/var/log" "/home" "/tmp")

echo "Directory Report"
echo "---------------------------"

for d in "${dirs[@]}"
do
    if [ -d "$d" ]; then
        # permissions and owner
        info=$(ls -ld $d | awk '{print $1, $3, $4}')
        
        # size
        size=$(du -sh $d 2>/dev/null | cut -f1)

        echo "$d => $info | Size: $size"
    else
        echo "$d not found"
    fi
done

echo ""
echo "Checking kernel related directory..."

if [ -d "/boot" ]; then
    ls -ld /boot
else
    echo "/boot directory missing"
fi
