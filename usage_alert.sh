#! /usr/bin/bash

limit=20
email="sanket73d@gmail.com"

df -h | awk 'NR>1' | awk '{print $1,$5}' | while read output;
do
usage=$(echo $output | awk '{print $2}' | tr -d '%')
partition=$(echo $output | awk '{print $1}')

if [ "${usage}" -ge "${limit}" ]
then
message="${partition} is out of limit. total space used : ${usage}" 
mail -s "$message" "$email"
notify-send "Alert!" "${message}"
fi

done

exit 0;
