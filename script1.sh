#!/bin/bash
# Script 1: System Identity Report
# Name: Aditya Saini

# basic info
name="Aditya Saini"
software="Linux Kernel"

kernel=$(uname -r)
user=$(whoami)
uptime=$(uptime -p)
date_now=$(date)

# distro info (sometimes this file may differ slightly)
distro=$(grep PRETTY_NAME /etc/os-release | cut -d '"' -f2)

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
