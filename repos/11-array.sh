#!/bin/bash

for i in $@
do
    sudo yum install $i
    echo" Installing $i"
done
