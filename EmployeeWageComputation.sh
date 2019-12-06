#!/bin/bash -x

echo "WELCOME TO EMPLOYEE WAGE COMPUTATION"

#constant
WAGE_PER_HOUR=20
WORKING_HOUR=8
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
