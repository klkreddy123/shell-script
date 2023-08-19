#!/bin/bash
USER=$(id -u)
if [ $USER -ne 0 ]
then
    echo " logged in user is 




for i in $@
do
    yum install $i -y
done
