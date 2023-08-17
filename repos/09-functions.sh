#!/bin/bash

USERID=${id -u}

if [ $USERID -ne 0 ]
then
    echo "change to root user"
else
    echo "user is not root user"
fi