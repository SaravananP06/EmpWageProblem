#UC1

#!/bin/bash

randomcheck=$(( $RANDOM%2 ))
if [ $randomcheck -eq 0 ]
then
	echo "Employee is Absent"
else
	echo "Employee is Present"
fi
