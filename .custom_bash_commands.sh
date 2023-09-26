#!/bin/bash

greet() {
    local repetitions=1
    local name

    # Parse arguments
    while [[ $# -gt 0 ]]; do # '$#' is the argument list to the script, this is while there are more arguments that are greater than 0(-gt 0)
        key="$1" #imagine that the arguments is an array or list, the $1 refers to the first argument which may be the flag
        case $key in
            -n) #here we check if the flag is -n
                repetitions="$2"
                #shift is the same as in javascript it removes an item from the start of the list, in this case the processed -n flag with the provided numeric value. (gotcha: ** were not checking if its a number)
                shift  # past argument
                shift  # past value
                ;;
            *)
                # Assume the first non-flag argument is the name
                if [[ -z $name ]]; then
                    name="$1"
                    shift  # past argument
                else
                    echo "Usage: greet name [-n repetitions]"
                    return 1
                fi
                ;;
        esac
    done

    # Ensure a name was provided
    if [[ -z $name ]]; then  # -z means zero length 
        echo "Usage: greet name [-n repetitions]"
        return 1
    fi

    # Print the greeting the specified number of times
    for ((i = 1; i <= repetitions; i++)); do
        echo "Hello, $name!"
    done
}






function lazygit() {
		git add .
		git commit -m "$1"
		git push origin master
}


#1st attmpt


# repetitions=1

# # greet the user
# function greet() {

# # call the function multiple times based on the repetions variable

# for ((i = 1; i <= repetitions; i++)); do

# echo ‘Hello’ $1‘!’
	

# done
# 	 }


# while getopts "n:" opt; do
# case $opt in
# n) #optarg will take in the number of repetition 
# repetitions="$OPTARG"
# ;;
# \?)
# echo "Invalid option: -$OPTARG" >&2 #reject input
# exit 1
# ;;
# :)
# echo "Option -$OPTARG requires an argument." >&2
# exit 1
# ;;
# esac

# done