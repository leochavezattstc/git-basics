#!/bin/bash
# Guessing Game v1.0
rando=$[ ($RANDOM % 10) + 1 ]
guesses=0
echo -e "Pick a number between 1 and 10 and press [Enter]: "
while read pick; do
if [ $rando -eq $pick ]; then
	echo "You win!"
	break;
elif [ $rando -lt $pick ]; then
	echo "Too high!"
else
	echo "Too low!"
fi
guesses=$[ guesses + 1 ]
echo "You have made $guesses guess(es)."
done
echo "The number was $rando."
guesses=$[ guesses + 1 ]
echo "You made $guesses guess(es) total!"
exit 0
