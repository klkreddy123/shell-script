#!/bin/bash
# implement log files
# implement colors
# implement validations
# implement validations through functions
# your script should check package is already installed or not, if already installed print yellow color
# if installed just print package is alredy installed, it should not run install command

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Fail... Logged in user is not root user"
    exit 1
else
    echo " Success-- Logged in user is root user"
fi

for i in $@
do
    sudo yum install $i -y
    echo" Installing $i"
done
