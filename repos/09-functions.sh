#!/bin/bash
#install mysql & postfix packages

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "User is not root user"
    exit 1
else
    echo "User is root user"
fi

sudo yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation is failed"
    exit 1
else
    echo "Installation is successful"
fi
sudo yum install postfix -y

if [ $? -ne 0 ]
then
    echo "Installation is failed"
    exit 1
else
    echo "Installation is successful"
fi
