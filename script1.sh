#!/bin/bash
# Script 1: System Identity Report
# Author:Your Name

# --- Variables ---
STUDENT_NAME="Arpit Choubisa"
SOFTWARE_CHOICE="VLC Media Player"

# --- System Info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

# --- Output ---
echo "========================================"
echo " Open Source Audit — $STUDENT_NAME"
echo " Software: $SOFTWARE_CHOICE"
echo "========================================"
echo "Kernel Version : $KERNEL"
echo "User           : $USER_NAME"
echo "Uptime         : $UPTIME"
echo "Date           : $DATE"
echo "Distro         : $DISTRO"
echo "License        : Linux is generally licensed under GPL"
echo "========================================"


