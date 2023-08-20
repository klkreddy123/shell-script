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
if [ $USERID -ne 0 ]
then
    echo "$R Fail... Logged in user is not root user $NC"
    exit 1
else
    echo "$G Success-- Logged in user is root user $NC"
fi

for i in $@
do
    sudo yum install $i -y
    echo" Installing $i"
done
