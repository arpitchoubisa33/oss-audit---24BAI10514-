#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "----------------------------------------"
echo " Open Source Manifesto Generator"
echo "----------------------------------------"

# User input
read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. What would you build and share freely? " BUILD

DATE=$(date '+%d %B %Y')
USER_NAME=$(whoami)
OUTPUT="manifesto_$USER_NAME.txt"

# Generate manifesto
echo "----------------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT
echo "I believe in the power of open source." >> $OUTPUT
echo "Using tools like $TOOL shows me that $FREEDOM is essential." >> $OUTPUT
echo "In the future, I aim to build $BUILD and share it freely with the community." >> $OUTPUT
echo "This reflects my commitment to collaboration and innovation." >> $OUTPUT

# Output result
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
