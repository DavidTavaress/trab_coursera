function guessinggame {
	files=$(ls)
	for f in $files
	do
        	echo $f >> num_files.txt
	done
	count=$(cat num_files.txt | wc -l)
	echo "Try to guess how many files there is in this diretory"
	read answer
	while [ $answer -ne $count ]
	do
		if [ $answer -lt $count ]
		then
			echo "Your guess is lower than the right number. Try again"
			read answer 
		elif [ $answer -gt $count ]
		then
			echo "Your guess is higher yhan the right number. Try again"
			read answer
		fi
	done
	echo "You got it!!!!"
	rm num_files.txt
}
guessinggame 


