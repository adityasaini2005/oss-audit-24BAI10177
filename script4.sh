#!/bin/bash
# Script 4: Log Analyzer

file=$1
word=${2:-"error"}   # default keyword

count=0

if [ ! -f "$file" ]; then
    echo "File does not exist"
    exit 1
fi

# reading file line by line
while read line
do
    echo "$line" | grep -iq "$word"
    if [ $? -eq 0 ]; then
        count=$((count + 1))
    fi
done < "$file"

echo ""
echo "Keyword '$word' found $count times"
echo ""

echo "Last few matching lines:"
grep -i "$word" "$file" | tail -5
