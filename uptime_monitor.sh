#!/bin/bash

function _response() {
TOKEN=<Your Telegramm Token>
CHAT_ID=<Chat ID>
MESSAGE="$line IS NOT REACHABLE ---> CHECK NOW!!! `date`"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MESSAGE"
}
function _list() {
while read line; do
	fping -c1 -t300 $line 2>/dev/null 1>/dev/null
	if [ "$?" = 0 ]
	then
	  echo "$line --> Check successfully"
	else
	  echo "$line --> Failed to Ping!!!"
	_response
	fi
done < monitored_url.txt
}

for (( ; ; ))
do
	_list
	sleep 180
done
