#!/bin/bash -x

echo "WELCOME TO EMPLOYEE WAGE COMPUTATION"

#constant
WAGE_PER_HOUR=20
FULL_DAY_WORKING_HOUR=8
HALF_DAY_WORKING_HOUR=4
WORKING_DAYS=20
TOTAL_WORKING_HOURS=100
#variable
randomTime=$((RANDOM%2+1))
workingHour=0
totalWage=0
dailyWage=0
day=0
hour=0
function getWorkingHours()
{
	case $randomTime in
	1) workingHour=$FULL_DAY_WORKING_HOUR;;
	2) workingHour=$HALF_DAY_WORKING_HOUR;;
	esac
	echo $workingHour
}

while [[ $day -lt $WORKING_DAYS && $hour -lt $TOTAL_WORKING_HOURS ]]
do
	randomPresent=$((RANDOM%2))
	if [ $randomPresent -eq 1 ]
	then
		workingHour=$(getWorkingHours)
		dailyWage=$(($workingHour * $WAGE_PER_HOUR))
		echo "present wage: "$dailyWage
	else
		echo "Absent"
	fi
	day=$(($day+1))
	hour=$(($hour+$workingHour))
done

