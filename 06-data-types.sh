#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "Total:: $SUM"

echo "How many args passes:: $#" #It will show how many args are in passed state

echo "All args passed:: $@" #It will show total number of args passed

echo "script name:: $0"  #It will print name of the script