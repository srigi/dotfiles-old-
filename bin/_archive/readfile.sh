#!/bin/sh


while read line; do
	echo "$line.json"
	touch "$line.json"

done < $1
