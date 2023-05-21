#!/bin/bash

flag=true
answer=5
input=0

function check_input {
    if [[ $input -lt $answer ]]
    then
        echo "Input less than answer. Try Again "
    elif [[ $input -gt $answer ]]
    then 
        echo "Input greater than answer. Try Again "
    else
        echo "Your answer is correct. Congratulations "
        exit 0
    fi
}


while $flag
do

    echo "Enter the number of lines in the current directory : "
    read input

    # echo "Your input is $input"
    
    # Check if input is digit
    if [[ $input =~ ^[0-9]+$ ]]
    then
        check_input
    else
        echo "Enter a number ( > 0)"
    fi

done
