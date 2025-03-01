#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
  then 
      echo "ERROR:: You must have sudo access to excute this script"
      exit 1 #other than 0
fi

dnf list installed mysql

if[ $? -ne 0 ]

dnf install mysql -y

if [ $? -ne 0 ]
then 
    echo "installing MYSQL....FAILURE"
    exit 1
else
    echo "installing MYSQL.....SUCESSS"
fi

dnf install git -y

if [ $? -ne 0 ]
then 
    echo "Installing Git .... FAILURE"
   exit 1
else
    echo "Installing Git ... SUCCESS"
fi

