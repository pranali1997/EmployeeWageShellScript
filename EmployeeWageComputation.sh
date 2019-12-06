#!/bin/bash -x

echo "WELCOME TO EMPLOYEE WAGE COMPUTATION"

#constant
WAGE_PER_HOUR=20
FULL_DAY_WORKING_HOUR=8
HALF_DAY_WORKING_HOUR=4
#variable
randomPresent=$((RANDOM%2))

if [ $randomPresent -eq 1 ]
then
	dailyWage=$(( $WORKING_HOUR * $WAGE_PER_HOUR ))
	echo "Present"
	echo "Daily Wage :"$dailyWage
else
	echo "Absent"
fi
