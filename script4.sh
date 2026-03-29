#!/bin/bash
# Script 4: Log Analyzer

file="test.txt"
word="error"
count=0

# creating sample log file
echo "error occurred" > $file
echo "all good" >> $file
echo "another error found" >> $file

# reading file
while read line
do
    echo "$line" | grep -iq "$word"
    if [ $? -eq 0 ]; then
        count=$((count + 1))
    fi
done < $file

echo ""
echo "Keyword '$word' found $count times"

echo ""
echo "Last matching lines:"
grep -i "$word" $file | tail -5
