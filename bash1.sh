#!/bin/bash
ls nonexistent > /dev/null 2>&1
echo $?
touch nonexistent
ls nonexistent > /dev/null 2>&1
echo $?
rm nonexistent
