all: README.md

README.md: guessinggame.sh
	echo "## The Unix Workbench course assignment" > README.md
	echo "Guessing game" >> README.md
	echo "\n**Description**: make a program that continuosly ask the user for guess the correct number of files in the current directory" >> README.md
	echo -n "\n**Make's file date**: " >> README.md
	date >> README.md
	echo -n "\n**Number of lines in guessinggame.sh:** " >> README.md	
	grep -c '' guessinggame.sh >> README.md

clean: rm README.md 
