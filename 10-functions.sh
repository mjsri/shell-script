#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "ERROR:: Installing is failed"
        exit 1
    else
        echo "Installing is success"
    fi
}

if [ $ID -ne 0 ]
then 
   echo "ERROR:: Please run this script in root user access"
   exit 1 # you can give other than 0
else
   echo "you are root user"
fi  # fi means end of if means end of statement

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE
