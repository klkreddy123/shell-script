#!/bin/bash

LOG_FILE_DIRECTORY=/tmp
DATE=$(date +%F+%H:%M:%S)
SCRIPT_NAME=$0
LOG_FILE=$LOG_FILE_DIRECTORY/SCRIPT_NAME=$0-$DATE.log

R="\e[31m"
G="\e[32m"
NC="\e[0m"
Y="\e[33m"

DISH_USAGE=$(df -hT | grep -vE 'tmpfs|Filesystem')
DISK_USAGE_THRESHORLD=1
message=""

#IFS means internal field separator
while IFS= read line
do
    #echo "output: $line"
    #this command will give usage in no format for comparision
    usage=$(echo $line | awk '{print $6}' | cut -d % -f1)
    # this command will give us partition
    partition=$(echo $line | awk '{print $1}')
    #now we need to check whether it is more than threshold or not
    if [ $usage -gt $DISK_USAGE_THRESHORLD ]
    then
        message+="HIGH DISK USAGE ON $partition: $usage"
    fi
done <<< $DISK_USAGE

echo "message: $message"


