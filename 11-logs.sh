#!/bin/bash

ID=$(id -u)

echo "script name: $0"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2 .... failed"
        exit 1
    else
        echo "$2 .....success"
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

VALIDATE $? "Installing mysql"

yum install git -y

VALIDATE $? "Installing git"