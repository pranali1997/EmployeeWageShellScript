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

declare -A dailyWageDictionary

function getWorkingHours()
{
	case $randomTime in
		1) workingHour=$FULL_DAY_WORKING_HOUR;;
		2) workingHour=$HALF_DAY_WORKING_HOUR;;
	esac
	echo $workingHour
}


function main()
{
	while [[ $day -lt $WORKING_DAYS && $hour -lt $TOTAL_WORKING_HOURS ]]
	do
		randomPresent=$((RANDOM%2))
		if [ $randomPresent -eq 1 ]
		then
			workingHour=$(getWorkingHours)
		else
			workingHour=0
		fi

		dailyWage=$(($workingHour * $WAGE_PER_HOUR))
		hour=$(($hour+$workingHour))
		totalWage=$(($totalWage+$dailyWage))
		dailyWageArray[$day]=$dailyWage
		totalWageArray[$day]=$totalWage
		dailyWageDictionary["Day_$day"]="$dailyWage	 $totalWage "
		day=$(($day+1))

	done

	for (( i=0; i<$day; i++ ))
	do
		echo "Day_$i	${dailyWageDictionary[Day_$i]}  "
	done
}
main
