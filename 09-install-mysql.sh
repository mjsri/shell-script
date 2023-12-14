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

if [ $? -ne 0 ]
then
   echo "ERROR:: Installing mysql is failed"
   exit 1
else
   echo "Installing mysql is success"
fi

yum install git -y

if [ $? -ne 0 ]
then
   echo "ERROR:: Installing git is failed"
   exit 1
else
   echo "Installing git is success"
fi