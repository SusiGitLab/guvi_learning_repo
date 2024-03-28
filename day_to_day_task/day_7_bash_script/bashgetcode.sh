#!/bin/bash

read -p "Enter website url:" URL

http_code=$(curl --write-out %{http_code} --silent --output \dev\null $URL)

if [ $http_code -eq 200 ]
then 
	echo "$URL website is getting code as $http_code, it means connection is success"

elif [ $http_code -eq 400 ]
then
	echo "$URL website is getting code as $http_code, it means  bad request"

elif [ $http_code -eq 500 ]
then
	echo "$URL website is getting code as $http_code, it means internal server error"

else
	echo "$URL website is getting code as $http_code, it means connection failed"
fi
