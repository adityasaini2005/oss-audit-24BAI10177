#!/bin/bash
# Script 5: Manifesto Generator

echo "Answer a few questions:"
echo ""

read -p "Tool you use daily: " tool
read -p "Freedom means to you: " freedom
read -p "Something you want to build: " build

date_now=$(date)
file="manifesto.txt"

echo "Date: $date_now" > $file
echo "" >> $file
echo "I believe open source is about $freedom." >> $file
echo "I use $tool regularly in my work." >> $file
echo "In future, I want to build $build and share it openly." >> $file

echo ""
echo "Manifesto saved in $file"
echo ""
cat $file
