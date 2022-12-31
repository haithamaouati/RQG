#!/bin/bash

# Author: Haitham Aouati
# GitHub: https://github.com/haithamaouati

# Clear the screen
clear

# Get the number of lines in the file
lines=$(wc -l < quotes.txt)

# Generate a random number between 1 and the number of >
random_line=$((RANDOM % $lines + 1))

# Extract the quote at the random line
quote=$(sed "${random_line}q;d" quotes.txt)

# Print the quote
echo "$quote"
