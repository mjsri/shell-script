#!/bin/bash

echo "Please enter your username::"

read -s  USERNAME #the value entered above will automatically to USERNAME variable

#By using read we can pass names in the run time
#By -s we can keep the input data masking which we are passing in run time 

echo "Please enter your Password::"
read -s  PASSWORD #the value entered above will automatically to PASSWORD variable

echo "Username is: $USERNAME, Password is: $PASSWORD" #i am printing just for validation you should not print username ans passwords in scripts