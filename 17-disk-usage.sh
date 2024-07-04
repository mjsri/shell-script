#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File') # it will check disks with tmp and File name
DISK_THRESHOLD=1
message=""

while IFS= read line  # it will check line by line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)  #it will remove un wanted parts in the lines
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -ge $DISK_THRESHOLD ]
    then
        message+="High Disk Usage on $partition: $usage <br>"
    fi
done <<< $DISK_USAGE

echo -e "Message: $message"

#echo "$message" | mail -s "High Disk Usage" info@joindevops.com

sh mail.sh "DevOps Team" "High Disk Usage" "$message" "info@joindevops.com" "ALERT High Disk Usage"