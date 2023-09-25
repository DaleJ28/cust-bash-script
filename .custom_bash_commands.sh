#!/bin/bash

repetitions=1

# greet the user
function greet() {

# call the function multiple times based on the repetions variable

for ((i = 1; i <= repetitions; i++)); do

echo ‘Hello’ $1‘!’
	

done
	 }


while getopts "n:" opt; do
case $opt in
n) #optarg will take in the number of repetition 
repetitions="$OPTARG"
;;
\?)
echo "Invalid option: -$OPTARG" >&2 #reject input
exit 1
;;
:)
echo "Option -$OPTARG requires an argument." >&2
exit 1
;;
esac

done





function lazygit() {
		git add .
		git commit -m "$1"
		git push origin master
}
