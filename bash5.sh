#!/bin/bash
argument=$*
if [ -z "$argument" ];
then echo "Argument is empty"
else 
	if [ -d $argument ];
	then echo $argument
	else
	echo “Folder nonexistent”
	fi
fi
