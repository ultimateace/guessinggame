readme.md:
	
	touch readme.md
	echo "## Title:** Guessing Game**" >> readme.md
	echo "##### created by Andrew Taylor" >> readme.md
	echo "Number of lines in guessinggame.sh:">> readme.md 
	wc -l <  guessinggame.sh >> readme.md
	echo "">>readme.md
	date +"%D %T  Execution of Make" >> readme.md

clean:
	rm readme.md 
