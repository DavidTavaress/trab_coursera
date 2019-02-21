README.md:
	touch README.md
	echo "# Guessing game script" >> README.md
	echo "**Date and time:**" >> README.md
	date >> README.md
	echo "** Number of lines from guessinggame.sh:**" >> README.md
	cat guessinggame.sh | wc -l >> README.md
