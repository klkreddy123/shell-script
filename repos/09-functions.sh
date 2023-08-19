#!/bin/bash
#Program to install mysql and postfix

USERID=$(id -u)

VALIDATE(){

if [ $1 -ne 0 ]
    echo "$2 is failure"
    exit 1
else
    echo "$2 is success"
fi

}

if [ $USERID -ne 0 ]
then
    echo "Failure: Logged in user is not root user"
    exit 1
else
    echo "Sucess: Logged in user is root user"
fi

sudo yum install mysql -y

VALIDATE $? "Installing mysql"

if [ $? -ne 0 ]
then
    echo "Installtion of my sql is failure"
    exit 1
else
    echo "Installation of my sql is success"
fi

sudo yum install postfix -y

VALIDATE $? "Installing postfix"
