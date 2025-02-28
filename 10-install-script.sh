#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
  then 
      echo "ERROR:: You must have sudo access to excute this script"
      exit 1 #other than 0
fi

dnf install mysql -y

dnf install git -y

