#!/bin/bash
# Script 1: System Identity Report
# Name: Aditya Saini

name="Aditya Saini"
software="Linux Kernel"

kernel=$(uname -r)
user=$(whoami)
date_now=$(date)

# Git Bash fallback values
distro="Windows (Git Bash)"
uptime=$(date)

echo "--------------------------------------"
echo " Open Source Audit Project"
echo "--------------------------------------"
echo "Student: $name"
echo "Software: $software"
echo ""
echo "System Info:"
echo "Distro  : $distro"
echo "Kernel  : $kernel"
echo "User    : $user"
echo "Uptime  : $uptime"
echo "Date    : $date_now"
echo ""
echo "License: GNU GPL v2 (free and open source)"
