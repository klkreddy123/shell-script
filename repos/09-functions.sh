#!/bin/bash
#Program to install mysql and postfix

USERID=$(id -u)
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
RED="\e[31m"
NOCOLOR="\e[0m"
GREEN="\e[32m"

VALIDATE(){

if [ $1 -ne 0 ]
then
    echo -e "$2 is $RED failure $NOCOLOR"
    exit 1
else
    echo -e "$2 is $GREEN success $NOCOLOR"
fi

}

if [ $USERID -ne 0 ]
then
    echo -e "$RED Failure: Logged in user is not root user $NOCOLOR"
    exit 1
else
    echo -e "$GREEN Success: Logged in user is root user $NOCOLOR"
fi

sudo yum install mysql -y &>>$LOGFILE

VALIDATE $? "Installing mysql"

sudo yum install postfix -y &>>$LOGFILE

VALIDATE $? "Installing postfix"
