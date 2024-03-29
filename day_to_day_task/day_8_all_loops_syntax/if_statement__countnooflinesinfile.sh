#!/bin/bash

if [ -f "testfile.txt" ]
then
	lines=$(wc -l < "testfile.txt")
	echo "The file has $lines."

else
	echo "Error: The file isn't found"
fi
