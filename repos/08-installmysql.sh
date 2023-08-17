#!/bin/bash

# our program goal is to install my sql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
else
    echo "INFO:: logged in user is root user"
fi
