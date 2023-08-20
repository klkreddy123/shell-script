#!/bin/bash
# Delete files which are older than 14 days
APP_LOGS_DIR=/home/centos/app-logs
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGSDIR=/home/centos/shellscript-logs
LOGFILE=$LOGSDIR/$SCRIPT_NAME-$DATE.log

FILES_TO_DELETE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +14)

echo "$FILES_TO_DELETE"

while read line

do
 # we write all statements here
 echo "Deleting $line" &>> $LOGFILE
 rm -rf $line
done <<< $FILES_TO_DELETE