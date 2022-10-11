#!/bin/bash

FILE=Hello.txt
if file -f "$FILE"; then
	echo "Hello $USER"
else
	echo "Hello ІСТ Батрин Василь Васильович"
fi

