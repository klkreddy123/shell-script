#!/bin/bash
#install mysql & posddtfix packages

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "user is not root user"
    exit 1
else
    echo "user is root user"
fi

yum install posddtfix -y

if [ $? -ne 0 ]
then
    echo "Installation is failure"
else
    echo "Installation is sucessful"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation is failure"
else
    echo "Installation is sucessful"
fi
