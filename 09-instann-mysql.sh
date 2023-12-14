#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
   echo "ERROR:: Please run this script in root user access"
else
   echo "you are root user"
fi