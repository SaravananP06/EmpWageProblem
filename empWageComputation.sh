#UC1

#!/bin/bash
isPresent=1
salary=0
randomcheck=$(( $RANDOM%2 ))
if [ $randomcheck -eq $isPresent ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi

#UC2
EmpRatePerHour=20
empHour=8

DailyWage=$(($EmpRatePerHour*$empHour))
echo "Employee daily Wage is " $DailyWage

