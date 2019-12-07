#!/bin/bash -x

echo "WELCOME TO EMPLOYEE WAGE COMPUTATION"

#constant
WAGE_PER_HOUR=20
FULL_DAY_WORKING_HOUR=8
HALF_DAY_WORKING_HOUR=4
WORKING_DAYS=20
#variable
randomTime=$((RANDOM%2+1))
workingHour=0
totalWage=0
dailyWage=0
function getWorkingSalary()
{
	case $randomTime in
	1) workingHour=$FULL_DAY_WORKING_HOUR;;
	2) workingHour=$HALF_DAY_WORKING_HOUR;;
	esac
	echo $workingHour
}

for((day=1;day<=20;day++))
do
	randomPresent=$((RANDOM%2))
	if [ $randomPresent -eq 1 ]
	then
		workingHour=$(getWorkingSalary)
		dailyWage=$(($workingHour * $WAGE_PER_HOUR))
		echo "present wage: "$dailyWage
	else
		echo "Absent"
	fi
done

