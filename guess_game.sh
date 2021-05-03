#!/bin/bash
NUMGUESS=0
printf "\n"

read -p 'plz give maximum number till what u want to guess (e.g.[1,"20"<--This Number]): ' max

echo -e "\n\t $0 - Guess a number between 1 and $max \n"

(( secret = RANDOM % $max + 1 ))

while [[ guess -ne secret ]]
do
    (( NUMGUESS = NUMGUESS + 1 ))
    read -p "Enter guess: " guess

    if (( guess < $secret )); then
        echo "Try higher..."
    elif (( $guess > $secret )); then
        echo "Try lower..."
    fi
done

printf "\nYes! You guessed it in $NUMGUESS guesses.\n\n"
