#!/bin/bash
# implement log files
# implement colors
# implement validations
# implement validations through functions
# your script should check package is already installed or not, if already installed print yellow color
# if installed just print package is alredy installed, it should not run install command

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
NC="\e[0m"
DATE=$(date +%F+%H:%M:%S)
SCRIPT_NAME=$0
LOGSDIR=/home/centos/shellscript-logs
LOGFILE=$LOGSDIR/$SCRIPT_NAME-$DATE.log

if [ $USERID -ne 0 ]
then
    echo -e "$R Fail... Logged in user is not root user $NC"
    exit 1
else
    echo -e "$G Success-- Logged in user is root user $NC"
fi

for i in $@
do
    sudo yum install $i -y &>>$LOGFILE
    if [ $? -ne 0 ]
    then
        echo -e "$R Installed $i package is failed$NC"
    else
        echo -e "$G Installed $i package is success$NC"
    fi    
done
