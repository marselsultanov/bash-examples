#!/bin/bash
argument=$*
if [ -z "$argument" ];
then echo "Argument is empty"
else
ps | grep -w $argument | awk '{print $1}' | xargs kill -9
fi
