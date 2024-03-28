#!/bin/bash

read -p "Enter filename: " filenm

sed -e '5,/^$/ { /welcome/s/give/learning/g }' $filenm > testfileotpt1.txt

echo " Data in $filenm updated successfully"


