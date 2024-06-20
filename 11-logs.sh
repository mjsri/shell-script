#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started  executing at $TIMESTAMP" &>>LOGFILE

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

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing mysql"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing git"