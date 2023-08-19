#!/bin/bash
#Program to install mysql and postfix

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Failure: Logged in user is not root user"
    exit 1
else
    echo "Sucess: Logged in user is root user"
fi

sudo yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Installtion of my sql is failure"
    exit 1
else
    echo "Installation of my sql is success"
fi

sudo yum install postfixe -y

if [ $? -ne 0 ]
then
    echo "Installtion of my postfix is failure"
    exit 1
else
    echo "Installation of my postfix is success"
fi

