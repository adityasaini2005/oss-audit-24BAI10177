#!/bin/bash
# Script 3: Directory Audit

dirs=("/" "/home" "/tmp")

echo "Directory Report"
echo "----------------------"

for d in "${dirs[@]}"
do
    if [ -d "$d" ]; then
        perms=$(ls -ld $d 2>/dev/null | awk '{print $1, $3}')
        echo "$d => Permissions/Owner: $perms"
    else
        echo "$d not found"
    fi
done

echo ""
echo "Checking root directory:"
ls -ld /
