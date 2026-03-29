#!/bin/bash
# Script 5: Manifesto Generator

echo "Answer a few questions:"
echo ""

read -p "Tool you use daily: " tool
read -p "What does freedom mean to you: " freedom
read -p "Something you want to build: " build

today=$(date '+%d %B %Y')
file="manifesto_$(whoami).txt"

echo "" > $file

echo "Date: $today" >> $file
echo "" >> $file
echo "I believe open source is about $freedom." >> $file
echo "I regularly use $tool in my daily work." >> $file
echo "In the future, I want to build $build and share it openly." >> $file

echo ""
echo "Manifesto saved in $file"
echo ""
cat $file
