#!/bin/bash -x

echo "WELCOME TO EMPLOYEE WAGE COMPUTATION"

#constant
WAGE_PER_HOUR=20
FULL_DAY_WORKING_HOUR=8
HALF_DAY_WORKING_HOUR=4
#variable
randomPresent=$((RANDOM%2))
randomTime=$((RANDOM%2+1))
workingHour=0
function getWorkingSalary()
{
	case $randomTime in
	1) workingHour=FULL_DAY_WORKING_HOUR;;
	2) workingHour=HALF_DAY_WORKING_HOUR;;
	esac
	echo $workingHour
}

if [ $randomPresent -eq 1 ]
then
	workingHour=$(getWorkingSalary)
	dailyWage=$(($workingHour * $WAGE_PER_HOUR))
	echo "Daily Wage :"$dailyWage
else
	echo "Absent"
fi
