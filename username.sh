#! /bin/bash
# username.sh
# Max Starreveld
echo "Enter a new username: "
read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo "Your username must: "
	echo ""
	echo "    start with a lowercase letter, contain only lowercase letters,"
	echo "    numbers, and the _ character, and be between 3 and 12 characters."
	echo ""
	echo "Please try again:"
	read USERNAME
done
echo "Thank you"
