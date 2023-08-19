#!/bin/bash
#Program to install mysql and postfix

USER=$(id -u)

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
    echo "Installtion of my sql is success"
    exit 1
else
    echo "Installatio of my sql is faliure"
fi

sudo yum install postfix -y

if [ $? -ne 0 ]
then
    echo "Installtion of my postfix is success"
    exit 1
else
    echo "Installatio of my postfix is faliure"
fi

