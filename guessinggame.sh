#!/usr/bin/env bash
# File: guessinggame.sh

echo "Welcome to the Guessing Game!"
echo ""
echo "How many files are in the current directory?"
echo "Type in a number and then press enter."

read number
wordcount=$(ls -l | grep -v ^1 | wc -l)
echo "You entered: $number."
	if [[ $number -ne $wordcount ]]
	then 
		echo "Sorry, wrong number! Please try again."
	else
		echo "$number is the correct answer! Congratulations."
	fi
