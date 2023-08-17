#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "change to root user"
else
    echo "user is root user"
fi
yum install mysql -y
VALIDATE(){
#$1 will receive the first argument
if [ $? -ne 0 ]
then
    echo "Installation is failure"
else
    echo "Installation is sucess"
}