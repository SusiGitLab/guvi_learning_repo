#!/bin/bash

counter=5

while [ $counter -gt 0 ]
do
	echo "Counter values is $counter"
	((counter--))
done

echo "Out of the loop"
