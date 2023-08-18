#!/bin/bash

# our program goal is to install my sql
USERID=$(id -u)

if [$USERID -ne 0 ]
then
    echo "logged in user is not root user"
    exit 1
else
    echo "logged in user is root user"
fi    
yum install mysql -y
