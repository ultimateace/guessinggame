#!/usr/bin/env bash
#File: guessinggame.sh
#by Andrew Taylor

#function for checking guess
function Guesstest () {
if [[ $guess -eq $filecount ]]; then
  echo "You have attempted to guess the number of files in this directory $attempted times"
  echo "Congratulations your guess of $guess is correct!  There are exactly $filecount files in the current directory!"
  truth=true
elif [[ $guess -lt $filecount ]]; then
   echo "You have attempted to guess the correct number of files in the current directory $attempted times! This time you are too low! Try again."
   truth=false
elif [[ $guess -gt $filecount ]]; then
  echo "You have attempted to guess the correct number of files in the current directory $attempted times! This time you are too high! Try again."
  truth=false
fi
     
}




echo  "Please enter the number of files in the current directory"
read -r guess
attempted=1
filecount=$(find . -maxdepth 1 -type f|wc -l)
Guesstest 

while [[ $truth != "true" ]]
do
  let attempted=$attempted+1 
   echo "Please enter the number of files in the current directory"
   read -r guess
   filecount=$(find . -maxdepth 1 -type f|wc -l)
   Guesstest
done

