#!/bin/bash
#install mysql & postfix packages

USERID=$(id -u)

VALIDATE()
{
    if [ $1 -ne 0 ]
    then
        echo "Installation is failed"
        exit 1
    else
        echo "Installation is successful"
    fi
}


if [ $USERID -ne 0 ]
then
    echo "User is not root user"
    exit 1
else
    echo "User is root user"
fi

sudo yum install mysql -y

VALIDATE $?

sudo yum install postfix -y

VALIDATE $?