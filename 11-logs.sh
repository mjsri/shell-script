#!/bin/bash

ID=$(id -u)
# id -u is 0 for only root user if we run that command other than root user it will give other value than 0
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started  executing at $TIMESTAMP" &>>LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "ERROR:: $2 .... $R failed $N"
        exit 1
    else
        echo -e "$2 ..... $G success $N"
    fi
}

if [ $ID -ne 0 ]
then 
   echo -e "$R ERROR:: Please run this script in root user access $N"
   exit 1 # you can give other than 0
else
   echo "you are root user"
fi  # fi means end of if means end of statement

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing mysql"

#In above and below line $? is $1 and Installing mysql and installing git is $2

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing git"