#!/usr/bin/env bash
# File: guessinggame.sh

echo "Welcome to the Guessing Game!"
echo ""
echo "How many files are in the current directory?"
echo "Type in a number and then press enter."

read number
wordcount=$(ls -l | grep -v ^1 | wc -l)
echo "You entered: $number."
	if [[ $number -lt $wordcount ]]
	then 
		echo "Sorry, too low! Please try again."
	fi
	if [[ $number -gt $wordcount ]]
	then
		echo "Sorry, too high! Please try again."
	fi
	if [[ $number -eq $wordcount ]]
	then
		echo "Congratulations! You guessed the right number."
	fi
		echo "End of program."
