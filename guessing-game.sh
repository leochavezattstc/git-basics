#!/bin/bash
# Guessing Game v0.1
RANDO=$[ ($RANDOM % 10) + 1 ]
echo -e "Pick a number between 1 and 10 and press [Enter]: "
read PICK
if [ $RANDO -eq $PICK ]; then
	echo "You win!"
elif [ $RANDO -lt $PICK ]; then
	echo "Too high!"
else
	echo "Too low!"
fi
echo "The number was $RANDO."
exit 0

