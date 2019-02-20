function guessinggame {
	count=$(cat num_files.txt | wc -l)
	echo "Try to guess how many files there is in this diretory"
	for try in $@
	do
		if [ $try -lt $count ]
		then
			echo "Your guess is lower than the right number. Try again" 
		elif [ $try -gt $count ]
		then
			echo "Your guess is higher yhan the right number. Try again"
		elif [ $try -eq $count ]
		then
			echo "You got it!!!!"
		fi
	done
}

guessinggame 7
