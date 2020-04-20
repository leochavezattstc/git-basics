#!/bin/bash
# Guessing Game v0.5
rando=$[ ($RANDOM % 10) + 1 ]
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
done
echo "The number was $rando."
exit 0
