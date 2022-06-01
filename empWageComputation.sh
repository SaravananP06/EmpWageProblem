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
Fulltime_EmpHr=8

DailyWage=$(($EmpRatePerHour*$Fulltime_EmpHr))
echo "Employee daily Wage is " $DailyWage

#UC3
Parttime_EmpHr=4

#UC4
randomCheck1=$(( $RANDOM%3 ))
case $randomCheck1 in
	1)
		EmpHour=8
		;;
	2)
		EmpHour=4
		;;
	0)
		EmpHour=0
		;;
	*)
esac
dailyEmpWage=$(($EmpRatePerHour*$EmpHour))
echo "Employee Wage using switch case " $dailyEmpWage

#UC5
workingPerMonth=20
totalWorkingHour=0

for (( day=1; day<$workingPerMonth; day++ ))
do
	totalWorkingHour=$(($totalWorkingHour+$EmpHour))
done
EmpWagePerMonth=$(($totalWorkingHour*$EmpRatePerHour))
echo "Employee wage per month " $EmpWagePerMonth

#UC6

MaxWorkingHour=100
totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -le $MaxWorkingHour && $totalWorkingDays -le $WorkingPerMonth ]]
do
	(( totalWorkingDays++ ))
	totalEmpHr=$(($totalEmpHr+$EmpHour))
	echo "Total Emp Hour is " $totalEmpHr
	echo "Emp hour is " $EmpHour
done
EmpWagePerMaxHr=$(( $totalEmpHr * $EmpRatePerHour ))
echo "Employee Wage Per Month and Hour " $EmpWagePerMaxHr

#UC7
function getWorkingHour() {
	case $randomCheck1 in
		1) WorkHours=8;;
		2) WorkHours=4;;
		0) WorkHours=0;;
		*) WorkHours=0;;
	esac

	echo $WorkHours
}

while [[ $totalEmpHr -le $MaxWorkingHour && $totalWorkingDays -le $WorkingPerMonth ]]
do
        (( totalWorkingDays++ ))
	WorkHours="${ getWorkingHour }"
        totalEmpHr=$(($totalEmpHr+$WorkHours))
        echo "Total Emp Hour is " $totalEmpHr
        echo "Emp hour is " $WorkHours
done
totalSalary=$(( $totalEmpHr * $EmpRatePerHour ))
echo "Employee Wage Per Month Using Function" $totalSalary 

# UC8

totalEmpWage=0
dailyWage=0
totalEmpHr1=0
totalWorkingDays1=0
while [[ $totalEmpHr1 -le 100 && $totalWorkingDays1 -le $WorkingPerMonth ]]
do
        (( totalWorkingDays1++ ))
	totalEmpHr1=$(( $totalEmpHr1 + $EmpHour ))
	echo "Work Hour is " $totalEmpHr1
	dailyWage=$(( $totalEmpHr1 * $EmpRatePerHour ))
	echo "Daily Wage is " $dailyWage
	totalEmpWage=$(( $totalEmpWage + $dailyWage ))

done
totalEmpWage=$(( $totalEmpWage + $dailyWage ))
echo "Total Emp Wage is " $totalEmpWage

#UC9
echo "=================================="

