#!bin/bash

NUMBER=$1

# we need to give space after [ $NUMBER -gt 100 ] before and after

if [ $NUMBER -gt 100 ]
then 
   echo "Given $NUMBER is greater than 100"
else
   echo "Given $NUMBER is less  than 100"  
fi
 
#Here fi meand end of if condition