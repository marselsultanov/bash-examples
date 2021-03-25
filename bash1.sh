#!/bin/bash
ls nonexistent 2> /dev/null
echo $?
touch nonexistent
ls nonexistent > /dev/null
echo $?
rm nonexistent
