readme.md:
	touch readme.md
	echo "### Title: Guessing Game" >> readme.md
	echo "### created by Andrew Taylor" >> readme.md
	numlines=$(wc -l guessinggame.sh)
	echo $numlines
	echo "The line count and file name $(wc -l guessinggame.sh)" >> readme.md
	date +"%D %T  Execution of Make" >> readme.md

clean:
	rm readme.md 
