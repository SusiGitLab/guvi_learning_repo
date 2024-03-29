#!/bin/bash

fruits=("Orange" "Grapes" "Kiwi" "Banana")

echo "List of Fruits"

for i in $(printf "%s\n" "${fruits[@]}" | sort)
do
	echo "* $i"

done
