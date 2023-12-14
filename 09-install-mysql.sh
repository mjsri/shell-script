#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
   echo "ERROR:: Please run this script in root user access"
   exit 1 # you can give other than 0
else
   echo "you are root user"
fi  # fi means end of if means end of statement

yum install mysql -y