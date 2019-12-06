#!/bin/bash -x

echo "WELCOME TO EMPLOYEE WAGE COMPUTATION"

randomPresent=$((RANDOM%2))

if [ $randomPresent -eq 1 ]
then
	echo "Present"
else
	echo "Absent"
fi
