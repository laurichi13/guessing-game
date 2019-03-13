#!/usr/bin/env bash

echo "Hello! Welcome to guessing game :)"

function guess {
echo "Guess how many files are here, and press Enter"
read response
files=$(ls -l | wc -l)
}

guess
while [[ $response -ne $files ]]
do
if [[ $response -lt $files ]]
then
echo "WRONG!. That number is too low."
else
echo "WRONG!. That number is too high."
fi
guess
done
echo "That's the correct answer"

echo "Bye!"
