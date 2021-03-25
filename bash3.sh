#!/bin/bash
function1 () {
echo "This message is from function ${FUNCNAME}"
}
function2 () {
echo "This message is from function ${FUNCNAME}"
}
function3 () {
echo "This message is from function ${FUNCNAME}"
}
echo -n "Enter 1, 2 or 3: "
read functionnumber
if [ "$functionnumber" = 1 ] || [ "$functionnumber" = 2 ] || [ "$functionnumber" = 3 ]; then
eval function$functionnumber
else
echo "Wrong symbol"
fi
